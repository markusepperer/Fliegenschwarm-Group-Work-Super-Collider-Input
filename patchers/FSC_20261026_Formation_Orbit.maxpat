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
          "id": "obj-1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            762.0,
            987.8787007331848,
            100.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            56.0,
            79.0,
            69.78397971391678,
            20.0
          ],
          "text": "ORBIT"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.717647058823529,
            0.0,
            1.0
          ],
          "bgcolor2": [
            1.0,
            0.717647058823529,
            0.0,
            1.0
          ],
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            1.0,
            0.717647058823529,
            0.0,
            1.0
          ],
          "bgfillcolor_color1": [
            1.0,
            0.717647058823529,
            0.0,
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
          "id": "obj-7",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            328.0,
            121.0,
            35.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            78.0,
            55.0,
            22.0
          ],
          "text": "reset",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textjustification": 1
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            328.0,
            164.0,
            29.5,
            22.0
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "orbit-num",
          "maxclass": "flonum",
          "maximum": 10.0,
          "minimum": -10.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            50.0,
            121.0,
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
          "id": "orbit-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            111.15702140331268,
            121.0,
            95.0,
            22.0
          ],
          "text": "prepend orbit"
        }
      },
      {
        "box": {
          "id": "orbit-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            54.545451521873474,
            100.0,
            145.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            56.0,
            1.0,
            102.0,
            20.0
          ],
          "text": "Umlauftempo (±)"
        }
      },
      {
        "box": {
          "hint": "0: gleiche Richtung. 1: benachbarte Ringe gegenläufig. 2: innere und äußere Ringe gegenläufig.",
          "id": "ringmode-num",
          "maxclass": "number",
          "maximum": 2,
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
            178.02479022741318,
            45.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            27.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "0: gleiche Richtung. 1: benachbarte Ringe gegenläufig. 2: innere und äußere Ringe gegenläufig.",
          "id": "ringmode-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            100.41322034597397,
            178.02479022741318,
            110.0,
            22.0
          ],
          "text": "prepend ringmode"
        }
      },
      {
        "box": {
          "hint": "0: gleiche Richtung. 1: benachbarte Ringe gegenläufig. 2: innere und äußere Ringe gegenläufig.",
          "id": "ringmode-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            54.545451521873474,
            152.99959421157837,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            56.0,
            27.0,
            110.0,
            20.0
          ],
          "text": "Drehrichtung (0–2)"
        }
      },
      {
        "box": {
          "id": "set-orbit",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            278.0247846841812,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "set-ringmode",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            104.54545152187347,
            278.0247846841812,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "hint": "Organisch wechselnde Unterschiede der Umlauftempi. 0 = gleiches Winkeltempo.",
          "id": "orbitspread-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            214.38842457532883,
            165.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            56.0,
            56.0,
            122.0,
            20.0
          ],
          "text": "Tempo-Streuung (%)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Organisch wechselnde Unterschiede der Umlauftempi. 0 = gleiches Winkeltempo.",
          "id": "orbitspread-num",
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
            235.87602669000626,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            55.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Organisch wechselnde Unterschiede der Umlauftempi. 0 = gleiches Winkeltempo.",
          "id": "orbitspread-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            111.15702140331268,
            235.87602669000626,
            116.0,
            22.0
          ],
          "text": "prepend orbitspread"
        }
      },
      {
        "box": {
          "id": "set-orbitspread",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            160.74379551410675,
            278.0247846841812,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-14",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            49.99997725850676,
            40.00000022935485,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-15",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            104.54550925850685,
            40.00000022935485,
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
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            160.74375225850667,
            40.00000022935485,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-18",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            101.57578325850682,
            362.02478022935486,
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
            "set-orbit",
            0
          ],
          "source": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set-ringmode",
            0
          ],
          "source": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set-orbitspread",
            0
          ],
          "source": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "orbit-num",
            0
          ],
          "order": 2,
          "source": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "orbitspread-num",
            0
          ],
          "order": 0,
          "source": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "ringmode-num",
            0
          ],
          "order": 1,
          "source": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-5",
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
            "orbit-pre",
            0
          ],
          "source": [
            "orbit-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-18",
            0
          ],
          "source": [
            "orbit-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "orbitspread-pre",
            0
          ],
          "source": [
            "orbitspread-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-18",
            0
          ],
          "source": [
            "orbitspread-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "ringmode-pre",
            0
          ],
          "source": [
            "ringmode-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-18",
            0
          ],
          "source": [
            "ringmode-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "orbit-num",
            0
          ],
          "source": [
            "set-orbit",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "orbitspread-num",
            0
          ],
          "source": [
            "set-orbitspread",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "ringmode-num",
            0
          ],
          "source": [
            "set-ringmode",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
