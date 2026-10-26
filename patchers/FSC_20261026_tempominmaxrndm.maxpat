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
          "id": "obj-35",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            168.94737267494202,
            161.20450937747955,
            68.96580648422241,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            67.0,
            49.0,
            71.29629510641098,
            20.0
          ],
          "text": "Tempomax"
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            156.65120708942413,
            71.57894992828369,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            -4.0,
            49.0,
            68.03371953964233,
            20.0
          ],
          "text": "Tempomin"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "randomtempo-min",
          "maxclass": "flonum",
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            182.9669975042343,
            60.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            2.0,
            26.0,
            52.77777689695358,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "randomtempo-min-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            208.2301563024521,
            109.0,
            22.0
          ],
          "text": "prepend tempomin"
        }
      },
      {
        "box": {
          "id": "randomtempo-min-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            130.33541667461395,
            82.0,
            22.0
          ],
          "text": "loadmess 0.7"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "randomtempo-max",
          "maxclass": "flonum",
          "maximum": 20.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            168.98244953155518,
            185.5634889602661,
            60.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            71.0,
            26.0,
            60.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "randomtempo-max-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            168.98244953155518,
            208.2301563024521,
            112.0,
            22.0
          ],
          "text": "prepend tempomax"
        }
      },
      {
        "box": {
          "id": "randomtempo-max-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            168.94737267494202,
            129.93190670013428,
            82.0,
            22.0
          ],
          "text": "loadmess 1.5"
        }
      },
      {
        "box": {
          "id": "randomtempo-trigger",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.98244953155518,
            100.0,
            118.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            14.0,
            0.0,
            100.0,
            22.0
          ],
          "text": "randomizetempo"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-63",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            103.98829640122983,
            290.2301588144989,
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
            "randomtempo-max-prepend",
            0
          ],
          "source": [
            "randomtempo-max",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "randomtempo-max",
            0
          ],
          "source": [
            "randomtempo-max-load",
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
            "randomtempo-max-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "randomtempo-min-prepend",
            0
          ],
          "source": [
            "randomtempo-min",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "randomtempo-min",
            0
          ],
          "source": [
            "randomtempo-min-load",
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
            "randomtempo-min-prepend",
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
            "randomtempo-trigger",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
