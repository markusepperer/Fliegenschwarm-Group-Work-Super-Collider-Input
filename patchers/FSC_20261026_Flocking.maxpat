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
      -1329.0,
      132.0,
      1344.0,
      900.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-2",
          "linecount": 84,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            287.0,
            196.0,
            150.0,
            1146.0
          ],
          "presentation": 1,
          "presentation_linecount": 33,
          "presentation_rect": [
            162.0,
            48.0,
            453.0,
            462.0
          ],
          "text": "Wenige Nachbarn + kleine Ausdehnung    Nur wenige Fliegen nehmen einander wahr, und ihre Abstoßungszone ist klein. Sie dürfen dicht zusammenkommen. Es entstehen enge Paare oder kleine lokale Gruppen; der übrige Schwarm beeinflusst sie kaum.\n\nWenige Nachbarn + große Ausdehnung    Jede Fliege hält großen Abstand zu ihren wenigen ausgewählten Nachbarn. Fliegen außerhalb dieser kleinen Auswahl werden aber nicht berücksichtigt. Dadurch entstehen weit auseinandergezogene Paare, Ketten oder kleine Zellen – keine gleichmäßige Ausdehnung des gesamten Schwarms. Andere Gruppen können sich trotzdem überlagern.\n\nViele Nachbarn + kleine Ausdehnung    Viele Fliegen ziehen sich organisatorisch zusammen und gleichen ihre Bewegung an, während kaum Abstoßung dagegenarbeitet. Das erzeugt einen dichten, kompakten und gemeinsam bewegten Schwarm.\n\nViele Nachbarn + große Ausdehnung    Viele Fliegen organisieren sich gemeinsam, stoßen sich aber gleichzeitig über eine große Distanz ab. Zusammenhalt und Abstoßung balancieren sich aus. Das ergibt eine breite, relativ gleichmäßig verteilte und trotzdem gemeinsam bewegte Schwarmwolke.\n\n\nDer wichtige Unterschied ist deshalb:\n- Große Ausdehnung mit wenigen Nachbarn erzeugt lokale Abstände und unregelmäßige Teilstrukturen.\n- Große Ausdehnung mit vielen Nachbarn verteilt den ganzen Teilschwarm räumlich.\n- Kleine Ausdehnung mit vielen Nachbarn lässt den Schwarm stark zusammenrücken.\n- Kleine Ausdehnung mit wenigen Nachbarn verändert hauptsächlich einzelne Paare oder kleine Gruppen.\nDie Flocking-Stärke skaliert anschließend, wie deutlich das Ergebnis dieser Kombination zur ursprünglichen Flugbahn hinzugemischt wird.\n"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 3,
          "outlettype": [
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
              0.0,
              0.0,
              1344.0,
              900.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "flocking-amount-load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    100.0,
                    75.0,
                    22.0
                  ],
                  "text": "loadmess 0."
                }
              },
              {
                "box": {
                  "id": "flocking-neighbors-load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    72.89156711101532,
                    153.01205015182495,
                    75.0,
                    22.0
                  ],
                  "text": "loadmess 6"
                }
              },
              {
                "box": {
                  "id": "flocking-separation-load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    83.73494100570679,
                    208.43373894691467,
                    85.0,
                    22.0
                  ],
                  "text": "loadmess 35."
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-7",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    49.999972681816075,
                    290.43376795208746,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-10",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    84.99997268181608,
                    290.43376795208746,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-13",
                  "index": 3,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    119.99997268181608,
                    290.43376795208746,
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
                    "obj-7",
                    0
                  ],
                  "source": [
                    "flocking-amount-load",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-10",
                    0
                  ],
                  "source": [
                    "flocking-neighbors-load",
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
                    "flocking-separation-load",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            50.0,
            200.00000369548798,
            83.0,
            22.0
          ],
          "text": "p loadmessen"
        }
      },
      {
        "box": {
          "id": "flocking-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            150.29520285129547,
            100.0,
            260.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 3,
          "presentation_rect": [
            0.0,
            0.0,
            101.0,
            47.0
          ],
          "text": "FLOCKING · lokale Nachbarschaften"
        }
      },
      {
        "box": {
          "id": "flocking-amount-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            150.29520285129547,
            126.50602507591248,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            48.0,
            115.0,
            20.0
          ],
          "text": "Flocking-Stärke (%)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "flocking-amount",
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
            150.29520285129547,
            146.98795354366302,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            68.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "flocking-amount-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            224.99400079250336,
            146.98795354366302,
            140.0,
            22.0
          ],
          "text": "prepend flocking"
        }
      },
      {
        "box": {
          "id": "flocking-neighbors-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            150.29520285129547,
            179.51807522773743,
            177.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            0.0,
            96.0,
            115.0,
            33.0
          ],
          "text": "Nachbarn / Organisation (1–20)"
        }
      },
      {
        "box": {
          "id": "flocking-neighbors",
          "maxclass": "number",
          "maximum": 20,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            150.29520285129547,
            200.00000369548798,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            130.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "flocking-neighbors-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            224.99400079250336,
            200.00000369548798,
            165.0,
            22.0
          ],
          "text": "prepend flockneighbors"
        }
      },
      {
        "box": {
          "id": "flocking-separation-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            150.29520285129547,
            232.53012537956238,
            192.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            0.0,
            158.0,
            103.0,
            33.0
          ],
          "text": "Mindestabstand / Ausdehnung (%)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "flocking-separation",
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
            150.29520285129547,
            255.4216924905777,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            190.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "flocking-separation-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            224.99400079250336,
            255.4216924905777,
            175.0,
            22.0
          ],
          "text": "prepend flockseparation"
        }
      },
      {
        "box": {
          "id": "flocking-broadcast-send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            192.49400079250336,
            315.075310587883,
            205.0,
            22.0
          ],
          "text": "s FSC_20261026_3922_flocking_commands"
        }
      },
      {
        "box": {
          "id": "flocking-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            488.0,
            192.0,
            672.0,
            20.0
          ],
          "text": "Mehr Nachbarn = größere Reichweite und stärkere Organisation; Mindestabstand öffnet den Raum. Gruppenfilter bleibt aktiv."
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "flocking-amount-pre",
            0
          ],
          "source": [
            "flocking-amount",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "flocking-broadcast-send",
            0
          ],
          "source": [
            "flocking-amount-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "flocking-neighbors-pre",
            0
          ],
          "source": [
            "flocking-neighbors",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "flocking-broadcast-send",
            0
          ],
          "source": [
            "flocking-neighbors-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "flocking-separation-pre",
            0
          ],
          "source": [
            "flocking-separation",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "flocking-broadcast-send",
            0
          ],
          "source": [
            "flocking-separation-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "flocking-amount",
            0
          ],
          "source": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "flocking-neighbors",
            0
          ],
          "source": [
            "obj-14",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "flocking-separation",
            0
          ],
          "source": [
            "obj-14",
            2
          ]
        }
      }
    ],
    "autosave": 0
  }
}
