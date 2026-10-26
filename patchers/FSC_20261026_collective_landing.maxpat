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
          "id": "landing-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            100.0,
            240.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            144.53271067142487,
            20.0
          ],
          "text": "COLLECTIVE LANDING"
        }
      },
      {
        "box": {
          "id": "landing-mode-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            125.0,
            155.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            25.806452751159668,
            27.956990480422974,
            56.07476592063904,
            20.0
          ],
          "text": "ON OFF"
        }
      },
      {
        "box": {
          "hint": "Schaltet Collective Landing als Hauptbewegung ein oder aus.",
          "id": "landing-mode",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            147.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            24.731183886528015,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "landing-mode-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            84.0,
            147.0,
            145.0,
            22.0
          ],
          "text": "prepend landingmode"
        }
      },
      {
        "box": {
          "id": "landing-mode-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            239.0,
            147.0,
            75.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "id": "landing-points-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            179.0,
            180.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            51.612905502319336,
            121.49532616138458,
            20.0
          ],
          "text": "Landepunkte (1–50)"
        }
      },
      {
        "box": {
          "hint": "Die aktiven Fliegen werden möglichst gleichmäßig auf diese Anzahl zufälliger Punkte verteilt.",
          "id": "landing-points",
          "maxclass": "number",
          "maximum": 50,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            201.0,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            73.11828279495239,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "landing-points-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            125.0,
            201.0,
            150.0,
            22.0
          ],
          "text": "prepend landingpoints"
        }
      },
      {
        "box": {
          "id": "landing-points-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            285.0,
            201.0,
            75.0,
            22.0
          ],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "id": "landing-cycle-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            233.0,
            180.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            101.07527327537537,
            96.26168149709702,
            20.0
          ],
          "text": "Zyklusdauer (s)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Globaler Starttakt. Ist eine Fliege beim nächsten Takt noch unterwegs, behält sie ihr Ziel; freie Fliegen dürfen bereits neu starten.",
          "id": "landing-cycle",
          "maxclass": "flonum",
          "maximum": 120.0,
          "minimum": 0.5,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            255.0,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            122.58065056800842,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "landing-cycle-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            125.0,
            255.0,
            150.0,
            22.0
          ],
          "text": "prepend landingcycle"
        }
      },
      {
        "box": {
          "id": "landing-cycle-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            285.0,
            255.0,
            85.0,
            22.0
          ],
          "text": "loadmess 10."
        }
      },
      {
        "box": {
          "id": "landing-start-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            287.0,
            180.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            151.61290991306305,
            96.26168149709702,
            20.0
          ],
          "text": "Startfenster (s)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "0: alle starten gleichzeitig. Größere Werte verteilen die Starts über dieses Zeitfenster.",
          "id": "landing-start",
          "maxclass": "flonum",
          "maximum": 120.0,
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
            309.0,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            174.19355607032776,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "landing-start-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            125.0,
            309.0,
            180.0,
            22.0
          ],
          "text": "prepend landingstartwindow"
        }
      },
      {
        "box": {
          "id": "landing-start-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            315.0,
            309.0,
            75.0,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "id": "landing-end-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            341.0,
            180.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            203.22581541538239,
            96.26168149709702,
            20.0
          ],
          "text": "Landefenster (s)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "0: alle landen gleichzeitig. Größere Werte verteilen die Landungen über dieses Zeitfenster.",
          "id": "landing-end",
          "maxclass": "flonum",
          "maximum": 120.0,
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
            363.0,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            224.73119270801544,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "landing-end-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            125.0,
            363.0,
            180.0,
            22.0
          ],
          "text": "prepend landingendwindow"
        }
      },
      {
        "box": {
          "id": "landing-end-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            315.0,
            363.0,
            75.0,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "hint": "Erzeugt sofort neue zufällige Landepunkte.",
          "id": "landing-trigger",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            400.0,
            145.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            248.3871077299118,
            145.0,
            26.0
          ],
          "text": "Nächster Zyklus",
          "texton": "Nächster Zyklus"
        }
      },
      {
        "box": {
          "id": "landing-trigger-msg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            205.0,
            402.0,
            95.0,
            22.0
          ],
          "text": "landingtrigger"
        }
      },
      {
        "box": {
          "id": "landing-note",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            435.0,
            360.0,
            33.0
          ],
          "presentation": 1,
          "presentation_linecount": 4,
          "presentation_rect": [
            0.0,
            275.2688293457031,
            144.85981196165085,
            60.0
          ],
          "text": "Anflugkrümmung: vorhandener Regler Bahnabweichung (%)\nbei Portal"
        }
      },
      {
        "box": {
          "id": "landing-controller",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            440.7195031642914,
            164.696875333786,
            165.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "FSC_20261026_landing_control.js",
            "parameter_enable": 0
          },
          "text": "js FSC_20261026_landing_control.js"
        }
      },
      {
        "box": {
          "id": "landing-broadcast-send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            440.7195031642914,
            199.54535710811615,
            205.0,
            22.0
          ],
          "text": "s FSC_20261026_3922_landing_commands"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-7",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            440.71948199999997,
            528.0,
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
            "landing-broadcast-send",
            0
          ],
          "order": 1,
          "source": [
            "landing-controller",
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
          "order": 0,
          "source": [
            "landing-controller",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-cycle-pre",
            0
          ],
          "source": [
            "landing-cycle",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-cycle",
            0
          ],
          "source": [
            "landing-cycle-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-controller",
            0
          ],
          "source": [
            "landing-cycle-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-end-pre",
            0
          ],
          "source": [
            "landing-end",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-end",
            0
          ],
          "source": [
            "landing-end-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-controller",
            0
          ],
          "source": [
            "landing-end-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-mode-pre",
            0
          ],
          "source": [
            "landing-mode",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-mode",
            0
          ],
          "source": [
            "landing-mode-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-controller",
            0
          ],
          "source": [
            "landing-mode-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-points-pre",
            0
          ],
          "source": [
            "landing-points",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-points",
            0
          ],
          "source": [
            "landing-points-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-controller",
            0
          ],
          "source": [
            "landing-points-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-start-pre",
            0
          ],
          "source": [
            "landing-start",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-start",
            0
          ],
          "source": [
            "landing-start-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-controller",
            0
          ],
          "source": [
            "landing-start-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-trigger-msg",
            0
          ],
          "source": [
            "landing-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "landing-controller",
            0
          ],
          "source": [
            "landing-trigger-msg",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
