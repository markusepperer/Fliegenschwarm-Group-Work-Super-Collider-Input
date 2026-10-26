{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 5,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      31.0,
      109.0,
      1051.0,
      708.0
    ],
    "boxes": [
      {
        "box": {
          "id": "obj-2",
          "linecount": 27,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            607.2164608240128,
            157.0,
            473.195849776268,
            368.0
          ],
          "text": "bucket speichert jeweils den vorherigen X- bzw. Y-Wert. Wenn ein neuer Wert kommt, gibt bucket zuerst den zuvor gespeicherten Wert aus und merkt sich danach den neuen. Dadurch kann der Patch immer den aktuellen mit dem unmittelbar vorherigen Positionswert vergleichen.     Max_Ref_ALL\nbuddy synchronisiert die beiden getrennten Berechnungswege für X und Y. Es wartet, bis sowohl ΔX als auch ΔY eingetroffen sind, und gibt beide erst dann gemeinsam weiter. So ist sichergestellt, dass immer die X- und Y-Differenz desselben Bewegungsupdates zusammen ausgewertet werden.     Max_Ref_ALL\nDie Expression expr sqrt($f1*$f1 + $f2*$f2) berechnet aus ΔX und ΔY den Betrag des zweidimensionalen Bewegungsvektors. Mathematisch ist das der Satz des Pythagoras: sqrt(ΔX² + ΔY²). Das Ergebnis ist die Distanz zwischen zwei aufeinanderfolgenden XY-Positionen. Da die Koordinaten in konstanten Zeitabständen eintreffen, ist dieser Distanzwert direkt proportional zur Bewegungsgeschwindigkeit der Fliege. Die Richtung der Bewegung spielt dabei keine Rolle, weil durch das Quadrieren negative und positive Richtungen gleich behandelt werden.\n\nGenau. Du kannst dir zwei aufeinanderfolgende Positionen als zwei Punkte in einer Ebene vorstellen. Die Änderung in X ist die horizontale Strecke, die Änderung in Y die vertikale Strecke. Diese beiden Strecken stehen senkrecht aufeinander und bilden damit die beiden Katheten eines rechtwinkligen Dreiecks.\nDie tatsächliche Bewegung von der alten zur neuen Position ist die direkte Verbindung zwischen diesen Punkten, also die Hypotenuse. Deshalb verwenden wir Pythagoras:\nBewegungsbetrag = sqrt(ΔX² + ΔY²)\nWenn sich die Fliege zum Beispiel um 0.03 in X und um 0.04 in Y bewegt, dann ist sie tatsächlich nicht 0.07 weit geflogen, sondern 0.05, weil sqrt(0.03² + 0.04²) = 0.05.\nPythagoras ist hier also wichtig, weil wir aus zwei getrennten Richtungsänderungen einen einzigen Wert für die tatsächliche räumliche Bewegung machen wollen."
        }
      },
      {
        "box": {
          "fontsize": 13.0,
          "id": "c-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            40.0,
            20.0,
            500.0,
            21.0
          ],
          "text": "MS_XY_Speed — 2D-Bewegungsbetrag aus aufeinanderfolgenden XY-Koordinaten"
        }
      },
      {
        "box": {
          "id": "c-sub",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            40.0,
            44.0,
            587.0,
            20.0
          ],
          "text": "Output = sqrt((ΔX)^2 + (ΔY)^2) pro Update; bei konstantem Updateintervall proportional zur Geschwindigkeit."
        }
      },
      {
        "box": {
          "comment": "XY-Liste: x y",
          "id": "in-xy",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            55.0,
            90.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "trig-in",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            ""
          ],
          "patching_rect": [
            55.0,
            140.0,
            45.0,
            22.0
          ],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "unpack",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "float"
          ],
          "patching_rect": [
            130.0,
            140.0,
            88.0,
            22.0
          ],
          "text": "unpack 0. 0."
        }
      },
      {
        "box": {
          "id": "tx",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "float"
          ],
          "patching_rect": [
            95.0,
            195.0,
            42.0,
            22.0
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "bx",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            155.0,
            195.0,
            58.0,
            22.0
          ],
          "text": "bucket 1"
        }
      },
      {
        "box": {
          "id": "subx",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            95.0,
            245.0,
            48.0,
            22.0
          ],
          "text": "- 0."
        }
      },
      {
        "box": {
          "format": 6,
          "id": "nx",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            95.0,
            280.0,
            72.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "cx",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            172.0,
            282.0,
            45.0,
            20.0
          ],
          "text": "ΔX"
        }
      },
      {
        "box": {
          "id": "ty",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "float"
          ],
          "patching_rect": [
            285.0,
            195.0,
            42.0,
            22.0
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "by",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            345.0,
            195.0,
            58.0,
            22.0
          ],
          "text": "bucket 1"
        }
      },
      {
        "box": {
          "id": "suby",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            285.0,
            245.0,
            48.0,
            22.0
          ],
          "text": "- 0."
        }
      },
      {
        "box": {
          "format": 6,
          "id": "ny",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            285.0,
            280.0,
            72.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "cy",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            362.0,
            282.0,
            45.0,
            20.0
          ],
          "text": "ΔY"
        }
      },
      {
        "box": {
          "id": "buddy",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            180.0,
            330.0,
            58.0,
            22.0
          ],
          "text": "buddy 2"
        }
      },
      {
        "box": {
          "id": "pack",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            180.0,
            370.0,
            78.0,
            22.0
          ],
          "text": "pack 0. 0."
        }
      },
      {
        "box": {
          "id": "expr",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            180.0,
            410.0,
            210.0,
            22.0
          ],
          "text": "expr sqrt($f1*$f1 + $f2*$f2)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "speednum",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            180.0,
            450.0,
            90.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "cspeed",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            278.0,
            452.0,
            210.0,
            20.0
          ],
          "text": "Bewegungsbetrag pro XY-Update"
        }
      },
      {
        "box": {
          "id": "gate",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            180.0,
            500.0,
            42.0,
            22.0
          ],
          "text": "gate 1"
        }
      },
      {
        "box": {
          "id": "openmsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            55.0,
            500.0,
            30.0,
            22.0
          ],
          "text": "1"
        }
      },
      {
        "box": {
          "id": "cfirst",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            40.0,
            535.0,
            541.0,
            20.0
          ],
          "text": "Das erste XY-Paar setzt nur die Referenz; ab dem zweiten Paar kommt ein gültiger Bewegungswert."
        }
      },
      {
        "box": {
          "comment": "2D-Bewegungsbetrag / relative Geschwindigkeit",
          "id": "out-speed",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            180.0,
            580.0,
            30.0,
            30.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "pack",
            1
          ],
          "source": [
            "buddy",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pack",
            0
          ],
          "source": [
            "buddy",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "subx",
            1
          ],
          "source": [
            "bx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "suby",
            1
          ],
          "source": [
            "by",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "gate",
            1
          ],
          "order": 0,
          "source": [
            "expr",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "speednum",
            0
          ],
          "order": 1,
          "source": [
            "expr",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out-speed",
            0
          ],
          "source": [
            "gate",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "trig-in",
            0
          ],
          "source": [
            "in-xy",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "gate",
            0
          ],
          "source": [
            "openmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "expr",
            0
          ],
          "source": [
            "pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "buddy",
            0
          ],
          "order": 0,
          "source": [
            "subx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "nx",
            0
          ],
          "order": 1,
          "source": [
            "subx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "buddy",
            1
          ],
          "order": 1,
          "source": [
            "suby",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "ny",
            0
          ],
          "order": 0,
          "source": [
            "suby",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "openmsg",
            0
          ],
          "source": [
            "trig-in",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "unpack",
            0
          ],
          "source": [
            "trig-in",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "bx",
            0
          ],
          "source": [
            "tx",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "subx",
            0
          ],
          "source": [
            "tx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "by",
            0
          ],
          "source": [
            "ty",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "suby",
            0
          ],
          "source": [
            "ty",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "tx",
            0
          ],
          "source": [
            "unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "ty",
            0
          ],
          "source": [
            "unpack",
            1
          ]
        }
      }
    ]
  }
}
