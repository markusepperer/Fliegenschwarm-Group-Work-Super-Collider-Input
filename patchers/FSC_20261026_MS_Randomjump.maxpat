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
          "bgcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "id": "obj-9",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            216.36870169639587,
            100.0,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            87.41722583770752,
            20.0
          ],
          "text": "Random Jump"
        }
      },
      {
        "box": {
          "id": "obj-238",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            146.20378267765045,
            419.90124773979187,
            41.0,
            22.0
          ],
          "text": "pak f f"
        }
      },
      {
        "box": {
          "fontsize": 9.0,
          "id": "obj-200",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            107.25609123706818,
            163.0,
            54.0,
            17.0
          ],
          "presentation": 1,
          "presentation_rect": [
            46.0,
            23.0,
            42.0,
            17.0
          ],
          "text": "#offset x"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-76c9a19e6a75",
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
            114.25609123706818,
            188.0,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            -1.0,
            22.0,
            44.29252088069916,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Jump X Band[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Jump X Band",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_jump_x_band"
        }
      },
      {
        "box": {
          "fontsize": 9.0,
          "id": "obj-199",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            354.0,
            156.0,
            73.0,
            17.0
          ],
          "presentation": 1,
          "presentation_rect": [
            141.0,
            26.0,
            43.0,
            17.0
          ],
          "text": "#offset y"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-6dcd798e0a7d",
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
            356.0,
            184.0,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            96.0,
            25.0,
            43.11926245689392,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Jump Y Band[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Jump Y Band",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_jump_y_band"
        }
      },
      {
        "box": {
          "checkedcolor": [
            0.168627450980392,
            1.0,
            0.0,
            1.0
          ],
          "id": "param-reset-cfcff74c285d",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            135.75611002902974,
            91.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            105.0,
            -1.0,
            24.0,
            24.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_longname": "Random Jump On[3]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Jump On",
              "parameter_type": 2
            }
          },
          "uncheckedcolor": [
            1.0,
            0.0,
            0.0,
            1.0
          ],
          "varname": "reset_random_jump_on"
        }
      },
      {
        "box": {
          "id": "o2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            69.0,
            93.0,
            60.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            141.0,
            0.0,
            54.961835861206055,
            20.0
          ],
          "text": "On / Off"
        }
      },
      {
        "box": {
          "fontsize": 12.0,
          "id": "param-reset-0e710f372471",
          "maxclass": "number",
          "maximum": 5000,
          "minimum": 20,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            54.0,
            283.0,
            61.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            -1.0,
            99.0,
            50.0,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Jump Speed[3]",
              "parameter_mmax": 5000.0,
              "parameter_mmin": 20.0,
              "parameter_modmode": 0,
              "parameter_shortname": "Jump Speed",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_jump_speed"
        }
      },
      {
        "box": {
          "id": "o4",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            53.0,
            242.0,
            63.0,
            35.0
          ],
          "text": "loadmess 500"
        }
      },
      {
        "box": {
          "fontsize": 12.0,
          "id": "o5",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            49.0,
            309.0,
            70.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            53.124994933605194,
            100.0,
            64.0,
            20.0
          ],
          "text": "Speed/ms"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-9d6d8f599968",
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
            159.84696209430695,
            218.840580701828,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            -1.0,
            47.0,
            44.29252088069916,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Jump X Min[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Jump X Min",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_jump_x_min"
        }
      },
      {
        "box": {
          "id": "o7",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            174.71645426750183,
            242.0,
            42.97465682029724,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            46.0,
            48.0,
            42.97465682029724,
            20.0
          ],
          "text": "X Min"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-9b914d5da6e7",
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
            168.70378267765045,
            316.0,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            -1.0,
            73.0,
            44.29252088069916,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Jump X Max[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Jump X Max",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_jump_x_max"
        }
      },
      {
        "box": {
          "id": "o9",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            228.70378267765045,
            316.0,
            46.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            44.0,
            74.0,
            46.0,
            20.0
          ],
          "text": "X Max"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-d6b388facf85",
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
            268.5426151752472,
            220.28985607624054,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            96.0,
            49.0,
            43.11926245689392,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Jump Y Min[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Jump Y Min",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_jump_y_min"
        }
      },
      {
        "box": {
          "id": "o11",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            281.0426151752472,
            246.0,
            50.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            141.0,
            52.0,
            50.0,
            20.0
          ],
          "text": "Y Min"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-ea26bda53025",
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
            278.70378267765045,
            316.0,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            96.0,
            75.0,
            43.11926245689392,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Jump Y Max[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Jump Y Max",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_jump_y_max"
        }
      },
      {
        "box": {
          "id": "o13",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            339.70378267765045,
            316.0,
            50.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            141.0,
            78.0,
            50.0,
            20.0
          ],
          "text": "Y Max"
        }
      },
      {
        "box": {
          "id": "o14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            177.22160732746124,
            184.0,
            75.0,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "id": "o15",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            168.70378267765045,
            283.0,
            75.0,
            22.0
          ],
          "text": "loadmess 1."
        }
      },
      {
        "box": {
          "id": "o16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            268.5426151752472,
            184.0,
            75.0,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "id": "o17",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            278.70378267765045,
            283.0,
            75.0,
            22.0
          ],
          "text": "loadmess 1."
        }
      },
      {
        "box": {
          "id": "o18",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 2,
          "outlettype": [
            "",
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
              100.0,
              100.0,
              900.0,
              600.0
            ],
            "boxes": [
              {
                "box": {
                  "comment": "On/Off",
                  "id": "i1",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    60.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "Speed ms",
                  "id": "i2",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    160.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "X Min 0..1",
                  "id": "i3",
                  "index": 3,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    300.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "X Max 0..1",
                  "id": "i4",
                  "index": 4,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "Y Min 0..1",
                  "id": "i5",
                  "index": 5,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    540.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "Y Max 0..1",
                  "id": "i6",
                  "index": 6,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    640.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "m1",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    80.0,
                    120.0,
                    65.0,
                    22.0
                  ],
                  "text": "metro 500"
                }
              },
              {
                "box": {
                  "id": "m2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "bang",
                    "bang"
                  ],
                  "patching_rect": [
                    80.0,
                    165.0,
                    45.0,
                    22.0
                  ],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "x1",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    250.0,
                    220.0,
                    80.0,
                    22.0
                  ],
                  "text": "random 1000"
                }
              },
              {
                "box": {
                  "id": "x2",
                  "maxclass": "newobj",
                  "numinlets": 6,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    250.0,
                    265.0,
                    115.0,
                    22.0
                  ],
                  "text": "scale 0 999 0. 1."
                }
              },
              {
                "box": {
                  "comment": "X 0..1000",
                  "id": "xo",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    260.0,
                    380.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "y1",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520.0,
                    220.0,
                    80.0,
                    22.0
                  ],
                  "text": "random 1000"
                }
              },
              {
                "box": {
                  "id": "y2",
                  "maxclass": "newobj",
                  "numinlets": 6,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520.0,
                    265.0,
                    115.0,
                    22.0
                  ],
                  "text": "scale 0 999 0. 1."
                }
              },
              {
                "box": {
                  "comment": "Y 0..1000",
                  "id": "yo",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    530.0,
                    380.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "c1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    80.0,
                    425.0,
                    310.0,
                    20.0
                  ],
                  "text": "Every metro bang chooses a new X and Y position."
                }
              },
              {
                "box": {
                  "id": "c2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    80.0,
                    455.0,
                    380.0,
                    20.0
                  ],
                  "text": "Ranges are normalized 0..1; outputs are 0..1000 for pictslider."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "m1",
                    0
                  ],
                  "source": [
                    "i1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "m1",
                    1
                  ],
                  "source": [
                    "i2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "x2",
                    3
                  ],
                  "source": [
                    "i3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "x2",
                    4
                  ],
                  "source": [
                    "i4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "y2",
                    3
                  ],
                  "source": [
                    "i5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "y2",
                    4
                  ],
                  "source": [
                    "i6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "m2",
                    0
                  ],
                  "source": [
                    "m1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "x1",
                    0
                  ],
                  "source": [
                    "m2",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "y1",
                    0
                  ],
                  "source": [
                    "m2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "x2",
                    0
                  ],
                  "source": [
                    "x1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "xo",
                    0
                  ],
                  "source": [
                    "x2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "y2",
                    0
                  ],
                  "source": [
                    "y1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "yo",
                    0
                  ],
                  "source": [
                    "y2",
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
            146.0,
            369.43395841121674,
            152.0,
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
          "text": "p Random Jump"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-31",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            135.75611002902974,
            43.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-32",
          "index": 2,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            216.36870169639587,
            47.0,
            30.0,
            30.0
          ]
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
            146.20374202902985,
            501.90123946370693,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "angle": 270.0,
          "bgcolor": [
            0.6666666666666666,
            0.6666666666666666,
            0.6666666666666666,
            1.0
          ],
          "id": "obj-1",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            164.16666275262833,
            233.33332777023315,
            128.0,
            128.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            -20.83333283662796,
            191.0,
            140.83333283662796
          ],
          "proportion": 0.5
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "param-reset-9d6d8f599968",
            0
          ],
          "source": [
            "o14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-9b914d5da6e7",
            0
          ],
          "source": [
            "o15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-d6b388facf85",
            0
          ],
          "source": [
            "o16",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-ea26bda53025",
            0
          ],
          "source": [
            "o17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-238",
            1
          ],
          "source": [
            "o18",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-238",
            0
          ],
          "source": [
            "o18",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-0e710f372471",
            0
          ],
          "source": [
            "o4",
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
            "obj-238",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-cfcff74c285d",
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
            "obj-9",
            0
          ],
          "source": [
            "obj-32",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "o18",
            1
          ],
          "source": [
            "param-reset-0e710f372471",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-d6b388facf85",
            0
          ],
          "order": 1,
          "source": [
            "param-reset-6dcd798e0a7d",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-ea26bda53025",
            0
          ],
          "order": 0,
          "source": [
            "param-reset-6dcd798e0a7d",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-9b914d5da6e7",
            0
          ],
          "order": 0,
          "source": [
            "param-reset-76c9a19e6a75",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-9d6d8f599968",
            0
          ],
          "order": 1,
          "source": [
            "param-reset-76c9a19e6a75",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "o18",
            3
          ],
          "source": [
            "param-reset-9b914d5da6e7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "o18",
            2
          ],
          "source": [
            "param-reset-9d6d8f599968",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "o18",
            0
          ],
          "source": [
            "param-reset-cfcff74c285d",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "o18",
            4
          ],
          "source": [
            "param-reset-d6b388facf85",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "o18",
            5
          ],
          "source": [
            "param-reset-ea26bda53025",
            0
          ]
        }
      }
    ]
  }
}
