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
      146.0,
      218.0,
      1344.0,
      900.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-48",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.4429741501808,
            175.1677885055542,
            70.0,
            22.0
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            287.2886085510254,
            232.88591182231903,
            190.0,
            22.0
          ],
          "text": "s FSC_20261026_3922_flow_commands"
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            188.6308861374855,
            195.2631612420082,
            73.15436559915543,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            73.0,
            68.0,
            72.15189778804779,
            20.0
          ],
          "text": "Formation"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            101.38256019353867,
            194.2631612420082,
            66.44295591115952,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            73.0,
            24.0,
            55.69620180130005,
            20.0
          ],
          "text": "Dichte"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "density-number",
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
            101.24998342990875,
            159.64672547578812,
            72.60273444652557,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            74.0,
            0.0,
            62.0,
            22.0
          ],
          "varname": "swarm_density"
        }
      },
      {
        "box": {
          "id": "density-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            241.61074441671371,
            86.30136358737946,
            22.0
          ],
          "text": "density $1"
        }
      },
      {
        "box": {
          "id": "density-init",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            101.24998342990875,
            130.87960427999496,
            87.67122650146484,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "format": 6,
          "id": "grid-number",
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
            188.9212099313736,
            159.64672547578812,
            72.60273444652557,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            74.0,
            46.0,
            62.0,
            22.0
          ],
          "varname": "swarm_grid"
        }
      },
      {
        "box": {
          "id": "grid-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            173.2927473783493,
            241.61074441671371,
            72.60273444652557,
            22.0
          ],
          "text": "grid $1"
        }
      },
      {
        "box": {
          "id": "grid-init",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            188.9212099313736,
            130.87960427999496,
            87.67122650146484,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "id": "flow-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            101.24998342990875,
            100.0,
            387.91947996616364,
            20.0
          ],
          "text": "FORMATIONSGEOMETRIE"
        }
      },
      {
        "box": {
          "id": "formation-shape-label",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            287.2886085510254,
            124.83221584558487,
            94.85552930831909,
            47.0
          ],
          "presentation": 1,
          "presentation_linecount": 4,
          "presentation_rect": [
            0.0,
            0.0,
            69.0,
            60.0
          ],
          "text": "0 Kreis · 50 Dreieck · 100 Quadrat"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "formation-shape",
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
            287.2886085510254,
            175.1677885055542,
            65.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            2.0,
            66.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "formation-shape-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            287.2886085510254,
            204.02685016393661,
            165.0,
            22.0
          ],
          "text": "prepend formationshape"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-54",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            101.24998342990875,
            40.00000637176896,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-56",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            188.92118742990874,
            40.00000637176896,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-57",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            105.6463454299087,
            323.61073937176894,
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
            50.0,
            278.0,
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
            "density-number",
            0
          ],
          "source": [
            "density-init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-57",
            0
          ],
          "source": [
            "density-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "density-message",
            0
          ],
          "source": [
            "density-number",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "formation-shape-pre",
            0
          ],
          "source": [
            "formation-shape",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-45",
            0
          ],
          "source": [
            "formation-shape-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "grid-number",
            0
          ],
          "source": [
            "grid-init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-57",
            0
          ],
          "source": [
            "grid-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "grid-message",
            0
          ],
          "source": [
            "grid-number",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "formation-shape",
            0
          ],
          "source": [
            "obj-48",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "density-number",
            0
          ],
          "source": [
            "obj-54",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "grid-number",
            0
          ],
          "source": [
            "obj-56",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "density-message",
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
            "grid-message",
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
