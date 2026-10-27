{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "rect": [
      100.0,
      100.0,
      1360.0,
      960.0
    ],
    "bglocked": 0,
    "default_fontsize": 12.0,
    "default_fontname": "Arial",
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "text": "XY-HISTORIE — bei Reset Ausgaben stummschalten, neue Position zweimal einlesen, dann wieder freigeben",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            10.0,
            1200.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "xy",
          "maxclass": "inlet",
          "text": "",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20.0,
            70.0,
            55.0,
            22.0
          ],
          "index": 1
        }
      },
      {
        "box": {
          "id": "reset",
          "maxclass": "inlet",
          "text": "",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            400.0,
            70.0,
            55.0,
            22.0
          ],
          "index": 2
        }
      },
      {
        "box": {
          "id": "xyout",
          "maxclass": "outlet",
          "text": "",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            550.0,
            55.0,
            22.0
          ],
          "index": 1
        }
      },
      {
        "box": {
          "id": "gateout",
          "maxclass": "outlet",
          "text": "",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            400.0,
            550.0,
            55.0,
            22.0
          ],
          "index": 2
        }
      },
      {
        "box": {
          "id": "zeroout",
          "maxclass": "outlet",
          "text": "",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            800.0,
            550.0,
            55.0,
            22.0
          ],
          "index": 3
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "text": "route reset rebase",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            400.0,
            130.0,
            115.2,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "initreset",
          "maxclass": "newobj",
          "text": "t b b b",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            400.0,
            190.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "one",
          "maxclass": "message",
          "text": "1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            400.0,
            240.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "zero",
          "maxclass": "message",
          "text": "0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            550.0,
            240.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "zerovalue",
          "maxclass": "message",
          "text": "0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            800.0,
            240.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pending",
          "maxclass": "newobj",
          "text": "i 0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            200.0,
            240.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "inorder",
          "maxclass": "newobj",
          "text": "t l b",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20.0,
            130.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "index",
          "maxclass": "newobj",
          "text": "+ 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            200.0,
            290.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "switch",
          "maxclass": "newobj",
          "text": "gate 2",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20.0,
            335.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "prime",
          "maxclass": "newobj",
          "text": "t b l l",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            200.0,
            390.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "endprime",
          "maxclass": "newobj",
          "text": "t b b",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            400.0,
            430.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "clear",
          "maxclass": "message",
          "text": "0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            550.0,
            470.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "open",
          "maxclass": "message",
          "text": "1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            400.0,
            470.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "load",
          "maxclass": "newobj",
          "text": "loadbang",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            850.0,
            100.0,
            55.0,
            22.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "reset",
            0
          ],
          "destination": [
            "route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            0
          ],
          "destination": [
            "initreset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            1
          ],
          "destination": [
            "initreset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "initreset",
            2
          ],
          "destination": [
            "one",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "initreset",
            1
          ],
          "destination": [
            "zero",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "initreset",
            0
          ],
          "destination": [
            "zerovalue",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "one",
            0
          ],
          "destination": [
            "pending",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "zero",
            0
          ],
          "destination": [
            "gateout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "zerovalue",
            0
          ],
          "destination": [
            "zeroout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "xy",
            0
          ],
          "destination": [
            "inorder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "inorder",
            1
          ],
          "destination": [
            "pending",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pending",
            0
          ],
          "destination": [
            "index",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "index",
            0
          ],
          "destination": [
            "switch",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "inorder",
            0
          ],
          "destination": [
            "switch",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "switch",
            0
          ],
          "destination": [
            "xyout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "switch",
            1
          ],
          "destination": [
            "prime",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "prime",
            2
          ],
          "destination": [
            "xyout",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "prime",
            1
          ],
          "destination": [
            "xyout",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "prime",
            0
          ],
          "destination": [
            "endprime",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "endprime",
            1
          ],
          "destination": [
            "clear",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clear",
            0
          ],
          "destination": [
            "pending",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "endprime",
            0
          ],
          "destination": [
            "open",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "open",
            0
          ],
          "destination": [
            "gateout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "load",
            0
          ],
          "destination": [
            "open",
            0
          ]
        }
      }
    ]
  }
}
