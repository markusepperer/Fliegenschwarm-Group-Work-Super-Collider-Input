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
      291.0,
      207.0,
      1344.0,
      899.0
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
            358.4313898086548,
            452.6006398200989,
            125.88235819339752,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            220.0,
            7.0,
            70.44732677936554,
            20.0
          ],
          "text": "Countdown"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.88176,
            0.24321,
            0.14749,
            1.0
          ],
          "bgcolor2": [
            0.88176,
            0.24321,
            0.14749,
            1.0
          ],
          "bgfillcolor_angle": 270.0,
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.88176,
            0.24321,
            0.14749,
            1.0
          ],
          "bgfillcolor_color1": [
            0.88176,
            0.24321,
            0.14749,
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
          "id": "obj-25",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            363.03923416137695,
            553.2869215011597,
            50.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            166.0,
            6.0,
            50.0,
            22.0
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "recorder",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 6,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            186.56863498687744,
            517.9928016662598,
            220.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "FSC_20261026_quad_motion_recorder.js",
            "parameter_enable": 0
          },
          "text": "js FSC_20261026_quad_motion_recorder.js"
        }
      },
      {
        "box": {
          "id": "mode",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            184.60785055160522,
            467.01240634918213,
            140.0,
            22.0
          ],
          "text": "prepend mode"
        }
      },
      {
        "box": {
          "fontsize": 17.0,
          "id": "rtitle",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            214.01961708068848,
            808.1888980865479,
            335.0877161026001,
            25.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            5.0,
            160.19417256116867,
            25.0
          ],
          "text": "Mausrecord / LOOP"
        }
      },
      {
        "box": {
          "id": "rhelp",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            213.328191280365,
            840.5564022064209,
            364.9122772216797,
            20.0
          ],
          "text": "ARM → Punkt ziehen → Aufnahme → weiche Rückfahrt → Loop"
        }
      },
      {
        "box": {
          "id": "btnarm",
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
            65.0,
            231.7182741165161,
            115.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            4.0,
            31.0,
            70.87378543615341,
            28.155339419841766
          ],
          "text": "● ARM",
          "texton": "● ARM"
        }
      },
      {
        "box": {
          "id": "msgarm",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            65.0,
            288.41983783245087,
            90.0,
            22.0
          ],
          "text": "arm"
        }
      },
      {
        "box": {
          "id": "btnstop",
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
            188.52941942214966,
            231.7182741165161,
            115.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            81.0,
            31.0,
            70.87378543615341,
            28.155339419841766
          ],
          "text": "■ STOP",
          "texton": "■ STOP"
        }
      },
      {
        "box": {
          "id": "msgstop",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            188.52941942214966,
            272.89474725723267,
            90.0,
            22.0
          ],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "btnplay",
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
            72.09080231189728,
            325.8359270095825,
            115.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            155.0,
            31.0,
            70.87378543615341,
            28.155339419841766
          ],
          "text": "▶ PLAY",
          "texton": "▶ PLAY"
        }
      },
      {
        "box": {
          "id": "msgplay",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            72.09080231189728,
            367.0124001502991,
            90.0,
            22.0
          ],
          "text": "play"
        }
      },
      {
        "box": {
          "id": "btncancel",
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
            196.37255716323853,
            325.8359270095825,
            115.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            232.0,
            31.0,
            70.87378543615341,
            28.155339419841766
          ],
          "text": "ABBRUCH",
          "texton": "ABBRUCH"
        }
      },
      {
        "box": {
          "id": "msgcancel",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            196.37255716323853,
            367.0124001502991,
            90.0,
            22.0
          ],
          "text": "cancel"
        }
      },
      {
        "box": {
          "id": "durationlabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            343.4313898086548,
            437.6006398200989,
            125.88235819339752,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            62.0,
            61.0,
            70.44732677936554,
            20.0
          ],
          "text": "REC (Sek.)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "duration",
          "maxclass": "flonum",
          "maximum": 120.0,
          "minimum": 0.1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            337.54903650283813,
            378.7771067619324,
            70.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            4.0,
            60.0,
            48.5436886548996,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "durationinit",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            337.54903650283813,
            355.24769353866577,
            140.0,
            22.0
          ],
          "text": "loadmess 10"
        }
      },
      {
        "box": {
          "id": "durationpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            337.54903650283813,
            408.1888732910156,
            140.0,
            22.0
          ],
          "text": "prepend duration"
        }
      },
      {
        "box": {
          "id": "closurelabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            482.6470847129822,
            478.77711296081543,
            180.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            195.0,
            61.0,
            91.58878433704376,
            20.0
          ],
          "text": "Loopend(Sek.)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "closure",
          "maxclass": "flonum",
          "maximum": 30.0,
          "minimum": 0.1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            506.1764979362488,
            419.9535799026489,
            70.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            141.0,
            60.0,
            43.92523330450058,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "closureinit",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            506.1764979362488,
            388.58102893829346,
            140.0,
            22.0
          ],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "id": "closurepre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            506.1764979362488,
            449.3653464317322,
            140.0,
            22.0
          ],
          "text": "prepend closure"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.933333333333333,
            0.0,
            1.0
          ],
          "id": "status",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            276.7647190093994,
            719.9535984992981,
            221.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            4.0,
            83.0,
            318.44659757614136,
            20.0
          ],
          "text": "Bereit. ARM, dann gelben Punkt ziehen."
        }
      },
      {
        "box": {
          "id": "statuspre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            276.7647190093994,
            682.698694229126,
            140.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "slots",
          "items": [
            "1 Flieger (leer)",
            ",",
            "2 Achter (leer)",
            ",",
            "3 Niere (leer)",
            ",",
            "4 Bewegung 4 (leer)",
            ",",
            "5 Bewegung 5 (leer)",
            ",",
            "6 Bewegung 6 (leer)",
            ",",
            "7 Bewegung 7 (leer)",
            ",",
            "8 Bewegung 8 (leer)"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            184.60785055160522,
            743.4830117225647,
            250.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            4.0,
            126.0,
            133.0097069144249,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "slotpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            184.60785055160522,
            770.9339938163757,
            140.0,
            22.0
          ],
          "text": "prepend slot"
        }
      },
      {
        "box": {
          "id": "nameedit",
          "keymode": 1,
          "maxclass": "textedit",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "int",
            "",
            ""
          ],
          "outputmode": 1,
          "parameter_enable": 0,
          "patching_rect": [
            349.31374311447144,
            592.502610206604,
            250.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            142.0,
            124.0,
            91.26213467121124,
            26.213591873645782
          ],
          "text": "Flieger"
        }
      },
      {
        "box": {
          "id": "namert",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            349.31374311447144,
            623.8751611709595,
            140.0,
            22.0
          ],
          "text": "route text"
        }
      },
      {
        "box": {
          "id": "namepre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            349.31374311447144,
            655.2477121353149,
            140.0,
            22.0
          ],
          "text": "prepend rename"
        }
      },
      {
        "box": {
          "id": "storebtn",
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
            733.6274924278259,
            274.8555316925049,
            160.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            220.0,
            151.0,
            99.99999922513962,
            26.168224096298218
          ],
          "text": "↓ STORERec",
          "texton": "↓ STOREREc",
          "textoncolor": [
            1.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "storemsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            733.6274924278259,
            316.03200483322144,
            100.0,
            22.0
          ],
          "text": "store"
        }
      },
      {
        "box": {
          "id": "recallbtn",
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
            545.3921866416931,
            274.8555316925049,
            160.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            237.0,
            123.0,
            83.49514448642731,
            26.213591873645782
          ],
          "text": "▶ ABRUFEN",
          "texton": "▶ ABRUFEN"
        }
      },
      {
        "box": {
          "id": "recallmsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            545.3921866416931,
            316.03200483322144,
            100.0,
            22.0
          ],
          "text": "recall"
        }
      },
      {
        "box": {
          "id": "writebtn",
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
            684.4195249080658,
            365.8037086725235,
            210.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            4.0,
            151.0,
            101.86915808916092,
            26.168224096298218
          ],
          "text": "Bank sichern",
          "texton": "Bank sichern"
        }
      },
      {
        "box": {
          "id": "writedialog",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            684.4195249080658,
            411.0091848373413,
            160.0,
            22.0
          ],
          "text": "FSC_20261026_motion_bank.json"
        }
      },
      {
        "box": {
          "id": "writepre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            684.4195249080658,
            449.3653464317322,
            140.0,
            22.0
          ],
          "text": "prepend write"
        }
      },
      {
        "box": {
          "id": "readbtn",
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
            325.78432989120483,
            229.7574896812439,
            210.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            121.0,
            152.0,
            84.11214888095856,
            26.168224096298218
          ],
          "text": "Bank laden",
          "texton": "Bank laden"
        }
      },
      {
        "box": {
          "id": "readdialog",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            325.78432989120483,
            261.13004064559937,
            160.0,
            22.0
          ],
          "text": "FSC_20261026_motion_bank.json"
        }
      },
      {
        "box": {
          "id": "readpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            325.78432989120483,
            302.3065137863159,
            140.0,
            22.0
          ],
          "text": "prepend read"
        }
      },
      {
        "box": {
          "id": "persistnote",
          "linecount": 7,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            736.0155549049377,
            168.7280723452568,
            155.22387504577637,
            100.0
          ],
          "text": "STORE ersetzt den gewählten Platz. Dauerhaft: Bank sichern.\nName bearbeiten und Enter drücken. Leere Plätze enthalten keine Bewegung."
        }
      },
      {
        "box": {
          "id": "recinit",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            168.337053835392,
            137.95884054899216,
            140.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "recdefer",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            168.337053835392,
            168.7280723452568,
            140.0,
            22.0
          ],
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "recinitmsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            168.337053835392,
            200.45884263515472,
            100.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "angle": 270.0,
          "bgcolor": [
            0.7019607843137254,
            0.6745098039215687,
            0.6745098039215687,
            1.0
          ],
          "id": "obj-23",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            65.0,
            115.0,
            834.0555853843689,
            775.689906001091
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            322.44659757614136,
            179.0
          ],
          "proportion": 0.5
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-7",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            184.60790844448843,
            55.00000125909424,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-8",
          "index": 2,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            219.60790844448843,
            55.00000125909424,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-9",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            180.56860244448853,
            950.6899232590943,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-10",
          "index": 2,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            215.56860244448853,
            950.6899232590943,
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
            "msgarm",
            0
          ],
          "source": [
            "btnarm",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "msgcancel",
            0
          ],
          "source": [
            "btncancel",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "msgplay",
            0
          ],
          "source": [
            "btnplay",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "msgstop",
            0
          ],
          "source": [
            "btnstop",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "closurepre",
            0
          ],
          "source": [
            "closure",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "closure",
            0
          ],
          "source": [
            "closureinit",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "closurepre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "durationpre",
            0
          ],
          "source": [
            "duration",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "duration",
            0
          ],
          "source": [
            "durationinit",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "durationpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "mode",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "msgarm",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "msgcancel",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "msgplay",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "msgstop",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "namert",
            0
          ],
          "source": [
            "nameedit",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "namepre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "namepre",
            0
          ],
          "source": [
            "namert",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mode",
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
            "recorder",
            0
          ],
          "source": [
            "obj-8",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "readdialog",
            0
          ],
          "source": [
            "readbtn",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "readpre",
            0
          ],
          "source": [
            "readdialog",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "readpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recallmsg",
            0
          ],
          "source": [
            "recallbtn",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "recallmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recinitmsg",
            0
          ],
          "source": [
            "recdefer",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recdefer",
            0
          ],
          "source": [
            "recinit",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "recinitmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "nameedit",
            0
          ],
          "source": [
            "recorder",
            4
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
            "recorder",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            1
          ],
          "source": [
            "recorder",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-9",
            0
          ],
          "source": [
            "recorder",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "slots",
            0
          ],
          "source": [
            "recorder",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "statuspre",
            0
          ],
          "source": [
            "recorder",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "slotpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "slotpre",
            0
          ],
          "source": [
            "slots",
            0
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
            "statuspre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "storemsg",
            0
          ],
          "source": [
            "storebtn",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "storemsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "writedialog",
            0
          ],
          "source": [
            "writebtn",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "writepre",
            0
          ],
          "source": [
            "writedialog",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "recorder",
            0
          ],
          "source": [
            "writepre",
            0
          ]
        }
      }
    ]
  }
}
