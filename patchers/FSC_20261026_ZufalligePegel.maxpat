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
      59.0,
      111.0,
      1344.0,
      900.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "randomgain-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            169.1176438331604,
            7.352941036224365,
            121.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            48.0,
            121.0,
            20.0
          ],
          "text": "ZUFÄLLIGE PEGEL"
        }
      },
      {
        "box": {
          "id": "randomgain-min-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.15369987487793,
            140.27275443077087,
            65.0,
            20.0
          ],
          "text": "Min. Pegel"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "randomgain-min",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            115.15369987487793,
            140.27275443077087,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            57.691489696502686,
            2.0,
            46.808510303497314,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "randomgain-min-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.15369987487793,
            167.27275443077087,
            120.0,
            22.0
          ],
          "text": "prepend gainmin"
        }
      },
      {
        "box": {
          "id": "randomgain-min-load",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            100.0,
            63.0,
            35.0
          ],
          "text": "loadmess 0.1"
        }
      },
      {
        "box": {
          "id": "randomgain-max-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.15369987487793,
            196.27275443077087,
            69.0,
            20.0
          ],
          "text": "Max. Pegel"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "randomgain-max",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            115.15369987487793,
            196.27275443077087,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            13.691489696502686,
            2.0,
            39.36170184612274,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "randomgain-max-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.15369987487793,
            224.27275443077087,
            120.0,
            22.0
          ],
          "text": "prepend gainmax"
        }
      },
      {
        "box": {
          "id": "randomgain-max-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            115.15369987487793,
            100.0,
            75.0,
            22.0
          ],
          "text": "loadmess 1."
        }
      },
      {
        "box": {
          "id": "randomgain-trigger",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.15369987487793,
            255.27275443077087,
            120.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            13.691489696502686,
            25.0,
            93.61702060699463,
            22.0
          ],
          "text": "randomizegain"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-60",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            44.15369987487793,
            337.27276339874265,
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
            "randomgain-max-pre",
            0
          ],
          "source": [
            "randomgain-max",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "randomgain-max",
            0
          ],
          "source": [
            "randomgain-max-load",
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
            "randomgain-max-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "randomgain-min-pre",
            0
          ],
          "source": [
            "randomgain-min",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "randomgain-min",
            0
          ],
          "source": [
            "randomgain-min-load",
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
            "randomgain-min-pre",
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
            "randomgain-trigger",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
