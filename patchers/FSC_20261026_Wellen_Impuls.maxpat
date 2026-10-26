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
      216.0,
      178.0,
      1344.0,
      900.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 7,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            "",
            ""
          ],
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
                  "hint": "Maximale räumliche Auslenkung. Skala 0–100 entspricht 0–28 % der Feldbreite.",
                  "id": "waveamplitude-load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    80.84112125635147,
                    194.3925226330757,
                    90.0,
                    22.0
                  ],
                  "text": "loadmess 25."
                }
              },
              {
                "box": {
                  "hint": "Abstand zwischen Wellenbergen. Skala 1–100 entspricht 4,96–100 % der Feldbreite.",
                  "id": "wavelength-load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    80.84112125635147,
                    245.7943913936615,
                    90.0,
                    22.0
                  ],
                  "text": "loadmess 50."
                }
              },
              {
                "box": {
                  "hint": "Ausbreitungsgeschwindigkeit: 0,2 = eine Feldbreite in 5 Sekunden. Wiederholungsfrequenz = Geschwindigkeit / Wellenabstand.",
                  "id": "wavespeed-load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    80.84112125635147,
                    299.0654190182686,
                    90.0,
                    22.0
                  ],
                  "text": "loadmess 0.2"
                }
              },
              {
                "box": {
                  "hint": "Nur Einzelimpuls: volle Paketbreite. Skala 1–100 entspricht 5,16–120 % der Feldbreite.",
                  "id": "wavewidth-load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    80.84112125635147,
                    351.401867210865,
                    90.0,
                    22.0
                  ],
                  "text": "loadmess 20."
                }
              },
              {
                "box": {
                  "hint": "Horizontal: von links nach rechts. Vertikal: entlang Y. Radial: von der Leitfliege des jeweiligen Schwarms nach außen.",
                  "id": "wavemode-load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    138.7850460410118,
                    100.0,
                    75.0,
                    22.0
                  ],
                  "text": "loadmess 0"
                }
              },
              {
                "box": {
                  "hint": "Transversal: Bewegung quer zur Ausbreitung, radial tangential. Longitudinal: Bewegung entlang der Ausbreitung, radial hinein und hinaus.",
                  "id": "wavetype-load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    57.476635456085205,
                    100.0,
                    75.0,
                    22.0
                  ],
                  "text": "loadmess 0"
                }
              },
              {
                "box": {
                  "hint": "Die Dauerwelle läuft zusätzlich zu manuell ausgelösten Einzelimpulsen.",
                  "id": "wavecontinuous-load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    130.84112125635147,
                    75.0,
                    22.0
                  ],
                  "text": "loadmess 0"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-12",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.00000156932067,
                    433.40185505528643,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-13",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    85.00000156932067,
                    433.40185505528643,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-14",
                  "index": 3,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    120.00000156932067,
                    433.40185505528643,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-15",
                  "index": 4,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    155.00000156932066,
                    433.40185505528643,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-16",
                  "index": 5,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    190.00000156932066,
                    433.40185505528643,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-17",
                  "index": 6,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    225.00000156932066,
                    433.40185505528643,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-18",
                  "index": 7,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    260.00000156932066,
                    433.40185505528643,
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
                    "obj-14",
                    0
                  ],
                  "source": [
                    "waveamplitude-load",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-12",
                    0
                  ],
                  "source": [
                    "wavecontinuous-load",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-15",
                    0
                  ],
                  "source": [
                    "wavelength-load",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-18",
                    0
                  ],
                  "source": [
                    "wavemode-load",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-16",
                    0
                  ],
                  "source": [
                    "wavespeed-load",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-13",
                    0
                  ],
                  "source": [
                    "wavetype-load",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-17",
                    0
                  ],
                  "source": [
                    "wavewidth-load",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            -69.15887796878815,
            355.777761220932,
            82.0,
            22.0
          ],
          "text": "p loadmess"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "linecount": 30,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            531.0,
            131.277761220932,
            551.0,
            409.0
          ],
          "text": "- Ausbreitungsrichtung\n  - Horizontal: Wellenfront bewegt sich horizontal.\n  - Vertikal: Wellenfront bewegt sich vertikal.\n  - Radial: Welle breitet sich vom Zentrum des jeweiligen Teilschwarms nach außen aus.\n- Bewegung zur Welle\n  - Transversal: Die Fliegen werden quer zur Ausbreitungsrichtung ausgelenkt.\n  - Longitudinal: Die Fliegen bewegen sich in Ausbreitungsrichtung vor und zurück.\n  - Bei einer radialen Welle bedeutet transversal eine tangentiale Bewegung um das Zentrum, longitudinal eine Bewegung radial nach innen und außen.\n- Dauerwelle\n  Erzeugt eine kontinuierliche Sinuswelle. Solange sie eingeschaltet ist, folgen laufend neue Wellenberge und Wellentäler.\n- Impuls hinzufügen\n  Startet ein einzelnes begrenztes Wellenpaket. Es läuft einmal durch den Schwarm und verschwindet anschließend. Mehrfaches Drücken erzeugt mehrere aufeinanderfolgende oder überlagerte Impulse. Bis zu 16 Impulse können gleichzeitig existieren.\n- Auslenkung\n  Bestimmt die Stärke der räumlichen Verschiebung. 0 erzeugt keine Auslenkung, 100 die maximale.\n- Wellenabstand\n  Bestimmt die Wellenlänge: Kleine Werte erzeugen eng aufeinanderfolgende Wellenberge, große Werte eine langgezogene Welle.\n- Tempo\n  Bestimmt die Geschwindigkeit der Wellenfront. 1 entspricht ungefähr einer Feldbreite pro Sekunde.\n- Paketbreite\n  Betrifft den einzelnen Impuls: Kleine Werte erzeugen ein schmales, kurzes Wellenpaket; große Werte ein breites Paket. Bei der reinen Dauerwelle hat dieser Regler praktisch keine Bedeutung.\nDauerwelle und Impulse können gleichzeitig aktiv sein. Dann wird der Impuls auf die laufende Dauerwelle addiert, wodurch die Auslenkung vorübergehend stärker oder komplexer werden kann.\njs FSC_20261026_wave_control.js übersetzt dabei die Bedienelemente in Befehle für die ausgewählte Schwarmadresse. Bei Schwarmadresse 0 erhalten alle Teilschwärme die Welle."
        }
      },
      {
        "box": {
          "id": "wave-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.12183487415314,
            167.92923974990845,
            99.99999862909317,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            99.99999862909317,
            20.0
          ],
          "text": "WELLE"
        }
      },
      {
        "box": {
          "hint": "Horizontal: von links nach rechts. Vertikal: entlang Y. Radial: von der Leitfliege des jeweiligen Schwarms nach außen.",
          "id": "wavemode-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            54.43011200428009,
            200.777761220932,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            57.0,
            125.06118071079254,
            20.0
          ],
          "text": "Ausbreitungsrichtung"
        }
      },
      {
        "box": {
          "hint": "Horizontal: von links nach rechts. Vertikal: entlang Y. Radial: von der Leitfliege des jeweiligen Schwarms nach außen.",
          "id": "wavemode-menu",
          "items": [
            "Horizontal",
            ",",
            "Vertikal",
            ",",
            "Radial"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            54.43011200428009,
            220.777761220932,
            125.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            77.0,
            125.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Horizontal: von links nach rechts. Vertikal: entlang Y. Radial: von der Leitfliege des jeweiligen Schwarms nach außen.",
          "id": "wavemode-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            189.4301120042801,
            220.777761220932,
            150.0,
            22.0
          ],
          "text": "prepend wavemode"
        }
      },
      {
        "box": {
          "hint": "Transversal: Bewegung quer zur Ausbreitung, radial tangential. Longitudinal: Bewegung entlang der Ausbreitung, radial hinein und hinaus.",
          "id": "wavetype-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            54.43011200428009,
            252.777761220932,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            107.0,
            125.06118071079254,
            20.0
          ],
          "text": "Bewegung zur Welle"
        }
      },
      {
        "box": {
          "hint": "Transversal: Bewegung quer zur Ausbreitung, radial tangential. Longitudinal: Bewegung entlang der Ausbreitung, radial hinein und hinaus.",
          "id": "wavetype-menu",
          "items": [
            "Transversal",
            ",",
            "Longitudinal"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            54.43011200428009,
            272.777761220932,
            125.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            127.0,
            125.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Transversal: Bewegung quer zur Ausbreitung, radial tangential. Longitudinal: Bewegung entlang der Ausbreitung, radial hinein und hinaus.",
          "id": "wavetype-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            189.4301120042801,
            272.777761220932,
            150.0,
            22.0
          ],
          "text": "prepend wavetype"
        }
      },
      {
        "box": {
          "hint": "Maximale räumliche Auslenkung. Skala 0–100 entspricht 0–28 % der Feldbreite.",
          "id": "waveamplitude-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            364.077664911747,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            131.0,
            0.0,
            133.0097069144249,
            20.0
          ],
          "text": "Auslenkung (0–100)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Maximale räumliche Auslenkung. Skala 0–100 entspricht 0–28 % der Feldbreite.",
          "id": "waveamplitude-num",
          "maxclass": "flonum",
          "maximum": 100.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            388.2207908630371,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            131.0,
            24.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Maximale räumliche Auslenkung. Skala 0–100 entspricht 0–28 % der Feldbreite.",
          "id": "waveamplitude-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            123.41772055625916,
            388.2207908630371,
            160.0,
            22.0
          ],
          "text": "prepend waveamplitude"
        }
      },
      {
        "box": {
          "hint": "Abstand zwischen Wellenbergen. Skala 1–100 entspricht 4,96–100 % der Feldbreite.",
          "id": "wavelength-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            419.8663600683212,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            131.0,
            53.0,
            133.0097069144249,
            20.0
          ],
          "text": "Wellenabstand (1–100)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Abstand zwischen Wellenbergen. Skala 1–100 entspricht 4,96–100 % der Feldbreite.",
          "id": "wavelength-num",
          "maxclass": "flonum",
          "maximum": 100.0,
          "minimum": 1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            440.11952435970306,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            131.0,
            74.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Abstand zwischen Wellenbergen. Skala 1–100 entspricht 4,96–100 % der Feldbreite.",
          "id": "wavelength-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            123.41772055625916,
            440.11952435970306,
            160.0,
            22.0
          ],
          "text": "prepend wavelength"
        }
      },
      {
        "box": {
          "hint": "Ausbreitungsgeschwindigkeit: 0,2 = eine Feldbreite in 5 Sekunden. Wiederholungsfrequenz = Geschwindigkeit / Wellenabstand.",
          "id": "wavespeed-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            471.7650935649872,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            131.0,
            100.0,
            133.0097069144249,
            20.0
          ],
          "text": "Tempo (Feldbreiten/s)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Ausbreitungsgeschwindigkeit: 0,2 = eine Feldbreite in 5 Sekunden. Wiederholungsfrequenz = Geschwindigkeit / Wellenabstand.",
          "id": "wavespeed-num",
          "maxclass": "flonum",
          "maximum": 6.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            493.2840806245804,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            131.0,
            121.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Ausbreitungsgeschwindigkeit: 0,2 = eine Feldbreite in 5 Sekunden. Wiederholungsfrequenz = Geschwindigkeit / Wellenabstand.",
          "id": "wavespeed-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            123.41772055625916,
            493.2840806245804,
            160.0,
            22.0
          ],
          "text": "prepend wavespeed"
        }
      },
      {
        "box": {
          "hint": "Nur Einzelimpuls: volle Paketbreite. Skala 1–100 entspricht 5,16–120 % der Feldbreite.",
          "id": "wavewidth-label",
          "varname": "wavewidth_label_ui",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            523.6638270616531,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            131.0,
            147.0,
            133.0097069144249,
            20.0
          ],
          "text": "Paketbreite (1–100)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Nur Einzelimpuls: volle Paketbreite. Skala 1–100 entspricht 5,16–120 % der Feldbreite.",
          "id": "wavewidth-num",
          "varname": "wavewidth_num_ui",
          "maxclass": "flonum",
          "maximum": 100.0,
          "minimum": 1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            545.1828141212463,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            131.0,
            170.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Nur Einzelimpuls: volle Paketbreite. Skala 1–100 entspricht 5,16–120 % der Feldbreite.",
          "id": "wavewidth-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            123.41772055625916,
            545.1828141212463,
            160.0,
            22.0
          ],
          "text": "prepend wavewidth"
        }
      },
      {
        "box": {
          "hint": "Die Dauerwelle läuft zusätzlich zu manuell ausgelösten Einzelimpulsen.",
          "id": "wavecontinuous-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            54.43011200428009,
            304.777761220932,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            32.0,
            155.0,
            74.75728052854538,
            33.0
          ],
          "text": "Dauerwelle an/aus"
        }
      },
      {
        "box": {
          "hint": "Die Dauerwelle läuft zusätzlich zu manuell ausgelösten Einzelimpulsen.",
          "id": "wavecontinuous-toggle",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            54.43011200428009,
            324.777761220932,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            2.0,
            164.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "hint": "Die Dauerwelle läuft zusätzlich zu manuell ausgelösten Einzelimpulsen.",
          "id": "wavecontinuous-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            88.43011200428009,
            324.777761220932,
            165.0,
            22.0
          ],
          "text": "prepend wavecontinuous"
        }
      },
      {
        "box": {
          "hint": "Fügt ein Wellenpaket hinzu. Die Dauerwelle bleibt aktiv.",
          "id": "wavesingle-msg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            276.8037942647934,
            625.2336400151253,
            50.0,
            22.0
          ],
          "text": "wave"
        }
      },
      {
        "box": {
          "id": "wave-controller",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            235.51401686668396,
            663.551396727562,
            160.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "FSC_20261026_wave_control.js",
            "parameter_enable": 0
          },
          "text": "js FSC_20261026_wave_control.js"
        }
      },
      {
        "box": {
          "hint": "Fügt ein Wellenpaket hinzu. Die Dauerwelle bleibt aktiv.",
          "id": "wavesingle-button-v3",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            276.8037942647934,
            588.7850421667099,
            125.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            24.0,
            125.0,
            26.0
          ],
          "text": "Impuls hinzufügen",
          "texton": "Impuls hinzufügen"
        }
      },
      {
        "box": {
          "id": "wave-broadcast-send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            235.51401686668396,
            700.934574007988,
            190.0,
            22.0
          ],
          "text": "s FSC_20261026_3922_wave_commands"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-7",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            253.27102607488632,
            46.72897160053253,
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
            "waveamplitude-num",
            0
          ],
          "source": [
            "obj-19",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavecontinuous-toggle",
            0
          ],
          "source": [
            "obj-19",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavelength-num",
            0
          ],
          "source": [
            "obj-19",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavemode-menu",
            0
          ],
          "source": [
            "obj-19",
            6
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavespeed-num",
            0
          ],
          "source": [
            "obj-19",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavetype-menu",
            0
          ],
          "source": [
            "obj-19",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavewidth-num",
            0
          ],
          "source": [
            "obj-19",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wave-controller",
            0
          ],
          "source": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wave-broadcast-send",
            0
          ],
          "source": [
            "wave-controller",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "waveamplitude-pre",
            0
          ],
          "source": [
            "waveamplitude-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wave-controller",
            0
          ],
          "source": [
            "waveamplitude-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wave-controller",
            0
          ],
          "source": [
            "wavecontinuous-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavecontinuous-pre",
            0
          ],
          "source": [
            "wavecontinuous-toggle",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavelength-pre",
            0
          ],
          "source": [
            "wavelength-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wave-controller",
            0
          ],
          "source": [
            "wavelength-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavemode-pre",
            0
          ],
          "source": [
            "wavemode-menu",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wave-controller",
            0
          ],
          "source": [
            "wavemode-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavesingle-msg",
            0
          ],
          "source": [
            "wavesingle-button-v3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wave-controller",
            0
          ],
          "source": [
            "wavesingle-msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavespeed-pre",
            0
          ],
          "source": [
            "wavespeed-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wave-controller",
            0
          ],
          "source": [
            "wavespeed-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavetype-pre",
            0
          ],
          "source": [
            "wavetype-menu",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wave-controller",
            0
          ],
          "source": [
            "wavetype-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wavewidth-pre",
            0
          ],
          "source": [
            "wavewidth-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "wave-controller",
            0
          ],
          "source": [
            "wavewidth-pre",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
