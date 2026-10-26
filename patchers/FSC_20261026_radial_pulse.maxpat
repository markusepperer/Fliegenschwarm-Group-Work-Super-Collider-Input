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
          "id": "pulse-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            100.0,
            166.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            166.0,
            20.0
          ],
          "text": "RADIALE PULSBEWEGUNG"
        }
      },
      {
        "box": {
          "id": "pulseinner-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            124.24242210388184,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            0.0,
            24.0,
            72.80701684951782,
            33.0
          ],
          "text": "Innerer Radius (%)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "pulseinner-num",
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
            146.96969282627106,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            58.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pulseinner-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.60605525970459,
            146.96969282627106,
            111.0,
            22.0
          ],
          "text": "prepend pulseinner"
        }
      },
      {
        "box": {
          "id": "pulseinner-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            171.2121149301529,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "pulseouter-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            196.96968841552734,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            80.0,
            24.0,
            70.1754379272461,
            33.0
          ],
          "text": "Äußerer Radius (%)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "pulseouter-num",
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
            218.18180775642395,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            80.0,
            58.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pulseouter-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.60605525970459,
            218.18180775642395,
            112.0,
            22.0
          ],
          "text": "prepend pulseouter"
        }
      },
      {
        "box": {
          "id": "pulseouter-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            243.9393812417984,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "pulseouter-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            104.54544973373413,
            243.9393812417984,
            87.0,
            22.0
          ],
          "text": "loadmess 100."
        }
      },
      {
        "box": {
          "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
          "id": "pulsetempo-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            268.18180334568024,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            0.0,
            85.0,
            69.0,
            33.0
          ],
          "text": "Pulstempo (Faktor)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
          "id": "pulsetempo-num",
          "maxclass": "flonum",
          "maximum": 10.0,
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
            290.90907406806946,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            119.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
          "id": "pulsetempo-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.60605525970459,
            290.90907406806946,
            118.0,
            22.0
          ],
          "text": "prepend pulsetempo"
        }
      },
      {
        "box": {
          "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
          "id": "pulsetempo-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            315.1514961719513,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "pulsephase-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            340.90906965732574,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            80.0,
            85.0,
            62.0,
            33.0
          ],
          "text": "Phasenversatz (%)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "pulsephase-num",
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
            362.12118899822235,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            80.0,
            119.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pulsephase-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.60605525970459,
            362.12118899822235,
            117.0,
            22.0
          ],
          "text": "prepend pulsephase"
        }
      },
      {
        "box": {
          "id": "pulsephase-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            387.8787624835968,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
          "id": "pulsetempospread-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50.0,
            412.12118458747864,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            0.0,
            142.0,
            83.33333253860474,
            33.0
          ],
          "text": "Tempo-Abweichung (%)"
        }
      },
      {
        "box": {
          "format": 6,
          "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
          "id": "pulsetempospread-num",
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
            434.84845530986786,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            83.0,
            153.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
          "id": "pulsetempospread-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.60605525970459,
            434.84845530986786,
            155.0,
            22.0
          ],
          "text": "prepend pulsetempospread"
        }
      },
      {
        "box": {
          "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
          "id": "pulsetempospread-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            460.6060287952423,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-38",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            49.999956744399924,
            40.000010471023586,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-39",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            84.99995674439992,
            40.000010471023586,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-41",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            119.99995674439992,
            40.000010471023586,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-44",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            154.99995674439992,
            40.000010471023586,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-45",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            189.99995674439992,
            40.000010471023586,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-48",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            104.60603574440006,
            544.6060284710236,
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
            "pulseinner-set",
            0
          ],
          "source": [
            "obj-38",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulseouter-set",
            0
          ],
          "source": [
            "obj-39",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulsetempo-set",
            0
          ],
          "source": [
            "obj-41",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulsephase-set",
            0
          ],
          "source": [
            "obj-44",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulsetempospread-set",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulseinner-pre",
            0
          ],
          "source": [
            "pulseinner-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-48",
            0
          ],
          "source": [
            "pulseinner-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulseinner-num",
            0
          ],
          "source": [
            "pulseinner-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulseouter-num",
            0
          ],
          "source": [
            "pulseouter-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulseouter-pre",
            0
          ],
          "source": [
            "pulseouter-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-48",
            0
          ],
          "source": [
            "pulseouter-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulseouter-num",
            0
          ],
          "source": [
            "pulseouter-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulsephase-pre",
            0
          ],
          "source": [
            "pulsephase-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-48",
            0
          ],
          "source": [
            "pulsephase-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulsephase-num",
            0
          ],
          "source": [
            "pulsephase-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulsetempo-pre",
            0
          ],
          "source": [
            "pulsetempo-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-48",
            0
          ],
          "source": [
            "pulsetempo-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulsetempo-num",
            0
          ],
          "source": [
            "pulsetempo-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulsetempospread-pre",
            0
          ],
          "source": [
            "pulsetempospread-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-48",
            0
          ],
          "source": [
            "pulsetempospread-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pulsetempospread-num",
            0
          ],
          "source": [
            "pulsetempospread-set",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
