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
          "id": "obj-3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            65.0,
            115.0,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            27.0,
            38.0,
            55.47169455885887,
            20.0
          ],
          "text": "ONOFF"
        }
      },
      {
        "box": {
          "id": "snake-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            100.0,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            0.0,
            0.0,
            81.88678720593452,
            33.0
          ],
          "text": "SNAKE · FLUGKETTE"
        }
      },
      {
        "box": {
          "id": "snake-toggle",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            126.60550236701965,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            34.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "snake-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            80.27522683143616,
            126.60550236701965,
            100.0,
            22.0
          ],
          "text": "prepend snake"
        }
      },
      {
        "box": {
          "id": "snake-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            184.86237406730652,
            126.60550236701965,
            41.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "hint": "Reglerskala für Abstand entlang der gespeicherten Flugbahn; kein prozentualer Raumabstand.",
          "id": "snakespacing-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            156.8807291984558,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            0.0,
            62.0,
            89.43395653367043,
            33.0
          ],
          "text": "Kettenabstand (0–100)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Reglerskala für Abstand entlang der gespeicherten Flugbahn; kein prozentualer Raumabstand.",
          "id": "snakespacing-num",
          "maxclass": "flonum",
          "maximum": 100.0,
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
            177.9816448688507,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            97.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Reglerskala für Abstand entlang der gespeicherten Flugbahn; kein prozentualer Raumabstand.",
          "id": "snakespacing-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.55045366287231,
            177.9816448688507,
            129.0,
            22.0
          ],
          "text": "prepend snakespacing"
        }
      },
      {
        "box": {
          "hint": "Reglerskala für Abstand entlang der gespeicherten Flugbahn; kein prozentualer Raumabstand.",
          "id": "snakespacing-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            204.58714723587036,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "hint": "Reglerskala für Abstand entlang der gespeicherten Flugbahn; kein prozentualer Raumabstand.",
          "id": "snakespacing-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            105.04586696624756,
            204.58714723587036,
            85.0,
            22.0
          ],
          "text": "loadmess 20."
        }
      },
      {
        "box": {
          "hint": "Feste, stimmenbezogene Abweichung: macht Kettenabstände unregelmäßig und verbreitert die Flugkette ohne zufälliges Zittern.",
          "id": "snakedeviation-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            232.11933755874634,
            180.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            -1.0,
            124.0,
            62.0,
            33.0
          ],
          "text": "Deviation (0–100)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Feste, stimmenbezogene Abweichung: macht Kettenabstände unregelmäßig und verbreitert die Flugkette ohne zufälliges Zittern.",
          "id": "snakedeviation-num",
          "maxclass": "flonum",
          "maximum": 100.0,
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
            253.11933755874634,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            -1.0,
            158.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Feste, stimmenbezogene Abweichung: macht Kettenabstände unregelmäßig und verbreitert die Flugkette ohne zufälliges Zittern.",
          "id": "snakedeviation-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.55045366287231,
            253.11933755874634,
            139.0,
            22.0
          ],
          "text": "prepend snakedeviation"
        }
      },
      {
        "box": {
          "hint": "Feste, stimmenbezogene Abweichung: macht Kettenabstände unregelmäßig und verbreitert die Flugkette ohne zufälliges Zittern.",
          "id": "snakedeviation-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            280.11933755874634,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "hint": "Feste, stimmenbezogene Abweichung: macht Kettenabstände unregelmäßig und verbreitert die Flugkette ohne zufälliges Zittern.",
          "id": "snakedeviation-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            105.04586696624756,
            280.11933755874634,
            80.0,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-7",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            49.99998235702515,
            40.00001355874633,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-11",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            84.99998235702515,
            40.00001355874633,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-13",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            184.86240935702517,
            40.00001355874633,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-14",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            94.45872235702518,
            364.11933755874634,
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
            "snakedeviation-set",
            0
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
            "snake-set",
            0
          ],
          "source": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snakespacing-set",
            0
          ],
          "source": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-14",
            0
          ],
          "source": [
            "snake-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snake-toggle",
            0
          ],
          "source": [
            "snake-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snake-pre",
            0
          ],
          "source": [
            "snake-toggle",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snakedeviation-num",
            0
          ],
          "source": [
            "snakedeviation-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snakedeviation-pre",
            0
          ],
          "source": [
            "snakedeviation-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-14",
            0
          ],
          "source": [
            "snakedeviation-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snakedeviation-num",
            0
          ],
          "source": [
            "snakedeviation-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snakespacing-num",
            0
          ],
          "source": [
            "snakespacing-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snakespacing-pre",
            0
          ],
          "source": [
            "snakespacing-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-14",
            0
          ],
          "source": [
            "snakespacing-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snakespacing-num",
            0
          ],
          "source": [
            "snakespacing-set",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
