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
          "id": "obj-6",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            118.76623439788818,
            175.3593122959137,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            46.04668891429901,
            20.0
          ],
          "text": "Circle",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-236",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            114.76623439788818,
            294.3593122959137,
            41.0,
            22.0
          ],
          "text": "pak f f"
        }
      },
      {
        "box": {
          "id": "obj-178",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            102.76623439788818,
            226.3593122959137,
            44.68085074424744,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            16.568047761917114,
            30.081300795078278,
            20.0
          ],
          "text": "freq"
        }
      },
      {
        "box": {
          "id": "obj-148",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            227.76623439788818,
            226.3593122959137,
            61.97183179855347,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            102.95858252048492,
            15.384615778923035,
            24.503313302993774,
            20.0
          ],
          "text": "Y "
        }
      },
      {
        "box": {
          "id": "obj-147",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            178.76623439788818,
            226.3593122959137,
            33.80281734466553,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            50.88757526874542,
            15.384615778923035,
            33.80281734466553,
            20.0
          ],
          "text": "X"
        }
      },
      {
        "box": {
          "id": "obj-145",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            159.76623439788818,
            149.3593122959137,
            80.0,
            22.0
          ],
          "text": "loadmess 0.5"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-ca518553bf1d",
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
            214.76623439788818,
            205.3593122959137,
            50.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            101.28206408023834,
            34.61538898944855,
            50.0,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Circle Y Depth[3]",
              "parameter_mmax": 0.5,
              "parameter_modmode": 3,
              "parameter_shortname": "Circ Y Depth",
              "parameter_type": 0
            }
          },
          "varname": "reset_circle_y_depth"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-267e95da453e",
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
            159.76623439788818,
            205.3593122959137,
            50.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            50.000006318092346,
            34.61538898944855,
            50.0,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Circle X Depth[3]",
              "parameter_mmax": 0.5,
              "parameter_modmode": 3,
              "parameter_shortname": "Circ X Depth",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_circle_x_depth"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "param-reset-29dc8aaa40f8",
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
            101.76623439788818,
            205.3593122959137,
            50.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            1.28205144405365,
            34.61538898944855,
            43.90243899822235,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Circle Frequency[3]",
              "parameter_mmax": 20.0,
              "parameter_mmin": -20.0,
              "parameter_modmode": 0,
              "parameter_shortname": "Circ Freq",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "reset_circle_frequency"
        }
      },
      {
        "box": {
          "id": "obj-135",
          "maxclass": "newobj",
          "numinlets": 3,
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
              -1378.0,
              172.0,
              1344.0,
              898.0
            ],
            "boxes": [
              {
                "box": {
                  "comment": "",
                  "id": "obj-5",
                  "index": 3,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    329.0,
                    270.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-4",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    236.0,
                    270.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    288.8876556158066,
                    389.85507571697235,
                    32.0,
                    22.0
                  ],
                  "text": "0.25"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-18",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    190.0,
                    656.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-17",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    124.0,
                    656.0,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    190.0,
                    561.0,
                    81.0,
                    22.0
                  ],
                  "text": "snapshot~ 30"
                }
              },
              {
                "box": {
                  "id": "obj-10",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    124.0,
                    532.0,
                    81.0,
                    22.0
                  ],
                  "text": "snapshot~ 30"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    189.88765561580658,
                    421.2938202023506,
                    118.0,
                    22.0
                  ],
                  "text": "cycle~ @phase 0.25"
                }
              },
              {
                "box": {
                  "id": "obj-38",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "float"
                  ],
                  "patching_rect": [
                    127.88461965322495,
                    335.9550830125809,
                    29.5,
                    22.0
                  ],
                  "text": "f"
                }
              },
              {
                "box": {
                  "id": "obj-156",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    127.88461965322495,
                    417.3077062368393,
                    43.0,
                    22.0
                  ],
                  "text": "cycle~"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-103",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    127.88461965322495,
                    270.19231671094894,
                    30.0,
                    30.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-154",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    127.88461965322495,
                    490.1252836585045,
                    43.0,
                    22.0
                  ],
                  "text": "+~ 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-155",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    127.88461965322495,
                    456.1252836585045,
                    40.0,
                    22.0
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    189.88765561580658,
                    490.1252836585045,
                    43.0,
                    22.0
                  ],
                  "text": "+~ 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    189.88765561580658,
                    456.1252836585045,
                    40.0,
                    22.0
                  ],
                  "text": "*~ 0.5"
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
                    "obj-1",
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
                    "obj-10",
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
                  "source": [
                    "obj-103",
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
                    "obj-14",
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
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-154",
                    0
                  ],
                  "source": [
                    "obj-155",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-155",
                    0
                  ],
                  "source": [
                    "obj-156",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    1
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
                    "obj-1",
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
                    "obj-156",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-38",
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
                    "obj-38",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-155",
                    1
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
                    "obj-3",
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
                    "obj-3",
                    0
                  ],
                  "source": [
                    "obj-8",
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
            114.76623439788818,
            253.3593122959137,
            113.76145839691162,
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
          "text": "p Circle"
        }
      },
      {
        "box": {
          "angle": 270.0,
          "bgcolor": [
            0.8392156862745098,
            0.8431372549019608,
            0.8901960784313725,
            1.0
          ],
          "id": "obj-2",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            100.0,
            255.0,
            233.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            151.28206408023834,
            56.61538898944855
          ],
          "proportion": 0.5
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-3",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            118.76623439788818,
            40.00000618103027,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-4",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            114.76623439788818,
            392.4675041810302,
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
            "obj-236",
            1
          ],
          "source": [
            "obj-135",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-236",
            0
          ],
          "source": [
            "obj-135",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-267e95da453e",
            0
          ],
          "order": 1,
          "source": [
            "obj-145",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "param-reset-ca518553bf1d",
            0
          ],
          "order": 0,
          "source": [
            "obj-145",
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
            "obj-236",
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
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-135",
            1
          ],
          "source": [
            "param-reset-267e95da453e",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-135",
            0
          ],
          "source": [
            "param-reset-29dc8aaa40f8",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-135",
            2
          ],
          "source": [
            "param-reset-ca518553bf1d",
            0
          ]
        }
      }
    ]
  }
}
