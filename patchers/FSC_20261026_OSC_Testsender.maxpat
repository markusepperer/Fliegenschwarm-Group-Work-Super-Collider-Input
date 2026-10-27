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
        "rect": [ 25.0, 95.0, 593.0, 800.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 24.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 20.0, 780.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 20.0, 780.0, 33.0 ],
                    "text": "OSC-TESTSENDER · 50 Fliegen"
                }
            },
            {
                "box": {
                    "id": "destination",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 65.0, 780.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 65.0, 780.0, 20.0 ],
                    "text": "Ziel: 127.0.0.1 : 9000     |     Nachricht: /fly ID X Y"
                }
            },
            {
                "box": {
                    "id": "send-ui",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 30.0, 130.0, 240.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 110.0, 240.0, 44.0 ],
                    "text": "Senden starten",
                    "texton": "Senden stoppen"
                }
            },
            {
                "box": {
                    "id": "once-ui",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 310.0, 130.0, 230.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 310.0, 110.0, 230.0, 44.0 ],
                    "text": "Einmal alle 50 senden"
                }
            },
            {
                "box": {
                    "id": "rate",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 180.0, 800.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 175.0, 800.0, 20.0 ],
                    "text": "100 Updates pro Sekunde für jede ID · insgesamt 5.000 OSC-Nachrichten/s"
                }
            },
            {
                "box": {
                    "id": "movement",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 220.0, 850.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 265.0, 800.0, 20.0 ],
                    "text": "Künstliche Testbewegungen: Jede Fliege bewegt sich auf einer eigenen glatten Bahn. X und Y bleiben zwischen 0,15 und 0,85."
                }
            },
            {
                "box": {
                    "id": "steps",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 270.0, 850.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 320.0, 800.0, 20.0 ],
                    "text": "Im Hauptpatch: „SuperCollider“ einschalten, aktive Anzahl einstellen und „davon in Bewegung“ freigeben. Dann hier „Senden starten“."
                }
            },
            {
                "box": {
                    "id": "displaytitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 340.0, 800.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 390.0, 800.0, 20.0 ],
                    "text": "Zuletzt gesendete Nachricht (Anzeige gedrosselt):"
                }
            },
            {
                "box": {
                    "id": "last-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 380.0, 500.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 420.0, 620.0, 22.0 ],
                    "text": "/fly 50 0.153084 0.559693"
                }
            },
            {
                "box": {
                    "id": "stopnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 430.0, 850.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 475.0, 800.0, 20.0 ],
                    "text": "„Senden stoppen“ hält den Datenstrom an. Im Hauptpatch bleiben die Fliegen an ihren letzten Positionen."
                }
            },
            {
                "box": {
                    "id": "initial-off",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 620.0, 130.0, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "clock",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 30.0, 510.0, 70.0, 22.0 ],
                    "text": "qmetro 10"
                }
            },
            {
                "box": {
                    "id": "frame",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 30.0, 550.0, 70.0, 22.0 ],
                    "text": "f 1."
                }
            },
            {
                "box": {
                    "id": "frame-order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "float" ],
                    "patching_rect": [ 30.0, 590.0, 70.0, 22.0 ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "id": "seconds",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 595.0, 590.0, 70.0, 22.0 ],
                    "text": "* 0.01"
                }
            },
            {
                "box": {
                    "id": "ids",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 30.0, 640.0, 70.0, 22.0 ],
                    "text": "uzi 50"
                }
            },
            {
                "box": {
                    "id": "id-order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 30.0, 680.0, 70.0, 22.0 ],
                    "text": "t i i i"
                }
            },
            {
                "box": {
                    "id": "x",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 260.0, 650.0, 330.0, 22.0 ],
                    "text": "expr 0.5 + 0.35*sin((0.27+($i1 % 7)*0.017)*$f2+$i1*0.47)"
                }
            },
            {
                "box": {
                    "id": "y",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 260.0, 705.0, 350.0, 22.0 ],
                    "text": "expr 0.5 + 0.35*sin((0.19+($i1 % 11)*0.013)*$f2+$i1*0.71+1.2)"
                }
            },
            {
                "box": {
                    "id": "triplet",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 755.0, 74.4, 22.0 ],
                    "text": "pack 0 0. 0."
                }
            },
            {
                "box": {
                    "id": "address",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 800.0, 74.4, 22.0 ],
                    "text": "prepend /fly"
                }
            },
            {
                "box": {
                    "id": "udp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 885.0, 138.0, 22.0 ],
                    "text": "udpsend 127.0.0.1 9000"
                }
            },
            {
                "box": {
                    "id": "display-limit",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 370.0, 810.0, 80.0, 22.0 ],
                    "text": "speedlim 200"
                }
            },
            {
                "box": {
                    "id": "path",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 940.0, 930.0, 20.0 ],
                    "text": "Sichtbarer Signalweg: Takt → Zeit → IDs 1–50 → X/Y berechnen → ID X Y zusammenpacken → /fly → UDP."
                }
            },
            {
                "box": {
                    "id": "speed-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2.0, 1013.0, 140.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 210.0, 80.0, 20.0 ],
                    "text": "Speed ×"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "speed-ui",
                    "maxclass": "flonum",
                    "maximum": 20.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 163.0, 1027.0, 140.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 115.0, 207.0, 90.0, 22.0 ],
                    "varname": "FSC_20261026_test_speed"
                }
            },
            {
                "box": {
                    "id": "speed-help",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 318.0, 1027.0, 316.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 220.0, 200.0, 350.0, 20.0 ],
                    "text": "0 = Stillstand · 1 = bisheriges Tempo · 4 = vierfach · bis 20"
                }
            },
            {
                "box": {
                    "id": "speed-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 159.0, 993.0, 140.0, 22.0 ],
                    "text": "loadmess 1."
                }
            },
            {
                "box": {
                    "id": "speed-limit",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 163.0, 1084.0, 140.0, 22.0 ],
                    "text": "clip 0. 20."
                }
            },
            {
                "box": {
                    "id": "phase-add",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 170.0, 550.0, 140.0, 22.0 ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "phase-feedback",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 170.0, 590.0, 140.0, 22.0 ],
                    "text": "t f f"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "display-limit", 0 ],
                    "order": 0,
                    "source": [ "address", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "udp", 0 ],
                    "order": 1,
                    "source": [ "address", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "frame", 0 ],
                    "source": [ "clock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "last-message", 1 ],
                    "midpoints": [ 379.5, 843.0, 891.0, 843.0, 891.0, 375.0, 520.5, 375.0 ],
                    "source": [ "display-limit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "phase-add", 0 ],
                    "source": [ "frame", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ids", 0 ],
                    "source": [ "frame-order", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "seconds", 0 ],
                    "source": [ "frame-order", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "triplet", 0 ],
                    "source": [ "id-order", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "x", 0 ],
                    "source": [ "id-order", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "y", 0 ],
                    "source": [ "id-order", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "id-order", 0 ],
                    "source": [ "ids", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send-ui", 0 ],
                    "source": [ "initial-off", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "frame", 0 ],
                    "source": [ "once-ui", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "phase-feedback", 0 ],
                    "source": [ "phase-add", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "frame-order", 0 ],
                    "source": [ "phase-feedback", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "phase-add", 1 ],
                    "source": [ "phase-feedback", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "x", 1 ],
                    "order": 1,
                    "source": [ "seconds", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "y", 1 ],
                    "order": 0,
                    "source": [ "seconds", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clock", 0 ],
                    "source": [ "send-ui", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "speed-ui", 0 ],
                    "source": [ "speed-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "frame", 1 ],
                    "source": [ "speed-limit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "speed-limit", 0 ],
                    "source": [ "speed-ui", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "address", 0 ],
                    "source": [ "triplet", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "triplet", 1 ],
                    "source": [ "x", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "triplet", 2 ],
                    "source": [ "y", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}