{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 4,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      484.0,
      137.0,
      1090.0,
      980.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1057.8947267532349,
            893.4210441112518,
            150.0,
            20.0
          ],
          "text": "On Off Singel Voices"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            940.789464712143,
            961.8420960903168,
            150.0,
            47.0
          ],
          "text": "Flugkoordinaten und Voice ID Poly verschränken."
        }
      },
      {
        "box": {
          "color": [
            1.0,
            0.196078431372549,
            0.196078431372549,
            1.0
          ],
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 4,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              59.0,
              111.0,
              1344.0,
              900.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-4",
                  "linecount": 289,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    100.0,
                    683.0,
                    3881.0
                  ],
                  "text": "Das Grundkonzept ist eine klare Trennung zwischen **zentraler Steuerung**, **50 selbstständigen Fliegenstimmen** und **gemeinsamer Audioausgabe**.\n\n```mermaid\nflowchart TD\n    GUI[\"Test-GUI<br/>globale und individuelle Befehle\"]\n    Manager[\"FSC_20261026_swarm_voice_count.js<br/>Stimmenverwaltung und Verteilung\"]\n    Poly[\"poly~ MS_FlyVoice_Poly 50\"]\n    Voice[\"50 × MS_FlyVoice_Poly<br/>je eine vollständige Fliege\"]\n    Audio[\"4 Audiokanäle<br/>Summen aller Stimmen\"]\n    Status[\"Statusausgang<br/>Voice-ID, X, Y\"]\n\n    GUI --> Manager\n    Manager --> Poly\n    Poly --> Voice\n    Voice --> Audio\n    Voice --> Status\n```\n\nIm Hauptpatch ist `poly~ MS_FlyVoice_Poly 50` der Container. Max erzeugt darin 50 voneinander unabhängige Instanzen des Patches `FSC_20261026_MS_FlyVoice_Poly.maxpat`. Jede Instanz hat eigene Flugbahndaten, eigenen Wiedergabezustand, eigenes Tempo, eigene Position und eigene Klangerzeugung.\n\n## Der Testpatch außen\n\nDie Bedienelemente erzeugen Nachrichten wie:\n\n```text\nstart\ntempo 1.2\nmode 1\nfirst 30\nlast 300\nloop 1\nexpand 100\ngain 1\n```\n\nDiese Nachrichten gehen nicht direkt in `poly~`, sondern zunächst in:\n\n```text\njs FSC_20261026_swarm_voice_count.js\n```\n\nDieses JavaScript ist die **Stimmenverwaltung**.\n\nEs weiß:\n\n- wie viele Stimmen derzeit aktiv sein sollen,\n- welche Stimme mit `target N` angesprochen wird,\n- dass `target 0` alle aktuell aktiven Stimmen bezeichnet,\n- welche Stimmen beim Erhöhen der Anzahl eingeschaltet werden,\n- welche beim Verringern gestoppt und deaktiviert werden,\n- wie individuelle Zufallstempi verteilt werden.\n\n### `target`\n\nMit:\n\n```text\ntarget 5\ntempo 2.\n```\n\nschickt das JavaScript an `poly~`:\n\n```text\ntarget 5\ntempo 2.\n```\n\nNur Stimme 5 bekommt den neuen Wert.\n\nBei:\n\n```text\ntarget 0\ntempo 2.\n```\n\ndurchläuft das JavaScript alle aktiven Stimmen:\n\n```text\ntarget 1, tempo 2.\ntarget 2, tempo 2.\ntarget 3, tempo 2.\n...\n```\n\n`target 0` bedeutet in unserer Architektur daher: **alle gegenwärtig zum Schwarm gehörenden Stimmen**.\n\n### Anzahl aktiver Stimmen\n\n`poly~` besitzt immer 50 geladene Instanzen. Das Zahlenfeld „Anzahl aktiver Fliegen“ entscheidet, wie viele davon arbeiten.\n\nWenn du von 4 auf 50 erhöhst, sendet die Verwaltung an die neu hinzukommenden Stimmen:\n\n```text\ntarget N\nactive 1\nstart\n```\n\nBeim Reduzieren erhält jede entfernte Stimme:\n\n```text\ntarget N\nstop\nactive 0\n```\n\n`active 0` wird innerhalb der Stimme zu `mute 1` für `thispoly~`. Dadurch wird die DSP-Berechnung dieser Stimme abgeschaltet. Die Instanz existiert weiterhin, verbraucht aber wesentlich weniger Rechenleistung.\n\n## Die zufällige Tempoverteilung\n\n`Tempo Min` und `Tempo Max` werden im Verwaltungs-JavaScript gespeichert. Beim Anklicken von `randomizetempo` erzeugt es für jede aktive Stimme einen eigenen Zufallswert:\n\n```text\ntarget 1, tempo 0.83\ntarget 2, tempo 1.41\ntarget 3, tempo 1.07\n...\ntarget 50, tempo 1.26\n```\n\nDamit bleiben Flugmodus, Bereich, Raumgeometrie und andere Einstellungen global, während die Stimmen zeitlich auseinanderlaufen. Genau dadurch verliert der Schwarm seine gekoppelte Bewegung.\n\n## Der Stimmenpatch innen\n\nOben in `MS_FlyVoice_Poly` kommt jede Nachricht über `in 1` herein:\n\n```text\nroute start stop flight tempo mode loop first last\n      expand spread rotate shiftx shifty shake center\n      smooth gain active resetquad\n```\n\n`route` zerlegt die Nachrichten nach ihrem ersten Wort.\n\nBeispiele:\n\n- `tempo 1.2` verlässt den Ausgang `tempo`.\n- `expand 80` verlässt den Ausgang `expand`.\n- `active 0` verlässt den Ausgang `active`.\n\nDie Objekte `prepend ...` übersetzen anschließend die äußeren, einheitlichen Namen in die Namen, welche die vorhandenen Abstraktionen erwarten:\n\n```text\ntempo 1.2  → prepend speed       → speed 1.2\nfirst 30   → prepend firstflight → firstflight 30\ngain 0.8   → prepend gain        → gain 0.8\n```\n\nDiese übersetzten Nachrichten werden an:\n\n```text\ns #0_voice_commands\n```\n\ngeschickt.\n\n`#0` ist in jeder Poly-Instanz eine andere, automatisch vergebene Nummer. Im Screenshot ist daraus beispielsweise geworden:\n\n```text\ns 3922_voice_commands\nr 3922_voice_commands\n```\n\nEine andere Stimme erhält etwa `4178_voice_commands`. Deshalb können sich die 50 Instanzen nicht gegenseitig beeinflussen.\n\n## Klangerzeugung und Panning innerhalb jeder Stimme\n\nDie eigentliche Stimme besteht aus zwei großen Teilen:\n\n```text\nMS_fly #0\nQuadpanner_FlyVoice\n```\n\n`MS_fly #0` erzeugt die Mono-Fliege. Dort liegen Synthese und bewegungsabhängige Klangveränderungen.\n\nDer Quadpanner enthält:\n\n- die Flugbahnen,\n- den gelben Positionspunkt,\n- Node-Geometrie,\n- Expand, Spread, Rotate und Shift,\n- die Verteilung der Monoquelle auf vier Lautsprecher.\n\nDie Instanz erzeugt daher direkt vier Audiosignale:\n\n```text\nLautsprecher 1\nLautsprecher 2\nLautsprecher 3\nLautsprecher 4\n```\n\n## Warum `send~` und `receive~` verwendet werden\n\nInnerhalb einer Stimme benutzt der Patch instanzbezogene Signalnamen, beispielsweise:\n\n```text\nsend~ 3922_Monosource\nreceive~ 3922panner1\nreceive~ 3922panner2\nreceive~ 3922panner3\nreceive~ 3922panner4\n```\n\nAuch hier isoliert die aus `#0` entstandene Nummer jede Stimme. Eine Fliege empfängt dadurch ausschließlich ihre eigenen vier Panning-Ausgänge.\n\nDie vier `out~`-Objekte verlassen anschließend die Poly-Stimme. `poly~` addiert automatisch alle gleich nummerierten Signalausgänge:\n\n```text\nAusgang 1 = Summe aller Stimmen auf Lautsprecher 1\nAusgang 2 = Summe aller Stimmen auf Lautsprecher 2\nAusgang 3 = Summe aller Stimmen auf Lautsprecher 3\nAusgang 4 = Summe aller Stimmen auf Lautsprecher 4\n```\n\nDeshalb besitzt der äußere Patch nur vier Audiokabel, obwohl im Inneren 50 Fliegen mit jeweils vier Kanälen laufen.\n\n## `active` und `thispoly~`\n\nDer rechte Strang verarbeitet:\n\n```text\nactive 1\n```\n\nüber:\n\n```text\nexpr 1-$i1\nprepend mute\nthispoly~\n```\n\nDaraus wird:\n\n```text\nactive 1 → mute 0\nactive 0 → mute 1\n```\n\nDie Umkehrung ist notwendig, weil „aktiv“ und „mute“ gegensätzliche Bedeutungen haben.\n\n- `active 1`: Stimme arbeitet.\n- `active 0`: Stimme wird stummgeschaltet und ihre DSP-Berechnung deaktiviert.\n\n## Der fünfte Ausgang\n\nUnten rechts empfängt jede Stimme ihre aktuellen Flugkoordinaten:\n\n```text\nreceive~ #0_Flugkoordinaten\n```\n\nDiese werden in Kontrollwerte umgewandelt und mit der Identität von `thispoly~` kombiniert:\n\n```text\nVoice-ID X Y\n```\n\nBeispielsweise:\n\n```text\n25 0.101706 0.436686\n```\n\nDas bedeutet:\n\n- Stimme 25\n- X-Position 0,101706\n- Y-Position 0,436686\n\nDieser Ausgang trägt kein Audio. Er ist für die kommende gemeinsame Schwarmdarstellung vorgesehen.\n\nDie Architektur besteht damit aus **einer zentralen Kommandoebene**, **50 voneinander isolierten vollständigen Fliegen** und **vier automatisch summierten Raumkanälen**. Jede Stimme bleibt einzeln adressierbar, während globale Befehle vom Verwaltungs-JavaScript auf den gesamten aktiven Schwarm verteilt werden."
                }
              }
            ],
            "lines": []
          },
          "patching_rect": [
            562.3656162023544,
            275.0,
            81.0,
            22.0
          ],
          "text": "p doku theory"
        }
      },
      {
        "box": {
          "fontsize": 15.0,
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            30.483837246894836,
            -31.48818302154541,
            720.0,
            23.0
          ],
          "text": "MS_FlyVoice_Poly · poly~-Stimme mit vier Raumkanälen"
        }
      },
      {
        "box": {
          "id": "ctrl",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            30.483837246894836,
            -92.14391899108887,
            35.0,
            22.0
          ],
          "saved_object_attributes": {
            "attr_comment": "",
            "c": ""
          },
          "text": "in 1"
        }
      },
      {
        "box": {
          "id": "router",
          "linecount": 3,
          "maxclass": "newobj",
          "numinlets": 49,
          "numoutlets": 49,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            30.483837246894836,
            1.298701286315918,
            1323.0,
            49.0
          ],
          "text": "route start stop flight tempo mode loop first last expand spread rotate shiftx shifty shake center smooth gain active resetquad density grid gridvoices swarms densitygroup gridgroup orbitgroup ringmodegroup orbitspreadgroup pulseinnergroup pulseoutergroup pulsetempogroup pulsephasegroup pulsetempospreadgroup snakegroup snakespacinggroup alignmentgroup escapegroup escapestrengthgroup escapereturngroup portalmode portalx portaly portaldirection portalwidth portalspeed portaldeviation portalorigin snakedeviationgroup"
        }
      },
      {
        "box": {
          "id": "m-start",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            30.483837246894836,
            112.0,
            38.0,
            22.0
          ],
          "text": "start"
        }
      },
      {
        "box": {
          "id": "m-stop",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            75.64512956142426,
            112.0,
            34.0,
            22.0
          ],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "p-flight",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            122.95081615447998,
            112.0,
            82.0,
            22.0
          ],
          "text": "prepend flight"
        }
      },
      {
        "box": {
          "id": "p-tempo",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            210.05373764038086,
            112.0,
            89.0,
            22.0
          ],
          "text": "prepend speed"
        }
      },
      {
        "box": {
          "id": "p-mode",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            300.3763222694397,
            112.0,
            86.0,
            22.0
          ],
          "text": "prepend mode"
        }
      },
      {
        "box": {
          "id": "p-loop",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            390.69890689849854,
            112.0,
            79.0,
            22.0
          ],
          "text": "prepend loop"
        }
      },
      {
        "box": {
          "id": "p-first",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            475.6451472043991,
            112.0,
            105.0,
            22.0
          ],
          "text": "prepend firstflight"
        }
      },
      {
        "box": {
          "id": "p-last",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            590.698915719986,
            112.0,
            102.0,
            22.0
          ],
          "text": "prepend lastflight"
        }
      },
      {
        "box": {
          "id": "p-expand",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            30.0,
            180.0,
            95.0,
            22.0
          ],
          "text": "prepend expand"
        }
      },
      {
        "box": {
          "id": "p-spread",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            130.0,
            180.0,
            93.0,
            22.0
          ],
          "text": "prepend spread"
        }
      },
      {
        "box": {
          "id": "p-rotate",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            230.0,
            180.0,
            88.0,
            22.0
          ],
          "text": "prepend rotate"
        }
      },
      {
        "box": {
          "id": "p-shiftx",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            325.0,
            180.0,
            84.0,
            22.0
          ],
          "text": "prepend shiftx"
        }
      },
      {
        "box": {
          "id": "p-shifty",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            415.0,
            180.0,
            84.0,
            22.0
          ],
          "text": "prepend shifty"
        }
      },
      {
        "box": {
          "id": "p-shake",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            505.0,
            180.0,
            88.0,
            22.0
          ],
          "text": "prepend shake"
        }
      },
      {
        "box": {
          "id": "p-center",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            600.0,
            180.0,
            89.0,
            22.0
          ],
          "text": "prepend center"
        }
      },
      {
        "box": {
          "id": "p-smooth",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            695.0,
            180.0,
            95.0,
            22.0
          ],
          "text": "prepend smooth"
        }
      },
      {
        "box": {
          "id": "p-gain",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            795.0,
            180.0,
            79.0,
            22.0
          ],
          "text": "prepend gain"
        }
      },
      {
        "box": {
          "id": "cmd-send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            386.0,
            275.0,
            155.0,
            22.0
          ],
          "text": "s #0FSC_20261026__voice_commands"
        }
      },
      {
        "box": {
          "id": "thispoly",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            938.1578857898712,
            919.7368333339691,
            65.0,
            22.0
          ],
          "text": "thispoly~"
        }
      },
      {
        "box": {
          "id": "cmd-recv",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            30.0,
            291.0,
            155.0,
            22.0
          ],
          "text": "r #0FSC_20261026__voice_commands"
        }
      },
      {
        "box": {
          "color": [
            1.0,
            0.933333333333333,
            0.0,
            1.0
          ],
          "fontsize": 16.0,
          "id": "synth",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            193.05373764038086,
            289.0,
            106.0,
            26.0
          ],
          "text": "FSC_20261026_MS_fly #0",
          "varname": "MS_fly"
        }
      },
      {
        "box": {
          "id": "mono-send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            193.05373764038086,
            328.72602450847626,
            151.0,
            22.0
          ],
          "text": "send~ #0FSC_20261026__Monosource"
        }
      },
      {
        "box": {
          "args": [
            "#0",
            "#1"
          ],
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "panner",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_Quadpanner_FlyVoice.maxpat",
          "numinlets": 1,
          "numoutlets": 0,
          "offset": [
            0.0,
            0.0
          ],
          "patching_rect": [
            30.0,
            375.0,
            641.0,
            302.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            641.0,
            302.0
          ],
          "varname": "Quadpanner_FlyVoice",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "r1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            30.0,
            780.0,
            135.0,
            22.0
          ],
          "text": "receive~ #0FSC_20261026_panner1"
        }
      },
      {
        "box": {
          "id": "r2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            210.0,
            780.0,
            135.0,
            22.0
          ],
          "text": "receive~ #0FSC_20261026_panner2"
        }
      },
      {
        "box": {
          "id": "r3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            390.0,
            780.0,
            135.0,
            22.0
          ],
          "text": "receive~ #0FSC_20261026_panner3"
        }
      },
      {
        "box": {
          "id": "r4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            570.0,
            780.0,
            135.0,
            22.0
          ],
          "text": "receive~ #0FSC_20261026_panner4"
        }
      },
      {
        "box": {
          "id": "out1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            30.0,
            848.3146744966507,
            45.0,
            22.0
          ],
          "saved_object_attributes": {
            "attr_comment": "",
            "c": ""
          },
          "text": "out~ 1"
        }
      },
      {
        "box": {
          "id": "out2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            209.77529525756836,
            848.3146744966507,
            45.0,
            22.0
          ],
          "saved_object_attributes": {
            "attr_comment": "",
            "c": ""
          },
          "text": "out~ 2"
        }
      },
      {
        "box": {
          "id": "out3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            390.0,
            848.3146744966507,
            45.0,
            22.0
          ],
          "saved_object_attributes": {
            "attr_comment": "",
            "c": ""
          },
          "text": "out~ 3"
        }
      },
      {
        "box": {
          "id": "out4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            570.0,
            848.3146744966507,
            45.0,
            22.0
          ],
          "saved_object_attributes": {
            "attr_comment": "",
            "c": ""
          },
          "text": "out~ 4"
        }
      },
      {
        "box": {
          "id": "xy-recv",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            927.6315701007843,
            1017.1052534580231,
            177.0,
            22.0
          ],
          "text": "receive #0FSC_20261026__Flugkoordinaten"
        }
      },
      {
        "box": {
          "id": "xy-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            ""
          ],
          "patching_rect": [
            927.6315701007843,
            1059.2105162143707,
            42.0,
            22.0
          ],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "xy-unpack",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "float"
          ],
          "patching_rect": [
            992.1052536964417,
            1059.2105162143707,
            80.0,
            22.0
          ],
          "text": "unpack 0. 0."
        }
      },
      {
        "box": {
          "id": "voice-store",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            927.6315701007843,
            1094.736831665039,
            30.0,
            22.0
          ],
          "text": "i"
        }
      },
      {
        "box": {
          "id": "xy-pack",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            972.3684117794037,
            1128.9473576545715,
            85.0,
            22.0
          ],
          "text": "pack 0 0. 0."
        }
      },
      {
        "box": {
          "id": "status-out",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            972.3684117794037,
            1168.4210414886475,
            38.0,
            22.0
          ],
          "saved_object_attributes": {
            "attr_comment": "",
            "c": ""
          },
          "text": "out 1"
        }
      },
      {
        "box": {
          "id": "status-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1067.105252981186,
            1119.7368314266205,
            162.0,
            20.0
          ],
          "text": "Statusausgang: voice-ID X Y"
        }
      },
      {
        "box": {
          "id": "m-resetquad",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            795.0,
            112.0,
            68.0,
            22.0
          ],
          "text": "resetquad"
        }
      },
      {
        "box": {
          "id": "active-sel",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "bang",
            ""
          ],
          "patching_rect": [
            872.5,
            112.0,
            55.0,
            22.0
          ],
          "text": "sel 0 1"
        }
      },
      {
        "box": {
          "id": "fade-out",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            315.8763222694397,
            691.9344272613525,
            48.0,
            22.0
          ],
          "text": "0. 100"
        }
      },
      {
        "box": {
          "id": "mute-delay",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            972.3684117794037,
            834.2105183601379,
            61.0,
            22.0
          ],
          "text": "delay 105"
        }
      },
      {
        "box": {
          "id": "mute-one",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            934.2105174064636,
            867.1052548885345,
            50.0,
            22.0
          ],
          "text": "mute 1"
        }
      },
      {
        "box": {
          "id": "active-trig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "bang",
            "bang"
          ],
          "patching_rect": [
            879.0,
            185.0,
            42.0,
            22.0
          ],
          "text": "t b b b"
        }
      },
      {
        "box": {
          "id": "mute-zero",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            871.0526232719421,
            867.1052548885345,
            50.0,
            22.0
          ],
          "text": "mute 0"
        }
      },
      {
        "box": {
          "id": "fade-in",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            369.9746813774109,
            691.9344272613525,
            48.0,
            22.0
          ],
          "text": "1. 100"
        }
      },
      {
        "box": {
          "id": "fade-line",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "bang"
          ],
          "patching_rect": [
            315.8763222694397,
            728.0,
            55.0,
            22.0
          ],
          "text": "line~ 1."
        }
      },
      {
        "box": {
          "id": "fade-mul1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            30.0,
            815.0,
            35.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "fade-mul2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            210.0,
            815.0,
            35.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "fade-mul3",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            390.0,
            815.0,
            35.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "fade-mul4",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            570.0,
            815.0,
            35.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "cancel-mute",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            972.3684117794037,
            798.6842029094696,
            35.0,
            22.0
          ],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "p-density",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            696.0752644538879,
            112.0,
            94.0,
            22.0
          ],
          "text": "prepend density"
        }
      },
      {
        "box": {
          "id": "voiceid-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            364.69890689849854,
            330.0,
            105.0,
            22.0
          ],
          "text": "prepend voiceid"
        }
      },
      {
        "box": {
          "id": "p-grid",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            980.0,
            180.0,
            78.0,
            22.0
          ],
          "text": "prepend grid"
        }
      },
      {
        "box": {
          "id": "p-gridvoices",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1070.0,
            180.0,
            112.0,
            22.0
          ],
          "text": "prepend gridvoices"
        }
      },
      {
        "box": {
          "id": "tempo-safety-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            122.95081615447998,
            68.85245704650879,
            82.0,
            22.0
          ],
          "text": "clip 0. 20."
        }
      },
      {
        "box": {
          "id": "p-swarms",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1190.0,
            180.0,
            120.0,
            22.0
          ],
          "text": "prepend swarms"
        }
      },
      {
        "box": {
          "id": "p-densitygroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1290.0,
            180.0,
            125.0,
            22.0
          ],
          "text": "prepend densitygroup"
        }
      },
      {
        "box": {
          "id": "p-gridgroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1420.0,
            180.0,
            120.0,
            22.0
          ],
          "text": "prepend gridgroup"
        }
      },
      {
        "box": {
          "id": "p-orbitgroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1550.0,
            180.0,
            120.0,
            22.0
          ],
          "text": "prepend orbitgroup"
        }
      },
      {
        "box": {
          "id": "p-ringmodegroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1680.0,
            180.0,
            137.0,
            22.0
          ],
          "text": "prepend ringmodegroup"
        }
      },
      {
        "box": {
          "id": "p-orbitspreadgroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            300.0,
            147.0,
            22.0
          ],
          "text": "prepend orbitspreadgroup"
        }
      },
      {
        "box": {
          "id": "p-pulseinnergroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            340.0,
            175.0,
            22.0
          ],
          "text": "prepend pulseinnergroup"
        }
      },
      {
        "box": {
          "id": "p-pulseoutergroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            368.0,
            175.0,
            22.0
          ],
          "text": "prepend pulseoutergroup"
        }
      },
      {
        "box": {
          "id": "p-pulsetempogroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            396.0,
            175.0,
            22.0
          ],
          "text": "prepend pulsetempogroup"
        }
      },
      {
        "box": {
          "id": "p-pulsephasegroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            424.0,
            175.0,
            22.0
          ],
          "text": "prepend pulsephasegroup"
        }
      },
      {
        "box": {
          "id": "p-pulsetempospreadgroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            452.0,
            185.0,
            22.0
          ],
          "text": "prepend pulsetempospreadgroup"
        }
      },
      {
        "box": {
          "id": "p-snakegroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            500.0,
            165.0,
            22.0
          ],
          "text": "prepend snakegroup"
        }
      },
      {
        "box": {
          "id": "p-snakespacinggroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            528.0,
            165.0,
            22.0
          ],
          "text": "prepend snakespacinggroup"
        }
      },
      {
        "box": {
          "id": "p-alignmentgroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            560.0,
            155.0,
            22.0
          ],
          "text": "prepend alignmentgroup"
        }
      },
      {
        "box": {
          "id": "p-escapegroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            600.0,
            185.0,
            22.0
          ],
          "text": "prepend escapegroup"
        }
      },
      {
        "box": {
          "id": "p-escapestrengthgroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            628.0,
            185.0,
            22.0
          ],
          "text": "prepend escapestrengthgroup"
        }
      },
      {
        "box": {
          "id": "p-escapereturngroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            656.0,
            185.0,
            22.0
          ],
          "text": "prepend escapereturngroup"
        }
      },
      {
        "box": {
          "id": "p-portalmode",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            700.0,
            170.0,
            22.0
          ],
          "text": "prepend portalmode"
        }
      },
      {
        "box": {
          "id": "p-portalx",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            728.0,
            170.0,
            22.0
          ],
          "text": "prepend portalx"
        }
      },
      {
        "box": {
          "id": "p-portaly",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            756.0,
            170.0,
            22.0
          ],
          "text": "prepend portaly"
        }
      },
      {
        "box": {
          "id": "p-portaldirection",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            784.0,
            170.0,
            22.0
          ],
          "text": "prepend portaldirection"
        }
      },
      {
        "box": {
          "id": "p-portalwidth",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            812.0,
            170.0,
            22.0
          ],
          "text": "prepend portalwidth"
        }
      },
      {
        "box": {
          "id": "p-portalspeed",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            840.0,
            170.0,
            22.0
          ],
          "text": "prepend portalspeed"
        }
      },
      {
        "box": {
          "id": "p-portaldeviation",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            868.0,
            170.0,
            22.0
          ],
          "text": "prepend portaldeviation"
        }
      },
      {
        "box": {
          "id": "p-portalorigin",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1180.0,
            899.9999914169312,
            125.0,
            22.0
          ],
          "text": "prepend portalorigin"
        }
      },
      {
        "box": {
          "id": "wave-broadcast-recv",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1394.805181503296,
            1.298701286315918,
            190.0,
            22.0
          ],
          "text": "r FSC_20261026_3922_wave_commands"
        }
      },
      {
        "box": {
          "id": "landing-broadcast-recv",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1394.805181503296,
            36.3636360168457,
            205.0,
            22.0
          ],
          "text": "r FSC_20261026_3922_landing_commands"
        }
      },
      {
        "box": {
          "id": "flocking-broadcast-recv",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1394.805181503296,
            71.42857074737549,
            205.0,
            22.0
          ],
          "text": "r FSC_20261026_3922_flocking_commands"
        }
      },
      {
        "box": {
          "id": "flow-broadcast-recv",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1394.805181503296,
            106.49350547790527,
            190.0,
            22.0
          ],
          "text": "r FSC_20261026_3922_flow_commands"
        }
      },
      {
        "box": {
          "id": "p-snakedeviationgroup",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1380.0,
            528.0,
            185.0,
            22.0
          ],
          "text": "prepend snakedeviationgroup"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "active-trig",
            0
          ],
          "source": [
            "active-sel",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-out",
            0
          ],
          "order": 1,
          "source": [
            "active-sel",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mute-delay",
            0
          ],
          "order": 0,
          "source": [
            "active-sel",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cancel-mute",
            0
          ],
          "source": [
            "active-trig",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-in",
            0
          ],
          "source": [
            "active-trig",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mute-zero",
            0
          ],
          "source": [
            "active-trig",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mute-delay",
            0
          ],
          "source": [
            "cancel-mute",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "panner",
            0
          ],
          "source": [
            "cmd-recv",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "router",
            0
          ],
          "source": [
            "ctrl",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-line",
            0
          ],
          "source": [
            "fade-in",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-mul1",
            1
          ],
          "order": 3,
          "source": [
            "fade-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-mul2",
            1
          ],
          "order": 2,
          "source": [
            "fade-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-mul3",
            1
          ],
          "order": 1,
          "source": [
            "fade-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-mul4",
            1
          ],
          "order": 0,
          "source": [
            "fade-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out1",
            0
          ],
          "source": [
            "fade-mul1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out2",
            0
          ],
          "source": [
            "fade-mul2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out3",
            0
          ],
          "source": [
            "fade-mul3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out4",
            0
          ],
          "source": [
            "fade-mul4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-line",
            0
          ],
          "source": [
            "fade-out",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "flocking-broadcast-recv",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "flow-broadcast-recv",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "landing-broadcast-recv",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "m-resetquad",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "m-start",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "m-stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mute-one",
            0
          ],
          "source": [
            "mute-delay",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "thispoly",
            0
          ],
          "source": [
            "mute-one",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "thispoly",
            0
          ],
          "source": [
            "mute-zero",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-alignmentgroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-center",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-density",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-densitygroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-escapegroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-escapereturngroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-escapestrengthgroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-expand",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-first",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-flight",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-grid",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-gridgroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-gridvoices",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-last",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-loop",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-mode",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-orbitgroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-orbitspreadgroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-portaldeviation",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-portaldirection",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-portalmode",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-portalorigin",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-portalspeed",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-portalwidth",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-portalx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-portaly",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-pulseinnergroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-pulseoutergroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-pulsephasegroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-pulsetempogroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-pulsetempospreadgroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-ringmodegroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-rotate",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-shake",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-shiftx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-shifty",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-smooth",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-snakedeviationgroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-snakegroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-snakespacinggroup",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-spread",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-swarms",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "p-tempo",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-mul1",
            0
          ],
          "source": [
            "r1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-mul2",
            0
          ],
          "source": [
            "r2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-mul3",
            0
          ],
          "source": [
            "r3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fade-mul4",
            0
          ],
          "source": [
            "r4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "active-sel",
            0
          ],
          "source": [
            "router",
            17
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "m-resetquad",
            0
          ],
          "source": [
            "router",
            18
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "m-start",
            0
          ],
          "source": [
            "router",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "m-stop",
            0
          ],
          "source": [
            "router",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-alignmentgroup",
            0
          ],
          "source": [
            "router",
            35
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-center",
            0
          ],
          "source": [
            "router",
            14
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-density",
            0
          ],
          "source": [
            "router",
            19
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-densitygroup",
            0
          ],
          "source": [
            "router",
            23
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-escapegroup",
            0
          ],
          "source": [
            "router",
            36
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-escapereturngroup",
            0
          ],
          "source": [
            "router",
            38
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-escapestrengthgroup",
            0
          ],
          "source": [
            "router",
            37
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-expand",
            0
          ],
          "source": [
            "router",
            8
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-first",
            0
          ],
          "source": [
            "router",
            6
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-flight",
            0
          ],
          "source": [
            "router",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-gain",
            0
          ],
          "source": [
            "router",
            16
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-grid",
            0
          ],
          "source": [
            "router",
            20
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-gridgroup",
            0
          ],
          "source": [
            "router",
            24
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-gridvoices",
            0
          ],
          "source": [
            "router",
            21
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-last",
            0
          ],
          "source": [
            "router",
            7
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-loop",
            0
          ],
          "source": [
            "router",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-mode",
            0
          ],
          "source": [
            "router",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-orbitgroup",
            0
          ],
          "source": [
            "router",
            25
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-orbitspreadgroup",
            0
          ],
          "source": [
            "router",
            27
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-portaldeviation",
            0
          ],
          "source": [
            "router",
            45
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-portaldirection",
            0
          ],
          "source": [
            "router",
            42
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-portalmode",
            0
          ],
          "source": [
            "router",
            39
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-portalorigin",
            0
          ],
          "source": [
            "router",
            46
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-portalspeed",
            0
          ],
          "source": [
            "router",
            44
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-portalwidth",
            0
          ],
          "source": [
            "router",
            43
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-portalx",
            0
          ],
          "source": [
            "router",
            40
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-portaly",
            0
          ],
          "source": [
            "router",
            41
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-pulseinnergroup",
            0
          ],
          "source": [
            "router",
            28
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-pulseoutergroup",
            0
          ],
          "source": [
            "router",
            29
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-pulsephasegroup",
            0
          ],
          "source": [
            "router",
            31
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-pulsetempogroup",
            0
          ],
          "source": [
            "router",
            30
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-pulsetempospreadgroup",
            0
          ],
          "source": [
            "router",
            32
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-ringmodegroup",
            0
          ],
          "source": [
            "router",
            26
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-rotate",
            0
          ],
          "source": [
            "router",
            10
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-shake",
            0
          ],
          "source": [
            "router",
            13
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-shiftx",
            0
          ],
          "source": [
            "router",
            11
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-shifty",
            0
          ],
          "source": [
            "router",
            12
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-smooth",
            0
          ],
          "source": [
            "router",
            15
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-snakedeviationgroup",
            0
          ],
          "source": [
            "router",
            47
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-snakegroup",
            0
          ],
          "source": [
            "router",
            33
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-snakespacinggroup",
            0
          ],
          "source": [
            "router",
            34
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-spread",
            0
          ],
          "source": [
            "router",
            9
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-swarms",
            0
          ],
          "source": [
            "router",
            22
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "tempo-safety-clip",
            0
          ],
          "source": [
            "router",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mono-send",
            0
          ],
          "source": [
            "synth",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-tempo",
            0
          ],
          "source": [
            "tempo-safety-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "voice-store",
            1
          ],
          "order": 0,
          "source": [
            "thispoly",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "voiceid-prepend",
            0
          ],
          "order": 1,
          "source": [
            "thispoly",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "xy-pack",
            0
          ],
          "source": [
            "voice-store",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "panner",
            0
          ],
          "source": [
            "voiceid-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "cmd-send",
            0
          ],
          "source": [
            "wave-broadcast-recv",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "status-out",
            0
          ],
          "source": [
            "xy-pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "xy-trigger",
            0
          ],
          "source": [
            "xy-recv",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "voice-store",
            0
          ],
          "source": [
            "xy-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "xy-unpack",
            0
          ],
          "source": [
            "xy-trigger",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "xy-pack",
            2
          ],
          "source": [
            "xy-unpack",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "xy-pack",
            1
          ],
          "source": [
            "xy-unpack",
            0
          ]
        }
      }
    ]
  }
}
