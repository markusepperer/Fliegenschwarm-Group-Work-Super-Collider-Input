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
      79.0,
      108.0,
      1852.0,
      1025.0
    ],
    "openinpresentation": 1,
    "subpatcher_template": "Default Max 7",
    "boxes": [
      {
        "box": {
          "id": "obj-3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            665.625,
            259.375,
            150.0,
            20.0
          ],
          "text": "4 MonoQuellen ( Fliege )"
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
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
              36.0,
              78.0,
              753.0,
              531.0
            ],
            "subpatcher_template": "Default Max 7",
            "boxes": [
              {
                "box": {
                  "id": "setup-loadbang",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    74.0,
                    100.0,
                    60.0,
                    22.0
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "setup-deferlow",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    79.0,
                    134.0,
                    60.0,
                    22.0
                  ],
                  "text": "deferlow"
                }
              },
              {
                "box": {
                  "id": "setup-slot",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    242.0,
                    32.0,
                    22.0
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "setup-load-trigger",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "bang",
                    "bang"
                  ],
                  "patching_rect": [
                    79.0,
                    164.0,
                    44.0,
                    22.0
                  ],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "setup-read",
                  "linecount": 3,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    136.0,
                    201.0,
                    115.0,
                    49.0
                  ],
                  "text": "read"
                }
              },
              {
                "box": {
                  "id": "setup-recall-delay",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    50.0,
                    210.0,
                    64.0,
                    22.0
                  ],
                  "text": "delay 200"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-3",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    87.0,
                    324.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "fsc-preset-path-FSC_20261026_fliegensynthmain_setup",
                  "maxclass": "newobj",
                  "text": "js FSC_20261026_preset_path.js FSC_20261026_fliegensynthmain_setup.json",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1080.0,
                    710.0,
                    560.0,
                    22.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "setup-load-trigger",
                    0
                  ],
                  "source": [
                    "setup-deferlow",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "setup-read",
                    0
                  ],
                  "source": [
                    "setup-load-trigger",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "setup-recall-delay",
                    0
                  ],
                  "source": [
                    "setup-load-trigger",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "setup-deferlow",
                    0
                  ],
                  "source": [
                    "setup-loadbang",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "fsc-preset-path-FSC_20261026_fliegensynthmain_setup",
                    0
                  ],
                  "source": [
                    "setup-read",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "setup-slot",
                    0
                  ],
                  "source": [
                    "setup-recall-delay",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "source": [
                    "setup-slot",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fsc-preset-path-FSC_20261026_fliegensynthmain_setup",
                    0
                  ],
                  "destination": [
                    "obj-3",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            82.08954930305481,
            1061.1939918994904,
            34.0,
            22.0
          ],
          "text": "p init"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            429.8507308959961,
            1070.1492154598236,
            89.0,
            22.0
          ],
          "text": "storagewindow"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            347.7611815929413,
            1070.1492154598236,
            77.0,
            22.0
          ],
          "text": "clientwindow"
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "multichannelsignal"
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
              134.0,
              164.0,
              753.0,
              531.0
            ],
            "subpatcher_template": "Default Max 7",
            "boxes": [
              {
                "box": {
                  "id": "obj-15",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    188.7361388206482,
                    100.0,
                    39.0,
                    22.0
                  ],
                  "text": "$1 40"
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    188.7361388206482,
                    126.9841274023056,
                    34.0,
                    22.0
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "multichannelsignal"
                  ],
                  "patching_rect": [
                    60.301587363084195,
                    178.18693369627,
                    53.0,
                    22.0
                  ],
                  "text": "mc.*~ 1."
                }
              },
              {
                "box": {
                  "id": "obj-10",
                  "maxclass": "newobj",
                  "numinlets": 4,
                  "numoutlets": 1,
                  "outlettype": [
                    "multichannelsignal"
                  ],
                  "patching_rect": [
                    53.968254029750824,
                    137.30158787965775,
                    90.86581033468246,
                    22.0
                  ],
                  "text": "mc.pack~ 4"
                }
              },
              {
                "box": {
                  "id": "obj-37",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 4,
                  "outlettype": [
                    "signal",
                    "signal",
                    "signal",
                    "signal"
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
                      281.0,
                      151.0,
                      753.0,
                      531.0
                    ],
                    "subpatcher_template": "Default Max 7",
                    "boxes": [
                      {
                        "box": {
                          "id": "obj-25",
                          "maxclass": "newobj",
                          "numinlets": 0,
                          "numoutlets": 4,
                          "outlettype": [
                            "signal",
                            "signal",
                            "signal",
                            "signal"
                          ],
                          "patching_rect": [
                            177.9569948911667,
                            126.88172161579132,
                            138.58226823806763,
                            22.0
                          ],
                          "text": "FSC_20261026_MS_Receivepanner 4"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-26",
                          "maxclass": "newobj",
                          "numinlets": 0,
                          "numoutlets": 4,
                          "outlettype": [
                            "signal",
                            "signal",
                            "signal",
                            "signal"
                          ],
                          "patching_rect": [
                            50.0,
                            126.88172161579132,
                            124.0,
                            22.0
                          ],
                          "text": "FSC_20261026_MS_Receivepanner 3"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-24",
                          "maxclass": "newobj",
                          "numinlets": 0,
                          "numoutlets": 4,
                          "outlettype": [
                            "signal",
                            "signal",
                            "signal",
                            "signal"
                          ],
                          "patching_rect": [
                            177.9569948911667,
                            100.0,
                            138.58226823806763,
                            22.0
                          ],
                          "text": "FSC_20261026_MS_Receivepanner 2"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-21",
                          "maxclass": "newobj",
                          "numinlets": 0,
                          "numoutlets": 4,
                          "outlettype": [
                            "signal",
                            "signal",
                            "signal",
                            "signal"
                          ],
                          "patching_rect": [
                            50.0,
                            100.0,
                            124.0,
                            22.0
                          ],
                          "text": "FSC_20261026_MS_Receivepanner 1"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-33",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            107.97847843533327,
                            208.88176980961612,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-34",
                          "index": 2,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            142.97847843533327,
                            208.88176980961612,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-35",
                          "index": 3,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            177.97847843533327,
                            208.88176980961612,
                            30.0,
                            30.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-36",
                          "index": 4,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            212.97847843533327,
                            208.88176980961612,
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
                            "obj-33",
                            0
                          ],
                          "source": [
                            "obj-21",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-34",
                            0
                          ],
                          "source": [
                            "obj-21",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-35",
                            0
                          ],
                          "source": [
                            "obj-21",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-36",
                            0
                          ],
                          "source": [
                            "obj-21",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-33",
                            0
                          ],
                          "source": [
                            "obj-24",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-34",
                            0
                          ],
                          "source": [
                            "obj-24",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-35",
                            0
                          ],
                          "source": [
                            "obj-24",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-36",
                            0
                          ],
                          "source": [
                            "obj-24",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-33",
                            0
                          ],
                          "source": [
                            "obj-25",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-34",
                            0
                          ],
                          "source": [
                            "obj-25",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-35",
                            0
                          ],
                          "source": [
                            "obj-25",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-36",
                            0
                          ],
                          "source": [
                            "obj-25",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-33",
                            0
                          ],
                          "source": [
                            "obj-26",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-34",
                            0
                          ],
                          "source": [
                            "obj-26",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-35",
                            0
                          ],
                          "source": [
                            "obj-26",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-36",
                            0
                          ],
                          "source": [
                            "obj-26",
                            3
                          ]
                        }
                      }
                    ]
                  },
                  "patching_rect": [
                    50.0,
                    100.0,
                    103.0,
                    22.0
                  ],
                  "text": "p Receives"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-34",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    188.73616568873967,
                    40.000000997795105,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-35",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    60.30159568873978,
                    260.1869399977951,
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
                    "obj-11",
                    0
                  ],
                  "source": [
                    "obj-10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    0
                  ],
                  "source": [
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-11",
                    1
                  ],
                  "source": [
                    "obj-12",
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
                    "obj-15",
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
                    "obj-34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-10",
                    3
                  ],
                  "source": [
                    "obj-37",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-10",
                    2
                  ],
                  "source": [
                    "obj-37",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-10",
                    1
                  ],
                  "source": [
                    "obj-37",
                    1
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
                    "obj-37",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            966.6666816473007,
            128.17021214962006,
            106.0,
            22.0
          ],
          "text": "p Receives On Off"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal"
          ],
          "patching_rect": [
            966.5743326743444,
            154.76190716028214,
            84.0,
            22.0
          ],
          "text": "mc.unpack~ 4"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
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
              36.0,
              78.0,
              753.0,
              531.0
            ],
            "subpatcher_template": "Default Max 7",
            "boxes": [
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    50.0,
                    100.0,
                    58.0,
                    22.0
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "linecount": 2,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    137.0,
                    87.04661762714386,
                    35.0
                  ],
                  "text": "0 0 1 1 1 1 2 2 1 3 3 1"
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
                    50.00001075402071,
                    232.0,
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
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    0
                  ],
                  "source": [
                    "obj-6",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            591.4417631626129,
            67.61905628442764,
            34.0,
            22.0
          ],
          "text": "p init"
        }
      },
      {
        "box": {
          "id": "obj-87",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            586.71875,
            285.9375,
            55.0,
            22.0
          ],
          "text": "FSC_20261026_MS_fly 1",
          "varname": "MS_fly"
        }
      },
      {
        "box": {
          "id": "obj-82",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            768.7832312583923,
            285.9375,
            55.0,
            22.0
          ],
          "text": "FSC_20261026_MS_fly 4",
          "varname": "MS_fly[1]"
        }
      },
      {
        "box": {
          "id": "obj-81",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            709.6694085597992,
            285.9375,
            55.0,
            22.0
          ],
          "text": "FSC_20261026_MS_fly 3",
          "varname": "MS_fly[2]"
        }
      },
      {
        "box": {
          "id": "obj-80",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            650.555585861206,
            285.9375,
            55.0,
            22.0
          ],
          "text": "FSC_20261026_MS_fly 2",
          "varname": "MS_fly[3]"
        }
      },
      {
        "box": {
          "columns": 4,
          "id": "obj-61",
          "maxclass": "matrixctrl",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "list",
            "list"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            591.4417631626129,
            97.14286959171295,
            87.35632038116455,
            90.8045961856842
          ],
          "presentation": 1,
          "presentation_rect": [
            554.2168879508972,
            664.961741566658,
            128.37836980819702,
            112.16215467453003
          ],
          "varname": "fly_matrix"
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "numinlets": 4,
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
              134.0,
              164.0,
              753.0,
              531.0
            ],
            "subpatcher_template": "Default Max 7",
            "boxes": [
              {
                "box": {
                  "id": "obj-52",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    131.75,
                    175.30345475673676,
                    124.0,
                    22.0
                  ],
                  "text": "send~ FSC_20261026_4_Monosource"
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    104.5,
                    149.88545382022858,
                    124.0,
                    22.0
                  ],
                  "text": "send~ FSC_20261026_3_Monosource"
                }
              },
              {
                "box": {
                  "id": "obj-51",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    77.4060605764389,
                    124.88328969478607,
                    124.0,
                    22.0
                  ],
                  "text": "send~ FSC_20261026_2_Monosource"
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    50.0,
                    100.0,
                    124.0,
                    22.0
                  ],
                  "text": "send~ FSC_20261026_1_Monosource"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-54",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    50.00000724832921,
                    39.99999679390717,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-55",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    85.00000724832921,
                    39.99999679390717,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-56",
                  "index": 3,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    120.00000724832921,
                    39.99999679390717,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-57",
                  "index": 4,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    155.0000072483292,
                    39.99999679390717,
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
                    "obj-48",
                    0
                  ],
                  "source": [
                    "obj-54",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-51",
                    0
                  ],
                  "source": [
                    "obj-55",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-53",
                    0
                  ],
                  "source": [
                    "obj-56",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-52",
                    0
                  ],
                  "source": [
                    "obj-57",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            597.343524992466,
            348.22714483737946,
            159.3231744170189,
            22.0
          ],
          "text": "p sends monosource"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 5,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal",
            ""
          ],
          "patching_rect": [
            591.4417631626129,
            323.5714359283447,
            196.34146809577942,
            22.0
          ],
          "text": "matrix~ 4 4 @ramp 50"
        }
      },
      {
        "box": {
          "id": "obj-173",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            963.4920784235001,
            68.19148898124695,
            51.724140644073486,
            51.724140644073486
          ],
          "presentation": 1,
          "presentation_rect": [
            786.7470170259476,
            725.3012316226959,
            51.724140644073486,
            51.724140644073486
          ]
        }
      },
      {
        "box": {
          "id": "obj-170",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            126.82927131652832,
            203.78047573566437,
            70.0,
            22.0
          ],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "id": "obj-169",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 1,
          "outlettype": [
            "multichannelsignal"
          ],
          "patching_rect": [
            1060.241003036499,
            348.22714483737946,
            70.0,
            22.0
          ],
          "text": "mc.pack~ 4"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1239.7590819597244,
            350.6367834806442,
            117.0,
            20.0
          ],
          "style": "helpfile_label",
          "text": "elapsed time (ms)"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "obj-14",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            1166.265103340149,
            304.8536492586136,
            180.0,
            38.0
          ],
          "text": "mc.sfrecord~ 4 @bitdepth 24 @nchans 4"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "obj-8",
          "maxclass": "number~",
          "mode": 2,
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "float"
          ],
          "patching_rect": [
            1166.265103340149,
            349.43196415901184,
            72.8476881980896,
            23.0
          ],
          "sig": 0.0
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 13.0,
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1191.566309094429,
            215.69701945781708,
            73.0,
            23.0
          ],
          "text": "js FSC_20261026_audio_record_path.js #0"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            1191.566309094429,
            267.50425028800964,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            263.41464042663574,
            354.99999153614044,
            127.0,
            22.0
          ],
          "text": "send FSC_20261026_4_Mastervolume"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "obj-68",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            263.41464042663574,
            320.8536492586136,
            70.0,
            22.0
          ],
          "varname": "fly_4_master"
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            263.41464042663574,
            290.3658436536789,
            127.0,
            22.0
          ],
          "text": "send FSC_20261026_3_Mastervolume"
        }
      },
      {
        "box": {
          "fontsize": 12.0,
          "id": "obj-70",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            130.48780798912048,
            236.70730578899384,
            78.18181538581848,
            20.0
          ],
          "text": "Master 0–1 "
        }
      },
      {
        "box": {
          "format": 6,
          "id": "obj-71",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            263.41464042663574,
            258.6585258245468,
            70.0,
            22.0
          ],
          "varname": "fly_3_master"
        }
      },
      {
        "box": {
          "id": "obj-63",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            130.48780798912048,
            354.99999153614044,
            127.0,
            22.0
          ],
          "text": "send FSC_20261026_2_Mastervolume"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "obj-65",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            130.48780798912048,
            320.8536492586136,
            70.0,
            22.0
          ],
          "varname": "fly_2_master"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            130.48780798912048,
            292.80486810207367,
            127.0,
            22.0
          ],
          "text": "send FSC_20261026_1_Mastervolume"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "master",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            130.48780798912048,
            258.6585258245468,
            70.0,
            22.0
          ],
          "varname": "fly_1_master"
        }
      },
      {
        "box": {
          "args": [
            4
          ],
          "bgcolor": [
            0.7529411764705882,
            0.807843137254902,
            0.8901960784313725,
            0.98
          ],
          "bgmode": 2,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-39",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_Quadpanner_Fliegenmodul.maxpat",
          "numinlets": 0,
          "numoutlets": 0,
          "offset": [
            0.0,
            0.0
          ],
          "patching_rect": [
            790.3614749908447,
            716.8674963712692,
            637.3494211435318,
            304.81928837299347
          ],
          "presentation": 1,
          "presentation_rect": [
            653.0120723247528,
            324.09639751911163,
            640.963879108429,
            306.02410769462585
          ],
          "varname": "fly_4",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "args": [
            3
          ],
          "bgcolor": [
            0.8313725490196079,
            0.7764705882352941,
            0.7254901960784313,
            1.0
          ],
          "bgmode": 2,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-38",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_Quadpanner_Fliegenmodul.maxpat",
          "numinlets": 0,
          "numoutlets": 0,
          "offset": [
            0.0,
            0.0
          ],
          "patching_rect": [
            140.4457535147667,
            716.8674963712692,
            642.0000933408737,
            304.81928837299347
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            324.09639751911163,
            644.5783370733261,
            306.02410769462585
          ],
          "varname": "fly_3",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "channels": 4,
          "id": "obj-32",
          "lastchannelcount": 0,
          "maxclass": "live.gain~",
          "numinlets": 4,
          "numoutlets": 7,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal",
            "",
            "float",
            "list"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            960.240999341011,
            196.4199103116989,
            103.0,
            136.0
          ],
          "presentation": 1,
          "presentation_rect": [
            673.4940007925034,
            644.5783370733261,
            110.0,
            144.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "live.gain~",
              "parameter_mmax": 6.0,
              "parameter_mmin": -70.0,
              "parameter_modmode": 3,
              "parameter_shortname": "live.gain~",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "thickness": 9,
          "varname": "main_output_gain"
        }
      },
      {
        "box": {
          "args": [
            2
          ],
          "bgmode": 2,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-23",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_Quadpanner_Fliegenmodul.maxpat",
          "numinlets": 0,
          "numoutlets": 0,
          "offset": [
            0.0,
            0.0
          ],
          "patching_rect": [
            797.0,
            405.0,
            642.1686984300613,
            304.81928837299347
          ],
          "presentation": 1,
          "presentation_rect": [
            657.8313496112823,
            3.6144579648971558,
            640.963879108429,
            302.4096497297287
          ],
          "varname": "fly_2",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 0,
          "patching_rect": [
            936.1446129083633,
            348.22714483737946,
            112.61290550231934,
            22.0
          ],
          "text": "dac~ 1 2 3 4"
        }
      },
      {
        "box": {
          "args": [
            1
          ],
          "bgcolor": [
            0.8470588235294118,
            0.8470588235294118,
            0.8470588235294118,
            1.0
          ],
          "bgmode": 2,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-1",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_Quadpanner_Fliegenmodul.maxpat",
          "numinlets": 0,
          "numoutlets": 0,
          "offset": [
            0.0,
            0.0
          ],
          "patching_rect": [
            140.96386063098907,
            399.0,
            640.963879108429,
            304.81928837299347
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            644.5783370733261,
            309.638565659523
          ],
          "varname": "fly_1",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "setup-autopattr",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            135.82089066505432,
            1137.313392162323,
            150.0,
            22.0
          ],
          "restore": {
            "fly_1_master": [
              1.0
            ],
            "fly_2_master": [
              1.0
            ],
            "fly_3_master": [
              1.0
            ],
            "fly_4_master": [
              1.0
            ],
            "fly_matrix": [
              0,
              0,
              1.0,
              1,
              1,
              1.0,
              2,
              2,
              1.0,
              3,
              3,
              1.0
            ],
            "main_output_gain": [
              0.0
            ]
          },
          "text": "autopattr @autorestore 0",
          "varname": "u266012555"
        }
      },
      {
        "box": {
          "id": "setup-storage",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            135.82089066505432,
            1104.477572441101,
            390.0,
            22.0
          ],
          "saved_object_attributes": {
            "client_rect": [
              100,
              164,
              954,
              850
            ],
            "parameter_enable": 0,
            "parameter_mappable": 0,
            "storage_rect": [
              102,
              95,
              1003,
              1038
            ]
          },
          "text": "pattrstorage FSC_20261026_fliegen_setup @greedy 1 @autorestore 0 @savemode 0",
          "varname": "fliegen_setup"
        }
      },
      {
        "box": {
          "fontsize": 14.0,
          "id": "setup-bank-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1134.7108961343765,
            1065.0,
            220.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            922.0,
            664.961741566658,
            220.0,
            22.0
          ],
          "text": "PRESET-BANK · 20 Setups"
        }
      },
      {
        "box": {
          "bubblesize": 14,
          "embed": 0,
          "id": "setup-preset",
          "maxclass": "preset",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "preset",
            "int",
            "preset",
            "int",
            ""
          ],
          "patching_rect": [
            1061.7108961343765,
            1034.0,
            366.0,
            22.0
          ],
          "pattrstorage": "fliegen_setup",
          "presentation": 1,
          "presentation_rect": [
            922.0,
            637.0,
            366.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "setup-bank-button",
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
            137.31342792510986,
            1037.3133957386017,
            132.0,
            24.0
          ],
          "text": "BANK SPEICHERN",
          "texton": "BANK SPEICHERN"
        }
      },
      {
        "box": {
          "id": "setup-writeagain-new",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            137.31342792510986,
            1070.1492154598236,
            200.0,
            22.0
          ],
          "text": "write"
        }
      },
      {
        "box": {
          "id": "setup-bank-note",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            126.86566710472107,
            1167.1641373634338,
            428.35819363594055,
            33.0
          ],
          "text": "Shift-Klick = Preset speichern · Klick = Preset laden · BANK SPEICHERN = JSON"
        }
      },
      {
        "box": {
          "id": "fsc-preset-path-FSC_20261026_fliegensynthmain_setup",
          "maxclass": "newobj",
          "text": "js FSC_20261026_preset_path.js FSC_20261026_fliegensynthmain_setup.json",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1080.0,
            710.0,
            560.0,
            22.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "obj-49",
            0
          ],
          "source": [
            "master",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-8",
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
            "obj-32",
            3
          ],
          "source": [
            "obj-16",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            2
          ],
          "source": [
            "obj-16",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            1
          ],
          "source": [
            "obj-16",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "source": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-14",
            0
          ],
          "source": [
            "obj-169",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "master",
            0
          ],
          "order": 3,
          "source": [
            "obj-170",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-65",
            0
          ],
          "order": 2,
          "source": [
            "obj-170",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-68",
            0
          ],
          "order": 0,
          "source": [
            "obj-170",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-71",
            0
          ],
          "order": 1,
          "source": [
            "obj-170",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-36",
            0
          ],
          "source": [
            "obj-173",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-14",
            0
          ],
          "midpoints": [
            1201.066309094429,
            239.1431434750557,
            1175.765103340149,
            239.1431434750557
          ],
          "source": [
            "obj-24",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-14",
            0
          ],
          "source": [
            "obj-27",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-169",
            3
          ],
          "order": 0,
          "source": [
            "obj-32",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-169",
            2
          ],
          "order": 0,
          "source": [
            "obj-32",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-169",
            1
          ],
          "order": 0,
          "source": [
            "obj-32",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-169",
            0
          ],
          "order": 0,
          "source": [
            "obj-32",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            3
          ],
          "order": 1,
          "source": [
            "obj-32",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            2
          ],
          "order": 1,
          "source": [
            "obj-32",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            1
          ],
          "order": 1,
          "source": [
            "obj-32",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            0
          ],
          "order": 1,
          "source": [
            "obj-32",
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
            "obj-36",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "setup-storage",
            0
          ],
          "source": [
            "obj-4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-58",
            3
          ],
          "source": [
            "obj-50",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-58",
            2
          ],
          "source": [
            "obj-50",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-58",
            1
          ],
          "source": [
            "obj-50",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-58",
            0
          ],
          "source": [
            "obj-50",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "setup-storage",
            0
          ],
          "source": [
            "obj-6",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-50",
            0
          ],
          "source": [
            "obj-61",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-63",
            0
          ],
          "source": [
            "obj-65",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-66",
            0
          ],
          "source": [
            "obj-68",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "setup-storage",
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
            "obj-69",
            0
          ],
          "source": [
            "obj-71",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-50",
            1
          ],
          "source": [
            "obj-80",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-50",
            2
          ],
          "source": [
            "obj-81",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-50",
            3
          ],
          "source": [
            "obj-82",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-50",
            0
          ],
          "source": [
            "obj-87",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-61",
            0
          ],
          "source": [
            "obj-9",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "setup-writeagain-new",
            0
          ],
          "source": [
            "setup-bank-button",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fsc-preset-path-FSC_20261026_fliegensynthmain_setup",
            0
          ],
          "source": [
            "setup-writeagain-new",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fsc-preset-path-FSC_20261026_fliegensynthmain_setup",
            0
          ],
          "destination": [
            "setup-storage",
            0
          ]
        }
      }
    ],
    "parameters": {
      "obj-32": [
        "live.gain~",
        "live.gain~",
        0
      ],
      "obj-80::doppler-control::dop-amount": [
        "doppler_amount[5]",
        "doppler_amount",
        0
      ],
      "obj-80::obj-152::gain0": [
        "Harmonic 2 Gain[3]",
        "H2 Gain",
        0
      ],
      "obj-80::obj-152::gain1": [
        "Harmonic 3 Gain[3]",
        "H3 Gain",
        0
      ],
      "obj-80::obj-152::q0": [
        "Harmonic 2 Q[5]",
        "H2 Q",
        0
      ],
      "obj-80::obj-152::q1": [
        "Harmonic 3 Q[11]",
        "H3 Q",
        0
      ],
      "obj-80::obj-165::obj-46": [
        "live.gain~[2]",
        "live.gain~[1]",
        0
      ],
      "obj-80::orientation-radiation::amount": [
        "Orientation Amount[1]",
        "Orient Amount",
        0
      ],
      "obj-81::doppler-control::dop-amount": [
        "doppler_amount[6]",
        "doppler_amount",
        0
      ],
      "obj-81::obj-152::gain0": [
        "Harmonic 2 Gain[4]",
        "H2 Gain",
        0
      ],
      "obj-81::obj-152::gain1": [
        "Harmonic 3 Gain[4]",
        "H3 Gain",
        0
      ],
      "obj-81::obj-152::q0": [
        "Harmonic 2 Q[6]",
        "H2 Q",
        0
      ],
      "obj-81::obj-152::q1": [
        "Harmonic 3 Q[12]",
        "H3 Q",
        0
      ],
      "obj-81::obj-165::obj-46": [
        "live.gain~[3]",
        "live.gain~[1]",
        0
      ],
      "obj-81::orientation-radiation::amount": [
        "Orientation Amount[2]",
        "Orient Amount",
        0
      ],
      "obj-82::doppler-control::dop-amount": [
        "doppler_amount[4]",
        "doppler_amount",
        0
      ],
      "obj-82::obj-152::gain0": [
        "Harmonic 2 Gain[2]",
        "H2 Gain",
        0
      ],
      "obj-82::obj-152::gain1": [
        "Harmonic 3 Gain[2]",
        "H3 Gain",
        0
      ],
      "obj-82::obj-152::q0": [
        "Harmonic 2 Q[4]",
        "H2 Q",
        0
      ],
      "obj-82::obj-152::q1": [
        "Harmonic 3 Q[10]",
        "H3 Q",
        0
      ],
      "obj-82::obj-165::obj-46": [
        "live.gain~[1]",
        "live.gain~[1]",
        0
      ],
      "obj-82::orientation-radiation::amount": [
        "Orientation Amount[6]",
        "Orient Amount",
        0
      ],
      "obj-87::doppler-control::dop-amount": [
        "doppler_amount[3]",
        "doppler_amount",
        0
      ],
      "obj-87::obj-152::gain0": [
        "Harmonic 2 Gain[10]",
        "H2 Gain",
        0
      ],
      "obj-87::obj-152::gain1": [
        "Harmonic 3 Gain[9]",
        "H3 Gain",
        0
      ],
      "obj-87::obj-152::q0": [
        "Harmonic 2 Q[2]",
        "H2 Q",
        0
      ],
      "obj-87::obj-152::q1": [
        "Harmonic 3 Q[8]",
        "H3 Q",
        0
      ],
      "obj-87::obj-165::obj-46": [
        "live.gain~[10]",
        "live.gain~[1]",
        0
      ],
      "obj-87::orientation-radiation::amount": [
        "Orientation Amount[8]",
        "Orient Amount",
        0
      ],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": [
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-"
          ],
          "buttons": [
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-"
          ]
        }
      },
      "parameter_overrides": {
        "obj-80::obj-165::obj-46": {
          "parameter_longname": "live.gain~[2]"
        },
        "obj-81::obj-165::obj-46": {
          "parameter_longname": "live.gain~[3]"
        },
        "obj-82::obj-165::obj-46": {
          "parameter_longname": "live.gain~[1]"
        },
        "obj-87::obj-165::obj-46": {
          "parameter_longname": "live.gain~[10]"
        }
      },
      "inherited_shortname": 1
    },
    "autosave": 0
  }
}
