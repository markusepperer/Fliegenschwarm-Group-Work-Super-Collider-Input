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
          "id": "obj-70",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            177.94749069213867,
            100.0,
            150.0,
            33.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            46.24999558925629,
            34.499996185302734,
            104.18848496675491,
            33.0
          ],
          "text": "Schwarmadresse\n0= Alle"
        }
      },
      {
        "box": {
          "id": "subswarms-count",
          "maxclass": "number",
          "maximum": 4,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            60.670732855796814,
            164.12536442279816,
            45.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            45.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "subswarms-count-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            60.670732855796814,
            194.98956441879272,
            105.0,
            22.0
          ],
          "text": "prepend swarms"
        }
      },
      {
        "box": {
          "id": "subswarms-count-init",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            60.670732855796814,
            135.73030042648315,
            75.0,
            22.0
          ],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "id": "subswarms-count-label",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            100.0,
            96.34146571159363,
            33.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            48.03174287080765,
            0.0,
            100.62499040365219,
            33.0
          ],
          "text": "Teilschwärme (1–4)"
        }
      },
      {
        "box": {
          "id": "subswarms-target",
          "maxclass": "number",
          "maximum": 4,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            177.95469284057617,
            164.12536442279816,
            45.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            39.999996185302734,
            45.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "subswarms-target-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            177.95469284057617,
            194.98956441879272,
            135.0,
            22.0
          ],
          "text": "prepend swarmtarget"
        }
      },
      {
        "box": {
          "id": "subswarms-target-init",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            177.95469284057617,
            134.49573242664337,
            75.0,
            22.0
          ],
          "text": "loadmess 0"
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
            60.67071283833309,
            276.9895634194336,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-38",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            177.9547088383331,
            276.9895634194336,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "swarm-manager-send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            60.0,
            235.0,
            225.0,
            22.0
          ],
          "text": "s FSC_20261026_3922_swarm_manager_commands"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "subswarms-count-pre",
            0
          ],
          "source": [
            "subswarms-count",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "subswarms-count",
            0
          ],
          "source": [
            "subswarms-count-init",
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
            "subswarms-count-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "subswarms-target-pre",
            0
          ],
          "source": [
            "subswarms-target",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "subswarms-target",
            0
          ],
          "source": [
            "subswarms-target-init",
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
            "subswarms-target-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "subswarms-count-pre",
            0
          ],
          "destination": [
            "swarm-manager-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "subswarms-target-pre",
            0
          ],
          "destination": [
            "swarm-manager-send",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
