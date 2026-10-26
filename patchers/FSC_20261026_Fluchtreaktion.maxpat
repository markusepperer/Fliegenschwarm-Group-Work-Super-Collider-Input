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
          "id": "escape-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            100.0,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            117.70832884311676,
            20.0
          ],
          "text": "FLUCHTREAKTION"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.196078431372549,
            0.196078431372549,
            1.0
          ],
          "bgcolor2": [
            1.0,
            0.196078431372549,
            0.196078431372549,
            1.0
          ],
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_color1": [
            1.0,
            0.196078431372549,
            0.196078431372549,
            1.0
          ],
          "bgfillcolor_color2": [
            0.2,
            0.2,
            0.2,
            1.0
          ],
          "bgfillcolor_proportion": 0.5,
          "bgfillcolor_type": "color",
          "gradient": 1,
          "id": "escape-trigger",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            125.68807125091553,
            80.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            25.0,
            55.00000190734863,
            22.0
          ],
          "text": "escape",
          "textcolor": [
            1.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "escape-strength-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            155.04586696624756,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            55.0,
            102.60416275262833,
            20.0
          ],
          "text": "Fluchtstärke (%)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "escape-strength-num",
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
            177.06421375274658,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            77.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "escape-strength-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.55045366287231,
            177.06421375274658,
            138.0,
            22.0
          ],
          "text": "prepend escapestrength"
        }
      },
      {
        "box": {
          "id": "escape-strength-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            203.66971611976624,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "escape-strength-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            105.04586696624756,
            203.66971611976624,
            85.0,
            22.0
          ],
          "text": "loadmess 50."
        }
      },
      {
        "box": {
          "id": "escape-return-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            233.02751183509827,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            100.0,
            102.60416275262833,
            20.0
          ],
          "text": "Rückkehrzeit (s)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "escape-return-num",
          "maxclass": "flonum",
          "maximum": 10.0,
          "minimum": 0.2,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            255.0458586215973,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            122.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "escape-return-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.55045366287231,
            255.0458586215973,
            126.0,
            22.0
          ],
          "text": "prepend escapereturn"
        }
      },
      {
        "box": {
          "id": "escape-return-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            281.65136098861694,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "escape-return-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            105.04586696624756,
            281.65136098861694,
            80.0,
            22.0
          ],
          "text": "loadmess 2."
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-18",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            49.99998048469547,
            40.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-21",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            84.99998048469547,
            40.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-22",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            84.36692348469546,
            365.65136699999994,
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
            "escape-return-num",
            0
          ],
          "source": [
            "escape-return-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "escape-return-pre",
            0
          ],
          "source": [
            "escape-return-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-22",
            0
          ],
          "source": [
            "escape-return-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "escape-return-num",
            0
          ],
          "source": [
            "escape-return-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "escape-strength-num",
            0
          ],
          "source": [
            "escape-strength-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "escape-strength-pre",
            0
          ],
          "source": [
            "escape-strength-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-22",
            0
          ],
          "source": [
            "escape-strength-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "escape-strength-num",
            0
          ],
          "source": [
            "escape-strength-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-22",
            0
          ],
          "source": [
            "escape-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "escape-strength-set",
            0
          ],
          "source": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "escape-return-set",
            0
          ],
          "source": [
            "obj-21",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
