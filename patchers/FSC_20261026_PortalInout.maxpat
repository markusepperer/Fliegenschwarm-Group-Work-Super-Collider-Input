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
          "id": "portal-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            100.0,
            210.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            165.3846311569214,
            20.0
          ],
          "text": "PORTAL · EIN-/AUSFLUG"
        }
      },
      {
        "box": {
          "id": "portal-mode-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            124.7706401348114,
            210.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            25.0,
            165.3846311569214,
            20.0
          ],
          "text": "−1 Einflug · 0 Aus · 1 Ausflug"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.513725490196078,
            1.0,
            0.741176470588235
          ],
          "id": "portal-mode-num",
          "maxclass": "number",
          "maximum": 1,
          "minimum": -1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            146.78898692131042,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            47.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "portal-mode-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            109.63302254676819,
            146.78898692131042,
            130.0,
            22.0
          ],
          "text": "prepend portalmode"
        }
      },
      {
        "box": {
          "id": "portal-x-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            176.14678263664246,
            110.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            76.0,
            84.61539268493652,
            20.0
          ],
          "text": "Portal X (0–1)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "portal-x-num",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            196.33026719093323,
            62.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            96.0,
            62.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "portal-x-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            116.05504035949707,
            196.33026719093323,
            150.0,
            22.0
          ],
          "text": "prepend portalx"
        }
      },
      {
        "box": {
          "id": "portal-x-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            272.0183300971985,
            196.33026719093323,
            85.0,
            22.0
          ],
          "text": "loadmess 0.5"
        }
      },
      {
        "box": {
          "id": "portal-y-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            224.77063179016113,
            110.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            88.0,
            75.0,
            84.61539268493652,
            20.0
          ],
          "text": "Portal Y (0–1)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "portal-y-num",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            246.78897857666016,
            62.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            88.0,
            96.0,
            62.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "portal-y-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            116.05504035949707,
            246.78897857666016,
            150.0,
            22.0
          ],
          "text": "prepend portaly"
        }
      },
      {
        "box": {
          "id": "portal-y-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            272.0183300971985,
            246.78897857666016,
            85.0,
            22.0
          ],
          "text": "loadmess 0.5"
        }
      },
      {
        "box": {
          "id": "portal-direction-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            274.31191205978394,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            1.0,
            121.0,
            107.69231796264648,
            20.0
          ],
          "text": "Strahlrichtung (°)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "portal-direction-num",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            294.4953966140747,
            62.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            141.0,
            62.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "portal-direction-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            116.05504035949707,
            294.4953966140747,
            150.0,
            22.0
          ],
          "text": "prepend portaldirection"
        }
      },
      {
        "box": {
          "id": "portal-direction-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            272.0183300971985,
            294.4953966140747,
            85.0,
            22.0
          ],
          "text": "loadmess 0."
        }
      },
      {
        "box": {
          "id": "portal-width-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            322.9357612133026,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            165.0,
            107.69231796264648,
            20.0
          ],
          "text": "Öffnungswinkel (°)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "portal-width-num",
          "maxclass": "flonum",
          "maximum": 360.0,
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
            343.1192457675934,
            62.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            185.0,
            62.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "portal-width-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            116.05504035949707,
            343.1192457675934,
            150.0,
            22.0
          ],
          "text": "prepend portalwidth"
        }
      },
      {
        "box": {
          "id": "portal-width-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            272.0183300971985,
            343.1192457675934,
            85.0,
            22.0
          ],
          "text": "loadmess 45."
        }
      },
      {
        "box": {
          "hint": "Geschwindigkeitsregler mit Weglängenausgleich; keine feste Anzahl von Zyklen pro Sekunde.",
          "id": "portal-speed-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            371.5596103668213,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            210.0,
            107.6923131942749,
            20.0
          ],
          "text": "Flugtempo (0–20)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Geschwindigkeitsregler mit Weglängenausgleich; keine feste Anzahl von Zyklen pro Sekunde.",
          "id": "portal-speed-num",
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
            50.0,
            393.5779571533203,
            62.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            232.0,
            62.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Geschwindigkeitsregler mit Weglängenausgleich; keine feste Anzahl von Zyklen pro Sekunde.",
          "id": "portal-speed-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            116.05504035949707,
            393.5779571533203,
            150.0,
            22.0
          ],
          "text": "prepend portalspeed"
        }
      },
      {
        "box": {
          "hint": "Geschwindigkeitsregler mit Weglängenausgleich; keine feste Anzahl von Zyklen pro Sekunde.",
          "id": "portal-speed-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            272.0183300971985,
            393.5779571533203,
            87.0,
            22.0
          ],
          "text": "loadmess 0.25"
        }
      },
      {
        "box": {
          "id": "portal-deviation-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            421.1008906364441,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            1.0,
            255.0,
            123.07693481445312,
            20.0
          ],
          "text": "Bahnabweichung (%)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "portal-deviation-num",
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
            441.28437519073486,
            62.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            276.0,
            62.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "portal-deviation-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            116.05504035949707,
            441.28437519073486,
            150.0,
            22.0
          ],
          "text": "prepend portaldeviation"
        }
      },
      {
        "box": {
          "id": "portal-deviation-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            272.0183300971985,
            441.28437519073486,
            85.0,
            22.0
          ],
          "text": "loadmess 25."
        }
      },
      {
        "box": {
          "id": "portal-mouse-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            469.72473978996277,
            300.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            -3.0,
            299.0,
            157.69232273101807,
            33.0
          ],
          "text": "Portal im Monitor klicken und ziehen."
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
            49.99999483668512,
            39.99999312129211,
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
            84.99999483668512,
            39.99999312129211,
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
            108.7706248366851,
            549.7247251212921,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-16",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            143.7706248366851,
            549.7247251212921,
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
            "portal-y-num",
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
            "portal-x-num",
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
            "portal-deviation-num",
            0
          ],
          "source": [
            "portal-deviation-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-deviation-pre",
            0
          ],
          "source": [
            "portal-deviation-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            0
          ],
          "source": [
            "portal-deviation-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-direction-num",
            0
          ],
          "source": [
            "portal-direction-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-direction-pre",
            0
          ],
          "source": [
            "portal-direction-num",
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
            "portal-direction-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-mode-pre",
            0
          ],
          "source": [
            "portal-mode-num",
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
            "portal-mode-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-speed-num",
            0
          ],
          "source": [
            "portal-speed-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-speed-pre",
            0
          ],
          "source": [
            "portal-speed-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            0
          ],
          "source": [
            "portal-speed-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-width-num",
            0
          ],
          "source": [
            "portal-width-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-width-pre",
            0
          ],
          "source": [
            "portal-width-num",
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
            "portal-width-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-x-num",
            0
          ],
          "source": [
            "portal-x-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-x-pre",
            0
          ],
          "source": [
            "portal-x-num",
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
            "portal-x-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-y-num",
            0
          ],
          "source": [
            "portal-y-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "portal-y-pre",
            0
          ],
          "source": [
            "portal-y-num",
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
            "portal-y-pre",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
