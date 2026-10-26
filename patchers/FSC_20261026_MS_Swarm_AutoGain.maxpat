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
      100.0,
      100.0,
      831.0,
      470.0
    ],
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            12.0,
            420.0,
            20.0
          ],
          "text": "Automatische Schwarmmasse · 1 Stimme −6 dB · 50 Stimmen +8 dB"
        }
      },
      {
        "box": {
          "comment": "Anzahl aktiver Fliegen 0–50",
          "id": "count",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20.0,
            50.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "calc",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            20.0,
            95.0,
            121.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "FSC_20261026_swarm_autogain.js",
            "parameter_enable": 0
          },
          "text": "js FSC_20261026_swarm_autogain.js"
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
            20.0,
            130.0,
            82.0,
            22.0
          ],
          "text": "pack 0. 200"
        }
      },
      {
        "box": {
          "id": "line",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "bang"
          ],
          "patching_rect": [
            20.0,
            165.0,
            58.0,
            22.0
          ],
          "text": "line~ 0."
        }
      },
      {
        "box": {
          "format": 6,
          "id": "dbout",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            110.0,
            130.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "dblabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            185.0,
            131.0,
            110.0,
            20.0
          ],
          "text": "Korrektur dB"
        }
      },
      {
        "box": {
          "comment": "Audiokanal 1",
          "id": "in1",
          "index": 2,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            220.0,
            50.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "mul1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            124.0,
            346.0,
            35.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "comment": "Audiokanal 1",
          "id": "out1",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            124.0,
            396.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "Audiokanal 2",
          "id": "in2",
          "index": 3,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            320.0,
            50.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "mul2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            224.0,
            346.0,
            35.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "comment": "Audiokanal 2",
          "id": "out2",
          "index": 2,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            224.0,
            396.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "Audiokanal 3",
          "id": "in3",
          "index": 4,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            420.0,
            50.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "mul3",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            324.0,
            346.0,
            35.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "comment": "Audiokanal 3",
          "id": "out3",
          "index": 3,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            324.0,
            396.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "Audiokanal 4",
          "id": "in4",
          "index": 5,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            520.0,
            50.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "mul4",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            424.0,
            346.0,
            35.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "comment": "Audiokanal 4",
          "id": "out4",
          "index": 4,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            424.0,
            396.0,
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
            "dbout",
            0
          ],
          "source": [
            "calc",
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
            "calc",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "calc",
            0
          ],
          "source": [
            "count",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mul1",
            0
          ],
          "source": [
            "in1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mul2",
            0
          ],
          "source": [
            "in2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mul3",
            0
          ],
          "source": [
            "in3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mul4",
            0
          ],
          "source": [
            "in4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mul1",
            1
          ],
          "order": 3,
          "source": [
            "line",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mul2",
            1
          ],
          "order": 2,
          "source": [
            "line",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mul3",
            1
          ],
          "order": 1,
          "source": [
            "line",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mul4",
            1
          ],
          "order": 0,
          "source": [
            "line",
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
          "source": [
            "mul1",
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
            "mul2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out3",
            0
          ],
          "source": [
            "mul3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out4",
            0
          ],
          "source": [
            "mul4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "line",
            0
          ],
          "source": [
            "pack",
            0
          ]
        }
      }
    ]
  }
}
