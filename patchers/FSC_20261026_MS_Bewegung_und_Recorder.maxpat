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
      -82.0,
      190.0,
      1682.0,
      899.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "args": [
            "#1"
          ],
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-3",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_MS_Bio_Trajektorien.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [
            0.0,
            0.0
          ],
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2467.164090871811,
            585.0746059417725,
            131.3432788848877,
            285.0746166706085
          ],
          "presentation": 1,
          "presentation_rect": [
            1221.6867921352386,
            2.4096386432647705,
            136.14458334445953,
            298.79519176483154
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-2",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_MS_Spirale.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [
            0.0,
            0.0
          ],
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2234.740238428116,
            588.8271480202675,
            204.93828797340393,
            312.345703959465
          ],
          "presentation": 1,
          "presentation_rect": [
            1016.0,
            3.0,
            204.93828797340393,
            312.345703959465
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-5",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_MS_Circlepanner.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [
            0.0,
            0.0
          ],
          "outlettype": [
            ""
          ],
          "patching_rect": [
            440.0,
            852.0,
            149.35064792633057,
            55.84415531158447
          ],
          "presentation": 1,
          "presentation_rect": [
            37.0,
            304.0,
            149.35064792633057,
            55.84415531158447
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "int"
          ],
          "patching_rect": [
            848.75,
            764.0344974994659,
            29.5,
            22.0
          ],
          "text": "t i i"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-12",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_MS_Traversepanner.maxpat",
          "numinlets": 2,
          "numoutlets": 1,
          "offset": [
            0.0,
            0.0
          ],
          "outlettype": [
            ""
          ],
          "patching_rect": [
            710.75,
            812.0344974994659,
            167.0,
            117.0
          ],
          "presentation": 1,
          "presentation_rect": [
            39.0,
            6.0,
            167.18181657791138,
            112.4999989271164
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            1173.5,
            756.0,
            33.0,
            22.0
          ],
          "text": "== 4"
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
              0.0,
              0.0,
              1344.0,
              899.2
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": [
                    "bang",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    62.26178336143494,
                    127.09525322914124,
                    44.0,
                    22.0
                  ],
                  "text": "sel 0 1"
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "number",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    62.26178336143494,
                    100.0,
                    50.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    175.3551388978958,
                    101.0,
                    22.0
                  ],
                  "text": "bgcolor 1. 1. 1. 1."
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    87.38317728042603,
                    208.99999845027924,
                    168.0,
                    22.0
                  ],
                  "text": "bgcolor 0.294 0.414 0.716 0.5"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-55",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    62.26178795765685,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-56",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    62.691581957656865,
                    291.0,
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
                    "obj-56",
                    0
                  ],
                  "source": [
                    "obj-48",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-56",
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
                    "obj-54",
                    0
                  ],
                  "source": [
                    "obj-53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-48",
                    0
                  ],
                  "source": [
                    "obj-54",
                    1
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
                    "obj-54",
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
                    "obj-55",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            1297.5,
            756.0,
            71.0,
            22.0
          ],
          "text": "p colorcode"
        }
      },
      {
        "box": {
          "id": "obj-63",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            1297.5,
            726.0,
            33.0,
            22.0
          ],
          "text": "== 4"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-1",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_MS_Billardpanner.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [
            0.0,
            0.0
          ],
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2023.8636170625687,
            620.1383544802666,
            175.86207818984985,
            281.03449749946594
          ],
          "presentation": 1,
          "presentation_rect": [
            837.0,
            5.0,
            175.86207818984985,
            281.03449749946594
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-34",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_MS_Randomjump.maxpat",
          "numinlets": 2,
          "numoutlets": 1,
          "offset": [
            0.0,
            0.0
          ],
          "outlettype": [
            ""
          ],
          "patching_rect": [
            942.125,
            794.0,
            127.53623294830322,
            121.73913145065308
          ],
          "presentation": 1,
          "presentation_rect": [
            401.0,
            4.0,
            127.53623294830322,
            121.73913145065308
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-29",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_MS_Randomglide.maxpat",
          "numinlets": 2,
          "numoutlets": 1,
          "offset": [
            0.0,
            0.0
          ],
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1173.5,
            790.0,
            183.4862232208252,
            114.67888951301575
          ],
          "presentation": 1,
          "presentation_rect": [
            211.0,
            5.0,
            183.4862232208252,
            114.67888951301575
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-21",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_MS_Lissajous.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [
            0.0,
            0.0
          ],
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1805.6818009614944,
            666.0,
            165.71428966522217,
            230.00000548362732
          ],
          "presentation": 1,
          "presentation_rect": [
            365.0,
            127.0,
            165.89147543907166,
            224.80620503425598
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "seq",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_MS_Speaker_Sequenz.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [
            0.0,
            0.0
          ],
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1480.681804060936,
            582.2702805995941,
            290.54052114486694,
            309.45943880081177
          ],
          "presentation": 1,
          "presentation_rect": [
            535.0,
            5.0,
            295.3488417863846,
            307.7519427537918
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            942.125,
            762.0,
            33.0,
            22.0
          ],
          "text": "== 3"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
              59.0,
              111.0,
              1344.0,
              899.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": [
                    "bang",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    62.26178336143494,
                    127.09525322914124,
                    44.0,
                    22.0
                  ],
                  "text": "sel 0 1"
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "number",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    62.26178336143494,
                    100.0,
                    50.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    175.3551388978958,
                    101.0,
                    22.0
                  ],
                  "text": "bgcolor 0. 0. 0. 0."
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    87.38317728042603,
                    208.99999845027924,
                    155.0,
                    22.0
                  ],
                  "text": "bgcolor 0.694 0.122 0. 0.42"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-55",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    62.26178795765685,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-56",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    62.691581957656865,
                    291.0,
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
                    "obj-56",
                    0
                  ],
                  "source": [
                    "obj-48",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-56",
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
                    "obj-54",
                    0
                  ],
                  "source": [
                    "obj-53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-48",
                    0
                  ],
                  "source": [
                    "obj-54",
                    1
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
                    "obj-54",
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
                    "obj-55",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            708.0,
            662.0,
            71.0,
            22.0
          ],
          "text": "p colorcode"
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            708.0,
            634.0,
            33.0,
            22.0
          ],
          "text": "== 0"
        }
      },
      {
        "box": {
          "angle": 270.0,
          "bgcolor": [
            0.0,
            0.0,
            0.0,
            0.0
          ],
          "id": "obj-64",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            560.0,
            666.0,
            128.0,
            128.0
          ],
          "proportion": 0.5
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
              0.0,
              0.0,
              1344.0,
              899.2
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": [
                    "bang",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    62.26178336143494,
                    127.09525322914124,
                    44.0,
                    22.0
                  ],
                  "text": "sel 0 1"
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "number",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    62.26178336143494,
                    100.0,
                    50.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    175.3551388978958,
                    101.0,
                    22.0
                  ],
                  "text": "bgcolor 1. 1. 1. 1."
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    87.38317728042603,
                    208.99999845027924,
                    168.0,
                    22.0
                  ],
                  "text": "bgcolor 0.294 0.414 0.716 0.5"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-55",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    62.26178795765685,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-56",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    62.691581957656865,
                    291.0,
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
                    "obj-56",
                    0
                  ],
                  "source": [
                    "obj-48",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-56",
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
                    "obj-54",
                    0
                  ],
                  "source": [
                    "obj-53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-48",
                    0
                  ],
                  "source": [
                    "obj-54",
                    1
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
                    "obj-54",
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
                    "obj-55",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            1018.125,
            762.0,
            71.0,
            22.0
          ],
          "text": "p colorcode"
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            1018.125,
            734.0,
            33.0,
            22.0
          ],
          "text": "== 3"
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
              0.0,
              0.0,
              1344.0,
              899.2
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": [
                    "bang",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    62.26178336143494,
                    127.09525322914124,
                    44.0,
                    22.0
                  ],
                  "text": "sel 0 1"
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "number",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    62.26178336143494,
                    100.0,
                    50.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    175.3551388978958,
                    101.0,
                    22.0
                  ],
                  "text": "bgcolor 1. 1. 1. 1."
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    87.38317728042603,
                    208.99999845027924,
                    168.0,
                    22.0
                  ],
                  "text": "bgcolor 0.294 0.414 0.716 0.5"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-55",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    62.26178795765685,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-56",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    62.691581957656865,
                    291.0,
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
                    "obj-56",
                    0
                  ],
                  "source": [
                    "obj-48",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-56",
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
                    "obj-54",
                    0
                  ],
                  "source": [
                    "obj-53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-48",
                    0
                  ],
                  "source": [
                    "obj-54",
                    1
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
                    "obj-54",
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
                    "obj-55",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            710.75,
            780.0344974994659,
            71.0,
            22.0
          ],
          "text": "p colorcode"
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            848.75,
            732.0344974994659,
            33.0,
            22.0
          ],
          "text": "== 2"
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
              0.0,
              0.0,
              1344.0,
              899.2
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": [
                    "bang",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    62.26178336143494,
                    127.09525322914124,
                    44.0,
                    22.0
                  ],
                  "text": "sel 0 1"
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "number",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    62.26178336143494,
                    100.0,
                    50.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    175.3551388978958,
                    101.0,
                    22.0
                  ],
                  "text": "bgcolor 1. 1. 1. 1."
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    87.38317728042603,
                    208.99999845027924,
                    168.0,
                    22.0
                  ],
                  "text": "bgcolor 0.294 0.414 0.716 0.5"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-55",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    62.26178795765685,
                    40.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-56",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    62.691581957656865,
                    291.0,
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
                    "obj-56",
                    0
                  ],
                  "source": [
                    "obj-48",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-56",
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
                    "obj-54",
                    0
                  ],
                  "source": [
                    "obj-53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-48",
                    0
                  ],
                  "source": [
                    "obj-54",
                    1
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
                    "obj-54",
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
                    "obj-55",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            440.0,
            820.0,
            71.0,
            22.0
          ],
          "text": "p colorcode"
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            440.0,
            794.0,
            33.0,
            22.0
          ],
          "text": "== 1"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
              134.0,
              138.0,
              1344.0,
              899.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    676.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    623.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-10",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    752.0,
                    206.3063062429428,
                    54.0,
                    22.0
                  ],
                  "text": "Insekten"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    689.0,
                    206.3063062429428,
                    46.0,
                    22.0
                  ],
                  "text": "Spirale"
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
                    626.0,
                    206.3063062429428,
                    45.0,
                    22.0
                  ],
                  "text": "Billiard"
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    570.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    517.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    557.0,
                    206.3063062429428,
                    59.0,
                    22.0
                  ],
                  "text": "Lissajous"
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
                    468.0,
                    206.3063062429428,
                    82.0,
                    22.0
                  ],
                  "text": "Speaker SEQ"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    464.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    411.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "looptitle",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    351.3153151869774,
                    206.3063062429428,
                    110.0,
                    22.0
                  ],
                  "text": "Record Loop"
                }
              },
              {
                "box": {
                  "id": "obj-39",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    265.3153151869774,
                    206.3063062429428,
                    85.0,
                    22.0
                  ],
                  "text": "Random Glide"
                }
              },
              {
                "box": {
                  "id": "obj-37",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    177.02702695131302,
                    206.3063062429428,
                    87.0,
                    22.0
                  ],
                  "text": "Random Jump"
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    121.17117112874985,
                    206.3063062429428,
                    55.0,
                    22.0
                  ],
                  "text": "Traverse"
                }
              },
              {
                "box": {
                  "id": "obj-33",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    80.63063061237335,
                    206.3063062429428,
                    39.0,
                    22.0
                  ],
                  "text": "Circle"
                }
              },
              {
                "box": {
                  "id": "obj-31",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    50.0,
                    206.3063062429428,
                    29.5,
                    22.0
                  ],
                  "text": "Off"
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    358.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    304.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    251.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    198.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    145.0,
                    143.0,
                    28.0,
                    28.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "newobj",
                  "numinlets": 12,
                  "numoutlets": 12,
                  "outlettype": [
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    223.0,
                    69.0,
                    496.0,
                    22.0
                  ],
                  "text": "sel 0 1 2 3 4 5 6 7 8 9 10"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-42",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    160.81080718333817,
                    40.00001302095029,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-43",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    351.3153151869774,
                    341.0,
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
                    "obj-43",
                    0
                  ],
                  "source": [
                    "looptitle",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-43",
                    0
                  ],
                  "source": [
                    "obj-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-43",
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
                    "obj-10",
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
                    "obj-1",
                    0
                  ],
                  "source": [
                    "obj-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-11",
                    0
                  ],
                  "source": [
                    "obj-20",
                    10
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-2",
                    0
                  ],
                  "source": [
                    "obj-20",
                    7
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-22",
                    0
                  ],
                  "source": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-24",
                    0
                  ],
                  "source": [
                    "obj-20",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-26",
                    0
                  ],
                  "source": [
                    "obj-20",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-28",
                    0
                  ],
                  "source": [
                    "obj-20",
                    4
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-29",
                    0
                  ],
                  "source": [
                    "obj-20",
                    3
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
                    "obj-20",
                    8
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "source": [
                    "obj-20",
                    6
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "source": [
                    "obj-20",
                    5
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-9",
                    0
                  ],
                  "source": [
                    "obj-20",
                    9
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-31",
                    0
                  ],
                  "source": [
                    "obj-22",
                    0
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
                    "obj-35",
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
                    "obj-39",
                    0
                  ],
                  "source": [
                    "obj-28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-37",
                    0
                  ],
                  "source": [
                    "obj-29",
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
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-43",
                    0
                  ],
                  "source": [
                    "obj-31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-43",
                    0
                  ],
                  "source": [
                    "obj-33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-43",
                    0
                  ],
                  "source": [
                    "obj-35",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-43",
                    0
                  ],
                  "source": [
                    "obj-37",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-43",
                    0
                  ],
                  "source": [
                    "obj-39",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-43",
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
                    "obj-20",
                    0
                  ],
                  "source": [
                    "obj-42",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-7",
                    0
                  ],
                  "source": [
                    "obj-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "looptitle",
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
                    "obj-43",
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
                    "obj-43",
                    0
                  ],
                  "source": [
                    "obj-8",
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
                    "obj-9",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            692.0,
            562.0,
            48.0,
            22.0
          ],
          "text": "p Flags"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.513725490196078,
            1.0,
            0.741176470588235
          ],
          "bgcolor2": [
            0.0,
            0.513725490196078,
            1.0,
            0.741176470588235
          ],
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.29392,
            0.41441,
            0.71583,
            1.0
          ],
          "bgfillcolor_color1": [
            0.0,
            0.513725490196078,
            1.0,
            0.741176470588235
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_proportion": 0.5,
          "bgfillcolor_type": "color",
          "fontface": 1,
          "fontname": "Ableton Sans Medium",
          "fontsize": 16.0,
          "gradient": 1,
          "id": "obj-41",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            656.0,
            596.0,
            93.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            224.0,
            318.0,
            128.0,
            28.0
          ],
          "text": "Insekten",
          "textcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "textjustification": 1
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            692.0,
            536.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "activecolor": [
            1.0,
            0.717647058823529,
            0.0,
            1.0
          ],
          "bgcolor": [
            0.0,
            0.0,
            0.0,
            0.99
          ],
          "disabled": [
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0
          ],
          "elementcolor": [
            0.44313725490196076,
            0.44313725490196076,
            0.44313725490196076,
            1.0
          ],
          "id": "obj-17",
          "itemtype": 0,
          "maxclass": "radiogroup",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": 18,
          "outlettype": [
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            692.0,
            319.31817877292633,
            21.590908885002136,
            200.0
          ],
          "presentation": 1,
          "presentation_rect": [
            9.0,
            4.0,
            18.0,
            200.0
          ],
          "shape": 1,
          "size": 11,
          "value": 10
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 11,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            247.54097652435303,
            939.6396390795708,
            2222.950756072998,
            22.0
          ],
          "text": "switch 10"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-15",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            252.94119215011597,
            1066.6666412353516,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "Dritten nodes-Ausgang direkt anschließen (mouse-Meldungen 0..1).",
          "id": "obj-13",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1404.875,
            504.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-11",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_MS_MausrecorderPanner.maxpat",
          "numinlets": 2,
          "numoutlets": 2,
          "offset": [
            0.0,
            0.0
          ],
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            1101.486951828003,
            560.0,
            322.38804817199707,
            155.22387504577637
          ],
          "presentation": 1,
          "presentation_rect": [
            38.0,
            121.0,
            325.0,
            183.0
          ],
          "viewvisibility": 1
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "obj-16",
            8
          ],
          "source": [
            "obj-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            5
          ],
          "source": [
            "obj-11",
            1
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
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            2
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
            "obj-11",
            1
          ],
          "source": [
            "obj-13",
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
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-11",
            0
          ],
          "order": 9,
          "source": [
            "obj-17",
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
          "order": 8,
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-19",
            0
          ],
          "order": 6,
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-22",
            0
          ],
          "order": 3,
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-24",
            0
          ],
          "order": 1,
          "source": [
            "obj-17",
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
          "order": 7,
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-59",
            0
          ],
          "order": 4,
          "source": [
            "obj-17",
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
          "order": 2,
          "source": [
            "obj-17",
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
          "order": 0,
          "source": [
            "obj-17",
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
          "order": 5,
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-12",
            1
          ],
          "source": [
            "obj-18",
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
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
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
            "obj-16",
            9
          ],
          "source": [
            "obj-2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            7
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
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-29",
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
            "obj-16",
            4
          ],
          "source": [
            "obj-29",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            10
          ],
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            3
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
            "obj-41",
            1
          ],
          "source": [
            "obj-44",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            1
          ],
          "source": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-57",
            0
          ],
          "source": [
            "obj-51",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
            0
          ],
          "source": [
            "obj-57",
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
            "obj-58",
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
            "obj-59",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-34",
            1
          ],
          "source": [
            "obj-60",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-60",
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
            "obj-29",
            1
          ],
          "source": [
            "obj-62",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-62",
            0
          ],
          "source": [
            "obj-63",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-64",
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
            "obj-65",
            0
          ],
          "source": [
            "obj-66",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            6
          ],
          "source": [
            "seq",
            0
          ]
        }
      }
    ]
  }
}
