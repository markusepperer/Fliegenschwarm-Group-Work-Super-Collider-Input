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
          "comment": "",
          "id": "obj-5",
          "index": 2,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            290.0,
            47.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            396.66665720939636,
            229.99999451637268,
            42.97465682029724,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            135.0,
            25.0,
            42.97465682029724,
            20.0
          ],
          "text": "X/Y"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            286.80686926841736,
            234.13610064983368,
            42.97465682029724,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            43.0,
            25.0,
            42.97465682029724,
            20.0
          ],
          "text": "X/Y"
        }
      },
      {
        "box": {
          "id": "obj-1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            416.68620109558105,
            434.1666563153267,
            42.97465682029724,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            43.0,
            71.0,
            42.97465682029724,
            20.0
          ],
          "text": "Y Min"
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
          "id": "obj-12",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            218.69092667102814,
            197.67137479782104,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            91.93926727771759,
            20.0
          ],
          "text": "Random Glide"
        }
      },
      {
        "box": {
          "id": "obj-239",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            201.2996221780777,
            423.75833320617676,
            41.0,
            22.0
          ],
          "text": "pak f f"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-402c36597e23",
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
            228.54599905014038,
            233.13610064983368,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            24.0,
            42.201831340789795,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Glide X Band[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Glide X Band",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_glide_x_band"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-dd277dc6a420",
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
            336.0946831703186,
            228.9940887093544,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            92.0,
            24.0,
            39.44953799247742,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Glide Y Band[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Glide Y Band",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_glide_y_band"
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
          "id": "param-reset-f3d437073a82",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            73.67642080783844,
            237.25108528137207,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            107.0,
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
              "parameter_longname": "Random Glide On[3]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Glide On",
              "parameter_type": 2
            }
          },
          "uncheckedcolor": [
            1.0,
            0.0,
            0.0,
            1.0
          ],
          "varname": "reset_random_glide_on"
        }
      },
      {
        "box": {
          "id": "obj-219",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            67.0,
            201.0,
            60.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            135.0,
            1.0,
            48.81656801700592,
            20.0
          ],
          "text": "On/Off"
        }
      },
      {
        "box": {
          "fontsize": 10.0,
          "id": "param-reset-708d5bb84e23",
          "maxclass": "number",
          "maximum": 20000,
          "minimum": 20,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            118.69092583656311,
            352.74383985996246,
            55.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            92.0,
            93.0,
            40.0,
            20.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Glide Speed[3]",
              "parameter_mmax": 20000.0,
              "parameter_mmin": 20.0,
              "parameter_modmode": 0,
              "parameter_shortname": "Glide Speed",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_glide_speed"
        }
      },
      {
        "box": {
          "id": "obj-221",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            118.69092583656311,
            312.16412937641144,
            63.0,
            35.0
          ],
          "text": "loadmess 500"
        }
      },
      {
        "box": {
          "fontsize": 9.0,
          "id": "obj-222",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            118.69092583656311,
            378.33332431316376,
            55.0,
            17.0
          ],
          "presentation": 1,
          "presentation_rect": [
            135.0,
            95.0,
            50.0,
            17.0
          ],
          "text": "Speed ms"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-e30bbab07b07",
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
            208.54599905014038,
            293.32354950904846,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            47.0,
            42.201831340789795,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Glide X Min[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Glide X Min",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_glide_x_min"
        }
      },
      {
        "box": {
          "id": "obj-224",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            272.314115524292,
            293.32354950904846,
            42.97465682029724,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            43.0,
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
          "id": "param-reset-d9d26a2071ca",
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
            214.34310054779053,
            349.8452891111374,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            70.0,
            42.201831340789795,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Glide X Max[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Glide X Max",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_glide_x_max"
        }
      },
      {
        "box": {
          "id": "obj-226",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            273.76339089870453,
            351.2945644855499,
            46.0,
            20.0
          ],
          "text": "X Max"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-610e8ec0fdf4",
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
            320.1402028799057,
            293.32354950904846,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            92.0,
            47.0,
            40.36696910858154,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Glide Y Min[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Glide Y Min",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_glide_y_min"
        }
      },
      {
        "box": {
          "id": "obj-228",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            381.00976860523224,
            297.6713756322861,
            50.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            135.0,
            49.0,
            50.0,
            20.0
          ],
          "text": "Y Min"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-fa7cae4a2e46",
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
            325.93730437755585,
            349.8452891111374,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            92.0,
            70.0,
            39.44953799247742,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Glide Y Max[3]",
              "parameter_mmax": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "Glide Y Max",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_glide_y_max"
        }
      },
      {
        "box": {
          "id": "obj-230",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            383.9083193540573,
            351.2945644855499,
            50.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            135.0,
            71.0,
            50.0,
            20.0
          ],
          "text": "Y Max"
        }
      },
      {
        "box": {
          "id": "obj-231",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            208.54599905014038,
            267.2365927696228,
            75.0,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "id": "obj-232",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            214.34310054779053,
            323.75833237171173,
            75.0,
            22.0
          ],
          "text": "loadmess 1."
        }
      },
      {
        "box": {
          "id": "obj-233",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            320.1402028799057,
            264.33804202079773,
            75.0,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "id": "obj-234",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            325.93730437755585,
            322.3090569972992,
            75.0,
            22.0
          ],
          "text": "loadmess 1."
        }
      },
      {
        "box": {
          "id": "obj-235",
          "maxclass": "newobj",
          "numinlets": 7,
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
                  "comment": "X Glide 0..1000",
                  "id": "xo",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    260.0,
                    450.0,
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
                  "comment": "Y Glide 0..1000",
                  "id": "yo",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    530.0,
                    450.0,
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
                    495.0,
                    310.0,
                    20.0
                  ],
                  "text": "Every metro bang chooses a new X/Y target."
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
                    525.0,
                    430.0,
                    20.0
                  ],
                  "text": "Ranges stay identical to Random Jump; line interpolates to each target."
                }
              },
              {
                "box": {
                  "comment": "Glide Time ms",
                  "id": "i7",
                  "index": 7,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    740.0,
                    50.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "xpack",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    250.0,
                    345.0,
                    82.0,
                    22.0
                  ],
                  "text": "pack 0. 500"
                }
              },
              {
                "box": {
                  "id": "xline",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "patching_rect": [
                    250.0,
                    380.0,
                    48.0,
                    22.0
                  ],
                  "text": "line 0."
                }
              },
              {
                "box": {
                  "id": "ypack",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520.0,
                    345.0,
                    82.0,
                    22.0
                  ],
                  "text": "pack 0. 500"
                }
              },
              {
                "box": {
                  "id": "yline",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "patching_rect": [
                    520.0,
                    380.0,
                    48.0,
                    22.0
                  ],
                  "text": "line 0."
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
                    "xpack",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "i7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "ypack",
                    1
                  ],
                  "order": 0,
                  "source": [
                    "i7",
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
                    "xpack",
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
                    "xo",
                    0
                  ],
                  "source": [
                    "xline",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "xline",
                    0
                  ],
                  "source": [
                    "xpack",
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
                    "ypack",
                    0
                  ],
                  "source": [
                    "y2",
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
                    "yline",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "yline",
                    0
                  ],
                  "source": [
                    "ypack",
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
            201.2996221780777,
            393.3235503435135,
            100.0,
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
          "text": "p Random Glide"
        }
      },
      {
        "box": {
          "id": "obj-glide-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            109.99527359008789,
            217.96123003959656,
            83.0,
            22.0
          ],
          "text": "loadmess 500"
        }
      },
      {
        "box": {
          "fontsize": 10.0,
          "id": "param-reset-c608b5dbcbb2",
          "maxclass": "number",
          "maximum": 10000,
          "minimum": 20,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            109.99527359008789,
            248.39601290225983,
            55.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            93.0,
            39.0,
            20.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Random Glide Time[3]",
              "parameter_mmax": 10000.0,
              "parameter_mmin": 20.0,
              "parameter_modmode": 0,
              "parameter_shortname": "Glide Time",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_random_glide_time"
        }
      },
      {
        "box": {
          "fontsize": 9.0,
          "id": "obj-glide-comment",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            109.99527359008789,
            278.8307957649231,
            71.0,
            17.0
          ],
          "presentation": 1,
          "presentation_rect": [
            42.0,
            96.0,
            44.99843144416809,
            17.0
          ],
          "text": "Glide/ms"
        }
      },
      {
        "box": {
          "angle": 270.0,
          "bgcolor": [
            0.7607843137254902,
            0.7490196078431373,
            0.7215686274509804,
            1.0
          ],
          "id": "obj-4",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            100.0,
            365.68620109558105,
            377.6615915298462
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            -1.0,
            185.5029620528221,
            113.24260640144348
          ],
          "proportion": 0.5
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-26",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            137.0097948078385,
            39.999997389465335,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-28",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            201.2995898078384,
            537.6615643894653,
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
            "param-reset-708d5bb84e23",
            0
          ],
          "source": [
            "obj-221",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-e30bbab07b07",
            0
          ],
          "source": [
            "obj-231",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-d9d26a2071ca",
            0
          ],
          "source": [
            "obj-232",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-610e8ec0fdf4",
            0
          ],
          "source": [
            "obj-233",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-fa7cae4a2e46",
            0
          ],
          "source": [
            "obj-234",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-239",
            1
          ],
          "source": [
            "obj-235",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-239",
            0
          ],
          "source": [
            "obj-235",
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
            "obj-239",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-f3d437073a82",
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
            "obj-12",
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
            "param-reset-c608b5dbcbb2",
            0
          ],
          "source": [
            "obj-glide-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-d9d26a2071ca",
            0
          ],
          "order": 0,
          "source": [
            "param-reset-402c36597e23",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-e30bbab07b07",
            0
          ],
          "order": 1,
          "source": [
            "param-reset-402c36597e23",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-235",
            4
          ],
          "source": [
            "param-reset-610e8ec0fdf4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-235",
            1
          ],
          "source": [
            "param-reset-708d5bb84e23",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-235",
            6
          ],
          "source": [
            "param-reset-c608b5dbcbb2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-235",
            3
          ],
          "source": [
            "param-reset-d9d26a2071ca",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-610e8ec0fdf4",
            0
          ],
          "order": 1,
          "source": [
            "param-reset-dd277dc6a420",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-fa7cae4a2e46",
            0
          ],
          "order": 0,
          "source": [
            "param-reset-dd277dc6a420",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-235",
            2
          ],
          "source": [
            "param-reset-e30bbab07b07",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-235",
            0
          ],
          "source": [
            "param-reset-f3d437073a82",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-235",
            5
          ],
          "source": [
            "param-reset-fa7cae4a2e46",
            0
          ]
        }
      }
    ]
  }
}
