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
      59.0,
      111.0,
      1344.0,
      899.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            ""
          ],
          "patching_rect": [
            193.47825813293457,
            136.95652103424072,
            34.0,
            22.0
          ],
          "text": "sel 1"
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
            193.47825813293457,
            165.39130306243896,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            193.47825813293457,
            221.73912811279297,
            32.0,
            22.0
          ],
          "text": "f 0.5"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            70.65217351913452,
            145.65217304229736,
            58.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            70.65217351913452,
            185.86956357955933,
            29.5,
            22.0
          ],
          "text": "i"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            352.17390727996826,
            266.30434465408325,
            70.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "id": "obj-7",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            148.9130415916443,
            108.69565200805664,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            101.03092217445374,
            -2.0618555545806885,
            66.38410949707031,
            20.0
          ],
          "text": "Traverse"
        }
      },
      {
        "box": {
          "id": "obj-237",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            202.1739101409912,
            319.5652132034302,
            41.0,
            22.0
          ],
          "text": "pak f f"
        }
      },
      {
        "box": {
          "id": "obj-187",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            89.13043403625488,
            258.6956491470337,
            44.68085074424744,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            41.23711109161377,
            -1.0309277772903442,
            33.774837255477905,
            20.0
          ],
          "text": "freq"
        }
      },
      {
        "box": {
          "id": "obj-188",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            233.69564867019653,
            180.43478107452393,
            80.0,
            22.0
          ],
          "text": "loadmess 0.5"
        }
      },
      {
        "box": {
          "id": "obj-189",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            231.52173566818237,
            136.95652103424072,
            55.67009997367859,
            33.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            18.556699991226196,
            21.64948332309723,
            45.69536805152893,
            33.0
          ],
          "text": "X / Y Offset"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-fc19e33df3b6",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            233.69564867019653,
            221.73912811279297,
            50.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            19.58762776851654,
            56.70102775096893,
            45.69536805152893,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Traverse Axis Offset[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Trav Offset",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_traverse_axis_offset"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-447e43e9d03c",
          "maxclass": "flonum",
          "maximum": 20.0,
          "minimum": -20.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            89.13043403625488,
            282.60869216918945,
            50.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            -2.0618555545806885,
            36.52150869369507,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Traverse Frequency[3]",
              "parameter_mmax": 20.0,
              "parameter_mmin": -20.0,
              "parameter_modmode": 0,
              "parameter_shortname": "Trav Freq",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_traverse_frequency"
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
            0.16470588235294117,
            0.16470588235294117,
            0.16470588235294117,
            1.0
          ],
          "disabled": [
            0,
            0,
            0,
            0
          ],
          "id": "param-reset-00565ad4ff48",
          "itemtype": 0,
          "maxclass": "radiogroup",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": 14,
          "outlettype": [
            ""
          ],
          "parameter_enable": 1,
          "patching_rect": [
            152.17391109466553,
            135.86956453323364,
            24.0,
            58.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            22.680411100387573,
            18.0,
            58.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "0",
                "1",
                "2",
                "3"
              ],
              "parameter_longname": "Traverse Direction[3]",
              "parameter_mmax": 3,
              "parameter_modmode": 0,
              "parameter_shortname": "Trav Dir",
              "parameter_type": 2
            }
          },
          "shape": 1,
          "size": 4,
          "value": 3,
          "varname": "reset_traverse_direction"
        }
      },
      {
        "box": {
          "id": "obj-193",
          "maxclass": "newobj",
          "numinlets": 8,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "float"
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
              898.0
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-55",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    540.0,
                    593.0,
                    45.0,
                    22.0
                  ],
                  "text": "/ 1000."
                }
              },
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    312.0,
                    599.0,
                    45.0,
                    22.0
                  ],
                  "text": "/ 1000."
                }
              },
              {
                "box": {
                  "comment": "Frequency",
                  "id": "obj-1",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    70.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "0 Horizontal / 1 Vertical / 2 Diagonal A / 3 Diagonal B",
                  "id": "obj-2",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    270.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "Offset 0..1",
                  "id": "obj-3",
                  "index": 3,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    470.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    70.0,
                    120.0,
                    52.0,
                    22.0
                  ],
                  "text": "phasor~"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    70.0,
                    165.0,
                    81.0,
                    22.0
                  ],
                  "text": "snapshot~ 30"
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    70.0,
                    210.0,
                    47.0,
                    22.0
                  ],
                  "text": "* 1000."
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    470.0,
                    120.0,
                    60.0,
                    22.0
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    470.0,
                    165.0,
                    47.0,
                    22.0
                  ],
                  "text": "* 1000."
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    270.0,
                    120.0,
                    29.5,
                    22.0
                  ],
                  "text": "+ 1"
                }
              },
              {
                "box": {
                  "id": "obj-10",
                  "maxclass": "newobj",
                  "numinlets": 5,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    155.0,
                    387.0,
                    52.0,
                    22.0
                  ],
                  "text": "switch 4"
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 5,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    385.0,
                    387.0,
                    52.0,
                    22.0
                  ],
                  "text": "switch 4"
                }
              },
              {
                "box": {
                  "comment": "X 0..1000",
                  "id": "obj-12",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    312.0,
                    640.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "Y 0..1000",
                  "id": "obj-13",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    540.0,
                    640.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    40.0,
                    20.0,
                    180.0,
                    20.0
                  ],
                  "text": "Frequency (+/- = direction)"
                }
              },
              {
                "box": {
                  "id": "obj-15",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    229.0,
                    -1.0,
                    390.0,
                    20.0
                  ],
                  "text": "0 = Horizontal   1 = Vertical   2 = Diagonal A   3 = Diagonal B"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    430.0,
                    20.0,
                    180.0,
                    20.0
                  ],
                  "text": "Offset of fixed axis (0..1)"
                }
              },
              {
                "box": {
                  "comment": "0 Traverse / 1 Pendulum",
                  "id": "obj-19",
                  "index": 4,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    650.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "X Depth 0..0.5",
                  "id": "obj-20",
                  "index": 5,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    820.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "Y Depth 0..0.5",
                  "id": "obj-21",
                  "index": 6,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    980.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    687.0,
                    140.0,
                    75.0,
                    22.0
                  ],
                  "text": "triangle~ 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-23",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    820.0,
                    120.0,
                    72.0,
                    22.0
                  ],
                  "text": "clip 0. 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    980.0,
                    120.0,
                    72.0,
                    22.0
                  ],
                  "text": "clip 0. 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-25",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    687.0,
                    171.0,
                    47.0,
                    22.0
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    687.0,
                    199.0,
                    43.0,
                    22.0
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "obj-27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    673.0,
                    225.0,
                    81.0,
                    22.0
                  ],
                  "text": "snapshot~ 30"
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    650.0,
                    255.0,
                    47.0,
                    22.0
                  ],
                  "text": "* 1000."
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    790.0,
                    165.0,
                    47.0,
                    22.0
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-30",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    790.0,
                    195.0,
                    43.0,
                    22.0
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "obj-31",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    799.0,
                    225.0,
                    81.0,
                    22.0
                  ],
                  "text": "snapshot~ 30"
                }
              },
              {
                "box": {
                  "id": "obj-32",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    790.0,
                    255.0,
                    47.0,
                    22.0
                  ],
                  "text": "* 1000."
                }
              },
              {
                "box": {
                  "id": "obj-33",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    870.0,
                    302.0,
                    58.0,
                    22.0
                  ],
                  "text": "!- 1000."
                }
              },
              {
                "box": {
                  "id": "obj-34",
                  "maxclass": "newobj",
                  "numinlets": 5,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    544.0,
                    339.0,
                    60.0,
                    22.0
                  ],
                  "text": "switch 4"
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "newobj",
                  "numinlets": 5,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    783.5,
                    394.0,
                    60.0,
                    22.0
                  ],
                  "text": "switch 4"
                }
              },
              {
                "box": {
                  "id": "obj-36",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    650.0,
                    365.0,
                    29.5,
                    22.0
                  ],
                  "text": "+ 1"
                }
              },
              {
                "box": {
                  "id": "obj-37",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    310.0,
                    552.0,
                    52.0,
                    22.0
                  ],
                  "text": "switch 2"
                }
              },
              {
                "box": {
                  "id": "obj-38",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    540.0,
                    552.0,
                    52.0,
                    22.0
                  ],
                  "text": "switch 2"
                }
              },
              {
                "box": {
                  "id": "obj-39",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    590.0,
                    92.0,
                    310.0,
                    20.0
                  ],
                  "text": "PENDULUM: movable X/Y center, constrained by Depth"
                }
              },
              {
                "box": {
                  "id": "obj-40",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    620.0,
                    20.0,
                    160.0,
                    20.0
                  ],
                  "text": "0 Traverse / 1 Pendulum"
                }
              },
              {
                "box": {
                  "comment": "X Center -1..1",
                  "id": "obj-41",
                  "index": 7,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1100.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "Y Center -1..1",
                  "id": "obj-42",
                  "index": 8,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1210.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-43",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1080.0,
                    120.0,
                    70.0,
                    22.0
                  ],
                  "text": "clip -1. 1."
                }
              },
              {
                "box": {
                  "id": "obj-44",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    1080.0,
                    155.0,
                    36.0,
                    22.0
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "obj-45",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    900.0,
                    155.0,
                    45.0,
                    22.0
                  ],
                  "text": "!- 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-46",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    1080.0,
                    190.0,
                    32.0,
                    22.0
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "obj-47",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    1080.0,
                    225.0,
                    43.0,
                    22.0
                  ],
                  "text": "+~ 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1200.0,
                    120.0,
                    70.0,
                    22.0
                  ],
                  "text": "clip -1. 1."
                }
              },
              {
                "box": {
                  "id": "obj-49",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    1200.0,
                    155.0,
                    36.0,
                    22.0
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    980.0,
                    155.0,
                    45.0,
                    22.0
                  ],
                  "text": "!- 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-51",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    1200.0,
                    190.0,
                    32.0,
                    22.0
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "obj-52",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    1200.0,
                    225.0,
                    43.0,
                    22.0
                  ],
                  "text": "+~ 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    1070.0,
                    90.0,
                    220.0,
                    20.0
                  ],
                  "text": "CENTER -1..1, constrained by Depth"
                }
              },
              {
                "box": {
                  "id": "diagonal-offset",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    "float"
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
                      100.0,
                      100.0,
                      920.0,
                      540.0
                    ],
                    "boxes": [
                      {
                        "box": {
                          "comment": "",
                          "id": "phase",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            30.0,
                            30.0,
                            30.0,
                            22.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "offset",
                          "index": 2,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            400.0,
                            30.0,
                            30.0,
                            22.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "unit",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            30.0,
                            80.0,
                            240.0,
                            22.0
                          ],
                          "text": "/ 1000."
                        }
                      },
                      {
                        "box": {
                          "id": "pair",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            30.0,
                            125.0,
                            240.0,
                            22.0
                          ],
                          "text": "pak 0. 0.5"
                        }
                      },
                      {
                        "box": {
                          "id": "un",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "float",
                            "float"
                          ],
                          "patching_rect": [
                            30.0,
                            170.0,
                            240.0,
                            22.0
                          ],
                          "text": "unpack 0. 0."
                        }
                      },
                      {
                        "box": {
                          "id": "x",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            30.0,
                            240.0,
                            410.0,
                            22.0
                          ],
                          "text": "expr 1000.*(max(0. \\, 1.-2.*$f2)+$f1*(1.-abs(2.*$f2-1.)))"
                        }
                      },
                      {
                        "box": {
                          "id": "ya",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            450.0,
                            240.0,
                            410.0,
                            22.0
                          ],
                          "text": "expr 1000.*(max(0. \\, 2.*$f2-1.)+$f1*(1.-abs(2.*$f2-1.)))"
                        }
                      },
                      {
                        "box": {
                          "id": "yb",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            "float"
                          ],
                          "patching_rect": [
                            700.0,
                            300.0,
                            240.0,
                            22.0
                          ],
                          "text": "!- 1000."
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "out0",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            30.0,
                            370.0,
                            30.0,
                            22.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "out1",
                          "index": 2,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            450.0,
                            370.0,
                            30.0,
                            22.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "out2",
                          "index": 3,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            700.0,
                            370.0,
                            30.0,
                            22.0
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note",
                          "linecount": 3,
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            30.0,
                            425.0,
                            441.0,
                            47.0
                          ],
                          "text": "Offset 0.5 = ursprüngliche Diagonale. Offset 0/1 = Eckpunkt.\nDie gerade Strecke wird an den Feldgrenzen verkürzt, nicht am Rand abgeknickt.\nEine Periode durchläuft die gesamte verbleibende Strecke."
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "pair",
                            1
                          ],
                          "source": [
                            "offset",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "un",
                            0
                          ],
                          "source": [
                            "pair",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "unit",
                            0
                          ],
                          "source": [
                            "phase",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "x",
                            1
                          ],
                          "order": 1,
                          "source": [
                            "un",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "x",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "un",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ya",
                            1
                          ],
                          "order": 0,
                          "source": [
                            "un",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ya",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "un",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pair",
                            0
                          ],
                          "source": [
                            "unit",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "out0",
                            0
                          ],
                          "source": [
                            "x",
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
                          "order": 1,
                          "source": [
                            "ya",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "yb",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "ya",
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
                            "yb",
                            0
                          ]
                        }
                      }
                    ]
                  },
                  "patching_rect": [
                    194.75,
                    339.0,
                    180.0,
                    22.0
                  ],
                  "text": "p Diagonal_Offset"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-10",
                    4
                  ],
                  "order": 0,
                  "source": [
                    "diagonal-offset",
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
                  "order": 1,
                  "source": [
                    "diagonal-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-11",
                    4
                  ],
                  "source": [
                    "diagonal-offset",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-11",
                    3
                  ],
                  "source": [
                    "diagonal-offset",
                    1
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
                    "obj-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-37",
                    1
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
                    "obj-38",
                    1
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
                    "obj-36",
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
                    "obj-9",
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
                    "obj-23",
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
                    "obj-21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-25",
                    0
                  ],
                  "order": 1,
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
                  "order": 0,
                  "source": [
                    "obj-22",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-25",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "obj-23",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-45",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-23",
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
                  "order": 1,
                  "source": [
                    "obj-24",
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
                  "order": 0,
                  "source": [
                    "obj-24",
                    0
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
                    "obj-25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-27",
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
                    "obj-28",
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
                    "obj-34",
                    4
                  ],
                  "order": 0,
                  "source": [
                    "obj-28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-34",
                    3
                  ],
                  "order": 1,
                  "source": [
                    "obj-28",
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
                  "order": 2,
                  "source": [
                    "obj-28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-30",
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
                    "obj-7",
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
                    "obj-31",
                    0
                  ],
                  "source": [
                    "obj-30",
                    0
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
                    "obj-31",
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
                    "obj-35",
                    3
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
                    "obj-35",
                    2
                  ],
                  "order": 2,
                  "source": [
                    "obj-32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    4
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
                    "obj-37",
                    2
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
                    "obj-38",
                    2
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
                    "obj-37",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-36",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-38",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-36",
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
                    "obj-37",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-55",
                    0
                  ],
                  "source": [
                    "obj-38",
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
                  "order": 0,
                  "source": [
                    "obj-4",
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
                  "order": 1,
                  "source": [
                    "obj-4",
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
                    "obj-41",
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
                    "obj-42",
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
                    "obj-43",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-46",
                    0
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
                    "obj-46",
                    1
                  ],
                  "source": [
                    "obj-45",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-47",
                    0
                  ],
                  "source": [
                    "obj-46",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-26",
                    1
                  ],
                  "source": [
                    "obj-47",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-49",
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
                    "obj-51",
                    0
                  ],
                  "source": [
                    "obj-49",
                    0
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
                    "obj-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-51",
                    1
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
                    "obj-52",
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
                    "obj-30",
                    1
                  ],
                  "source": [
                    "obj-52",
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
                    "obj-54",
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
                    "obj-55",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "diagonal-offset",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-10",
                    1
                  ],
                  "order": 2,
                  "source": [
                    "obj-6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-11",
                    2
                  ],
                  "order": 0,
                  "source": [
                    "obj-6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "diagonal-offset",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "obj-7",
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
                  "order": 0,
                  "source": [
                    "obj-7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-10",
                    2
                  ],
                  "order": 3,
                  "source": [
                    "obj-8",
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
                  "order": 2,
                  "source": [
                    "obj-8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-34",
                    2
                  ],
                  "order": 1,
                  "source": [
                    "obj-8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-35",
                    1
                  ],
                  "order": 0,
                  "source": [
                    "obj-8",
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
                  "order": 3,
                  "source": [
                    "obj-9",
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
                  "order": 2,
                  "source": [
                    "obj-9",
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
                  "order": 1,
                  "source": [
                    "obj-9",
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
                  "order": 0,
                  "source": [
                    "obj-9",
                    0
                  ]
                }
              }
            ],
            "patchlinecolor": [
              0.30980392156862746,
              0.30980392156862746,
              0.30980392156862746,
              1.0
            ],
            "bgcolor": [
              0.6470588235294118,
              0.6470588235294118,
              0.6470588235294118,
              1.0
            ],
            "editing_bgcolor": [
              0.6470588235294118,
              0.6470588235294118,
              0.6470588235294118,
              1.0
            ]
          },
          "patching_rect": [
            185.869562625885,
            282.60869216918945,
            102.0,
            22.0
          ],
          "saved_object_attributes": {
            "editing_bgcolor": [
              0.6470588235294118,
              0.6470588235294118,
              0.6470588235294118,
              1.0
            ],
            "locked_bgcolor": [
              0.6470588235294118,
              0.6470588235294118,
              0.6470588235294118,
              1.0
            ],
            "patchlinecolor": [
              0.30980392156862746,
              0.30980392156862746,
              0.30980392156862746,
              1.0
            ]
          },
          "text": "p Linear Traverse"
        }
      },
      {
        "box": {
          "activecolor": [
            0.686274509803922,
            0.0,
            0.0,
            1.0
          ],
          "bgcolor": [
            0.14901960784313725,
            0.14901960784313725,
            0.14901960784313725,
            1.0
          ],
          "disabled": [
            0,
            0
          ],
          "elementcolor": [
            0.631372549019608,
            0.631372549019608,
            0.631372549019608,
            1.0
          ],
          "id": "param-reset-6fc2373a02b5",
          "itemtype": 0,
          "maxclass": "radiogroup",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": 14,
          "outlettype": [
            ""
          ],
          "parameter_enable": 1,
          "patching_rect": [
            348.913037776947,
            292.3913006782532,
            24.0,
            30.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            81.4432944059372,
            24.0,
            30.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "0",
                "1"
              ],
              "parameter_longname": "Traverse Motion Type[3]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Trav Type",
              "parameter_type": 2
            }
          },
          "size": 2,
          "value": 0,
          "varname": "reset_traverse_motion_type"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.9803921568627451,
            0.9803921568627451,
            0.9803921568627451,
            0.0
          ],
          "id": "obj-202",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            378.2608633041382,
            298.91303968429565,
            125.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            23.711338877677917,
            79.3814388513565,
            36.0,
            33.0
          ],
          "text": "Tra / Pen"
        }
      },
      {
        "box": {
          "id": "obj-203",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            532.6086864471436,
            136.95652103424072,
            80.0,
            22.0
          ],
          "text": "loadmess 0.5"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-ac1690e7d735",
          "maxclass": "flonum",
          "maximum": 0.5,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            503.2608609199524,
            174.99999856948853,
            50.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            70.10308885574341,
            19.58762776851654,
            36.32450342178345,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Pendulum X Depth[3]",
              "parameter_mmax": 0.5,
              "parameter_modmode": 3,
              "parameter_shortname": "Pend X Depth",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_pendulum_x_depth"
        }
      },
      {
        "box": {
          "id": "obj-205",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            558.6956424713135,
            167.39130306243896,
            100.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            109.27834439277649,
            19.58762776851654,
            55.0,
            20.0
          ],
          "text": "X Depth "
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-2feb69c2d089",
          "maxclass": "flonum",
          "maximum": 0.5,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            503.2608609199524,
            210.86956310272217,
            50.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            70.10308885574341,
            42.268038868904114,
            36.32450342178345,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Pendulum Y Depth[3]",
              "parameter_mmax": 0.5,
              "parameter_modmode": 3,
              "parameter_shortname": "Pend Y Depth",
              "parameter_type": 0
            }
          },
          "varname": "reset_pendulum_y_depth"
        }
      },
      {
        "box": {
          "id": "obj-207",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            558.6956424713135,
            210.86956310272217,
            100.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            109.27834439277649,
            44.3298944234848,
            54.00000160932541,
            20.0
          ],
          "text": "Y Depth"
        }
      },
      {
        "box": {
          "id": "obj-208",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            348.913037776947,
            134.78260803222656,
            78.0,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-27c3249ea70b",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": -1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            320.65216875076294,
            180.43478107452393,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            67.01030552387238,
            65.97937774658203,
            40.96026539802551,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Pendulum X Center[3]",
              "parameter_mmax": 1.0,
              "parameter_mmin": -1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Pend X Center",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_pendulum_x_center"
        }
      },
      {
        "box": {
          "id": "obj-210",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            380.43477630615234,
            176.0869550704956,
            110.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            110.30927217006683,
            67.01030552387238,
            58.01527118682861,
            20.0
          ],
          "text": "X Center"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-452b591137a5",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": -1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            320.65216875076294,
            214.1304326057434,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            67.01030552387238,
            88.6597888469696,
            40.96026539802551,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Pendulum Y Center[3]",
              "parameter_mmax": 1.0,
              "parameter_mmin": -1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Pend Y Center",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_pendulum_y_center"
        }
      },
      {
        "box": {
          "id": "obj-212",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            380.43477630615234,
            223.91304111480713,
            110.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            109.27834439277649,
            90.7216444015503,
            58.77863001823425,
            20.0
          ],
          "text": "Y Center"
        }
      },
      {
        "box": {
          "angle": 270.0,
          "bgcolor": [
            0.7764705882352941,
            0.7764705882352941,
            0.7764705882352941,
            1.0
          ],
          "id": "obj-3",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            100.0,
            598.0392527580261,
            358.8235516548157
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            -2.0618555545806885,
            167.38791060447693,
            112.05298781394958
          ],
          "proportion": 0.5
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-9",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            148.91302719082643,
            39.99999787989805,
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
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            193.4782431908264,
            39.99999787989805,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-11",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            202.17392219082643,
            518.823575879898,
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
            "obj-8",
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
            "param-reset-6fc2373a02b5",
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
            "obj-193",
            1
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
            "param-reset-fc19e33df3b6",
            0
          ],
          "source": [
            "obj-188",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-237",
            1
          ],
          "source": [
            "obj-193",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-237",
            0
          ],
          "source": [
            "obj-193",
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
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-2feb69c2d089",
            0
          ],
          "order": 0,
          "source": [
            "obj-203",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-ac1690e7d735",
            0
          ],
          "order": 1,
          "source": [
            "obj-203",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-27c3249ea70b",
            0
          ],
          "order": 1,
          "source": [
            "obj-208",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-452b591137a5",
            0
          ],
          "order": 0,
          "source": [
            "obj-208",
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
            "obj-237",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-193",
            2
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
            "obj-27",
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
            "obj-5",
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
            "obj-7",
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
            "obj-18",
            1
          ],
          "order": 1,
          "source": [
            "param-reset-00565ad4ff48",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-193",
            1
          ],
          "order": 0,
          "source": [
            "param-reset-00565ad4ff48",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-193",
            6
          ],
          "source": [
            "param-reset-27c3249ea70b",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-193",
            5
          ],
          "source": [
            "param-reset-2feb69c2d089",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-193",
            0
          ],
          "source": [
            "param-reset-447e43e9d03c",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-193",
            7
          ],
          "source": [
            "param-reset-452b591137a5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-193",
            3
          ],
          "source": [
            "param-reset-6fc2373a02b5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-193",
            4
          ],
          "source": [
            "param-reset-ac1690e7d735",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-193",
            2
          ],
          "order": 0,
          "source": [
            "param-reset-fc19e33df3b6",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            1
          ],
          "order": 1,
          "source": [
            "param-reset-fc19e33df3b6",
            0
          ]
        }
      }
    ]
  }
}
