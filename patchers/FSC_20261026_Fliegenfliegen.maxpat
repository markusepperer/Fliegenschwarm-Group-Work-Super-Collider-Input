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
          "id": "obj-33",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            239.25618785619736,
            100.0,
            70.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "id": "voicecount-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            129.75206446647644,
            180.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            0.0,
            23.0,
            87.0,
            33.0
          ],
          "text": "Anzahl aktiver Fliegen"
        }
      },
      {
        "box": {
          "id": "voicecount",
          "maxclass": "number",
          "maximum": 50,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            153.71900528669357,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "voicecount-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            91.0,
            77.0,
            22.0
          ],
          "text": "loadmess 50"
        }
      },
      {
        "box": {
          "id": "swarm-display-voices",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            84.99999953158188,
            215.0,
            95.0,
            22.0
          ],
          "text": "prepend voices"
        }
      },
      {
        "box": {
          "id": "moving-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            239.25618785619736,
            129.75206446647644,
            225.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            0.0,
            80.0,
            69.0,
            33.0
          ],
          "text": "Davon in Bewegung "
        }
      },
      {
        "box": {
          "id": "moving-count",
          "maxclass": "number",
          "maximum": 50,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            239.25618785619736,
            153.71900528669357,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            57.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "moving-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            239.25618785619736,
            215.0,
            105.0,
            22.0
          ],
          "text": "prepend moving"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-34",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            239.25618553158188,
            40.0000028717308,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-35",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            49.99999953158188,
            271.8305388717308,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-36",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            84.99999953158188,
            271.8305388717308,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-37",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            239.25618553158188,
            271.8305388717308,
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
            "moving-prepend",
            0
          ],
          "source": [
            "moving-count",
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
            "moving-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "moving-count",
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
            "moving-count",
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
            "obj-36",
            0
          ],
          "source": [
            "swarm-display-voices",
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
          "order": 1,
          "source": [
            "voicecount",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "swarm-display-voices",
            0
          ],
          "order": 0,
          "source": [
            "voicecount",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "voicecount",
            0
          ],
          "source": [
            "voicecount-load",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
