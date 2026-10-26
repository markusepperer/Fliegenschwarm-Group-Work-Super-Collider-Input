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
          "id": "obj-78",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            51.50113782286644,
            100.0,
            156.99772435426712,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            32.0,
            0.0,
            156.99772435426712,
            20.0
          ],
          "text": "Flugbahnensteuerung"
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            51.012441515922546,
            261.2903296947479,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            57.0,
            50.0,
            51.32743775844574,
            33.0
          ],
          "text": "Range/Bereich"
        }
      },
      {
        "box": {
          "fontsize": 13.0,
          "id": "obj-36",
          "maxclass": "live.tab",
          "num_lines_patching": 1,
          "num_lines_presentation": 1,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            50.0,
            124.73118388652802,
            160.0,
            18.329866409301758
          ],
          "presentation": 1,
          "presentation_rect": [
            1.0,
            25.0,
            204.23729300498962,
            23.728814125061035
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "Einzelflug",
                "Bereich",
                "Alle"
              ],
              "parameter_longname": "live.tab",
              "parameter_mmax": 2,
              "parameter_modmode": 0,
              "parameter_shortname": "live.tab",
              "parameter_type": 2,
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.tab"
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            148.38709890842438,
            55.0,
            22.0
          ],
          "text": "mode $1"
        }
      },
      {
        "box": {
          "id": "randomflight-length",
          "maxclass": "number",
          "maximum": 700,
          "minimum": 2,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            52.012441515922546,
            202.65053737163544,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            1.0,
            55.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "randomflight-length-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            52.012441515922546,
            233.31720495224,
            148.0,
            22.0
          ],
          "text": "prepend flightrangelength"
        }
      },
      {
        "box": {
          "id": "randomflight-length-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            52.012441515922546,
            175.98386991024017,
            82.0,
            22.0
          ],
          "text": "loadmess 50"
        }
      },
      {
        "box": {
          "id": "randomflight-trigger",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            109.1397875547409,
            148.38709890842438,
            101.53932058811188,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            110.0,
            55.0,
            96.0,
            22.0
          ],
          "text": "randomizeflights"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-79",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            64.38406414285282,
            341.290328140007,
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
            "obj-79",
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
            "obj-10",
            0
          ],
          "source": [
            "obj-36",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "randomflight-length-prepend",
            0
          ],
          "source": [
            "randomflight-length",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "randomflight-length",
            0
          ],
          "source": [
            "randomflight-length-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-79",
            0
          ],
          "source": [
            "randomflight-length-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-79",
            0
          ],
          "source": [
            "randomflight-trigger",
            0
          ]
        }
      }
    ],
    "parameters": {
      "obj-36": [
        "live.tab",
        "live.tab",
        0
      ],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": [
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-"
          ],
          "buttons": [
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-"
          ]
        }
      },
      "inherited_shortname": 1
    },
    "autosave": 0
  }
}
