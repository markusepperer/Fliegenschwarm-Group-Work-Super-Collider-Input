{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 5,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      132.0,
      141.0,
      1106.0,
      643.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-3",
          "linecount": 29,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1428.070161819458,
            -122.07792282104492,
            152.0,
            395.0
          ],
          "text": "Genau. Das Objekt heißt prepend, jeweils mit dem Parameternamen:\nParameter    Max-Objekt\nStartposition X    prepend startx\nStartposition Y    prepend starty\nFeldbreite    prepend width\nFeldhöhe    prepend height\nFeldposition X    prepend posx\nFeldposition Y    prepend posy\nWinkel    prepend angle\nGeschwindigkeit    prepend speed\n\n\nAlle gehen ans JavaScript oder von außen an den Moduleingang. Die Zahlenfelder zeigen die Werte mit an.\nStartposition greift beim nächsten Neustart, Winkel beim nächsten Aufprall. Die übrigen Parameter wirken"
        }
      },
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            433.00000190734863,
            -267.5324649810791,
            200.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            86.0,
            24.0,
            88.80124324560165,
            20.0
          ],
          "text": "BILLARD · XY"
        }
      },
      {
        "box": {
          "id": "start",
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
            433.00000190734863,
            -237.662335395813,
            92.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            78.26086914539337,
            21.739130318164825
          ],
          "text": "Start"
        }
      },
      {
        "box": {
          "id": "startmsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1001.2986917495728,
            -72.7272720336914,
            90.0,
            22.0
          ],
          "text": "start"
        }
      },
      {
        "box": {
          "id": "stop",
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
            533.0000009536743,
            -237.662335395813,
            92.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            86.0,
            0.0,
            88.81987529993057,
            21.739130318164825
          ],
          "text": "Stop"
        }
      },
      {
        "box": {
          "id": "stopmsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1001.2986917495728,
            -37.66233730316162,
            90.0,
            22.0
          ],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "restart",
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
            633.0,
            -237.662335395813,
            92.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            24.0,
            78.26086914539337,
            21.739130318164825
          ],
          "text": "Neustart"
        }
      },
      {
        "box": {
          "id": "restartmsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1001.2986917495728,
            -2.597402572631836,
            90.0,
            22.0
          ],
          "text": "restart"
        }
      },
      {
        "box": {
          "id": "l_speed",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            127.11864709854126,
            176.27119064331055,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            47.0,
            86.33540326356888,
            20.0
          ],
          "text": "speed (Feld/s)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "speed",
          "maxclass": "flonum",
          "maximum": 50.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            127.11864709854126,
            198.30508947372437,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            70.0,
            86.33540326356888,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pre_speed",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            498.30509662628174,
            400.00000953674316,
            180.0,
            22.0
          ],
          "text": "prepend speed"
        }
      },
      {
        "box": {
          "id": "l_angle",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            308.47458362579346,
            176.27119064331055,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            90.0,
            47.0,
            85.07453519105911,
            20.0
          ],
          "text": "Winkel (°)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "angle",
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
            308.47458362579346,
            198.30508947372437,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            90.0,
            70.0,
            85.07453519105911,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pre_angle",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            498.30509662628174,
            435.5932307243347,
            180.0,
            22.0
          ],
          "text": "prepend angle"
        }
      },
      {
        "box": {
          "id": "l_startx",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            127.11864709854126,
            232.2033953666687,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            95.0,
            87.0,
            20.0
          ],
          "text": "Startposition X"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "startx",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": -1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            127.11864709854126,
            254.23729419708252,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            118.0,
            86.33540326356888,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pre_startx",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            498.30509662628174,
            469.49153661727905,
            180.0,
            22.0
          ],
          "text": "prepend startx"
        }
      },
      {
        "box": {
          "id": "l_starty",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            308.47458362579346,
            232.2033953666687,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            90.17857056856155,
            95.0,
            86.82142943143845,
            20.0
          ],
          "text": "Startposition Y"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "starty",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": -1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            308.47458362579346,
            254.23729419708252,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            90.0,
            117.0,
            85.07453519105911,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pre_starty",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            498.30509662628174,
            503.3898425102234,
            180.0,
            22.0
          ],
          "text": "prepend starty"
        }
      },
      {
        "box": {
          "id": "l_width",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            127.11864709854126,
            286.44068479537964,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            142.0,
            86.33540326356888,
            20.0
          ],
          "text": "Feldbreite"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "width",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.01,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            127.11864709854126,
            308.47458362579346,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            165.0,
            86.33540326356888,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pre_width",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            498.30509662628174,
            538.9830636978149,
            180.0,
            22.0
          ],
          "text": "prepend width"
        }
      },
      {
        "box": {
          "id": "l_height",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            308.47458362579346,
            286.44068479537964,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            90.0,
            142.0,
            85.07453519105911,
            20.0
          ],
          "text": "Feldhöhe"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "height",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.01,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            308.47458362579346,
            308.47458362579346,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            90.0,
            165.0,
            85.07453519105911,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pre_height",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            498.30509662628174,
            574.5762848854065,
            180.0,
            22.0
          ],
          "text": "prepend height"
        }
      },
      {
        "box": {
          "id": "l_posx",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            127.11864709854126,
            342.3728895187378,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            190.0,
            86.33540326356888,
            20.0
          ],
          "text": "Feldposition X"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "posx",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": -1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            127.11864709854126,
            364.4067883491516,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            213.0,
            86.33540326356888,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pre_posx",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            498.30509662628174,
            608.4745907783508,
            180.0,
            22.0
          ],
          "text": "prepend posx"
        }
      },
      {
        "box": {
          "id": "l_posy",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            308.47458362579346,
            342.3728895187378,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            90.0,
            190.0,
            87.0,
            20.0
          ],
          "text": "Feldposition Y "
        }
      },
      {
        "box": {
          "format": 6,
          "id": "posy",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": -1.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            308.47458362579346,
            364.4067883491516,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            90.0,
            213.0,
            85.07453519105911,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pre_posy",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            498.30509662628174,
            644.0678119659424,
            180.0,
            22.0
          ],
          "text": "prepend posy"
        }
      },
      {
        "box": {
          "id": "hint",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            127.11864709854126,
            401.6949248313904,
            265.0,
            33.0
          ],
          "text": "Winkeländerung gilt erst beim nächsten Aufprall.\nGeschwindigkeit 0 hält an; Start/Stop pausiert."
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            867.5324592590332,
            274.0,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            236.0,
            150.0,
            20.0
          ],
          "text": "Gestoppt"
        }
      },
      {
        "box": {
          "id": "xy",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            732.2034072875977,
            588.1356072425842,
            170.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            257.0,
            170.0,
            22.0
          ],
          "text": "0.823322 0.330128"
        }
      },
      {
        "box": {
          "id": "engine",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            700.0,
            40.0,
            180.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "FSC_20261026_billard.js",
            "parameter_enable": 0
          },
          "text": "js FSC_20261026_billard.js"
        }
      },
      {
        "box": {
          "comment": "start / stop / restart; speed, angle, startx, starty, width, height, posx, posy",
          "id": "in",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            700.0,
            -49.35064888000488,
            25.000000000000004,
            22.0
          ]
        }
      },
      {
        "box": {
          "comment": "XY-Liste 0..1 zum Daten-Switch",
          "id": "out",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            696.6101861000061,
            588.1356072425842,
            25.000000000000004,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "numinlets": 9,
          "numoutlets": 9,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            780.5194730758667,
            77.92207717895508,
            620.0,
            22.0
          ],
          "text": "route speed angle startx starty width height posx posy"
        }
      },
      {
        "box": {
          "id": "set",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            867.5324592590332,
            240.25973796844482,
            130.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            832.4675245285034,
            -245.4545431137085,
            130.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "defer",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            832.4675245285034,
            -210.3896083831787,
            130.0,
            22.0
          ],
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "init",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            832.4675245285034,
            -175.32467365264893,
            100.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "starttr",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "patching_rect": [
            500.0,
            -189.61038780212402,
            80.0,
            22.0
          ],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "stoptr",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "patching_rect": [
            500.0,
            -144.1558427810669,
            80.0,
            22.0
          ],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "restarttr",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "patching_rect": [
            500.0,
            -99.99999904632568,
            80.0,
            22.0
          ],
          "text": "t b b"
        }
      },
      {
        "box": {
          "angle": 270.0,
          "bgcolor": [
            0.8117647058823529,
            0.8274509803921568,
            0.8,
            1.0
          ],
          "id": "obj-1",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            220.53571218252182,
            257.14285469055176,
            128.0,
            128.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            -7.142857074737549,
            175.0745351910591,
            286.14285707473755
          ],
          "proportion": 0.5
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "pre_angle",
            0
          ],
          "source": [
            "angle",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "init",
            0
          ],
          "source": [
            "defer",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out",
            0
          ],
          "order": 1,
          "source": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "route",
            0
          ],
          "source": [
            "engine",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "set",
            0
          ],
          "source": [
            "engine",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "xy",
            1
          ],
          "order": 0,
          "source": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_height",
            0
          ],
          "source": [
            "height",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "in",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "defer",
            0
          ],
          "source": [
            "load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_posx",
            0
          ],
          "source": [
            "posx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_posy",
            0
          ],
          "source": [
            "posy",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "pre_angle",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "pre_height",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "pre_posx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "pre_posy",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "pre_speed",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "pre_startx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "pre_starty",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "pre_width",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "restarttr",
            0
          ],
          "source": [
            "restart",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "restartmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "init",
            0
          ],
          "source": [
            "restarttr",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "restartmsg",
            0
          ],
          "source": [
            "restarttr",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "angle",
            0
          ],
          "source": [
            "route",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "height",
            0
          ],
          "source": [
            "route",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "posx",
            0
          ],
          "source": [
            "route",
            6
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "posy",
            0
          ],
          "source": [
            "route",
            7
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "speed",
            0
          ],
          "source": [
            "route",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "startx",
            0
          ],
          "source": [
            "route",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "starty",
            0
          ],
          "source": [
            "route",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "width",
            0
          ],
          "source": [
            "route",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "status",
            0
          ],
          "source": [
            "set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_speed",
            0
          ],
          "source": [
            "speed",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "starttr",
            0
          ],
          "source": [
            "start",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "startmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "init",
            0
          ],
          "source": [
            "starttr",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "startmsg",
            0
          ],
          "source": [
            "starttr",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_startx",
            0
          ],
          "source": [
            "startx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_starty",
            0
          ],
          "source": [
            "starty",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "stoptr",
            0
          ],
          "source": [
            "stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "engine",
            0
          ],
          "source": [
            "stopmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "init",
            0
          ],
          "source": [
            "stoptr",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "stopmsg",
            0
          ],
          "source": [
            "stoptr",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_width",
            0
          ],
          "source": [
            "width",
            0
          ]
        }
      }
    ]
  }
}
