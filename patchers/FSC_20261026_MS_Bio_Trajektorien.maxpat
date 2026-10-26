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
      219.0,
      153.0,
      1095.0,
      884.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "maneuver_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            891.6666581630707,
            353.0,
            130.0,
            22.0
          ],
          "text": "send #1FSC_20261026__Maneuver"
        }
      },
      {
        "box": {
          "id": "maneuver_turn_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1032.1428472995758,
            353.0,
            150.0,
            22.0
          ],
          "text": "send #1FSC_20261026__ManeuverTurn"
        }
      },
      {
        "box": {
          "id": "maneuver_accel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            891.6666581630707,
            388.71428537368774,
            150.0,
            22.0
          ],
          "text": "send #1FSC_20261026__ManeuverAccel"
        }
      },
      {
        "box": {
          "id": "maneuver_accelint_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1052.3809423446655,
            388.71428537368774,
            195.0,
            22.0
          ],
          "text": "send #1FSC_20261026__ManeuverAccelIntensity"
        }
      },
      {
        "box": {
          "id": "maneuver_speed_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            891.6666581630707,
            423.23809456825256,
            155.0,
            22.0
          ],
          "text": "send #1FSC_20261026__ManeuverSpeed"
        }
      },
      {
        "box": {
          "id": "maneuver_js",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 5,
          "outlettype": [
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            891.6666581630707,
            283.3333306312561,
            130.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "FSC_20261026_bio_maneuver.js",
            "parameter_enable": 0
          },
          "text": "js FSC_20261026_bio_maneuver.js"
        }
      },
      {
        "box": {
          "id": "maneuver_meta_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1029.6796119213104,
            283.3333306312561,
            125.0,
            22.0
          ],
          "text": "send #1FSC_20261026__Flugmeta"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            678.8205523490906,
            353.0,
            144.0,
            22.0
          ],
          "text": "send #1FSC_20261026__Flugkoordinaten"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "linecount": 4,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            783.3334323167801,
            769.0,
            50.0,
            62.0
          ],
          "text": "0.219807 0.319497"
        }
      },
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            987.1796119213104,
            25.0,
            210.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            87.0,
            1.0,
            40.0,
            20.0
          ],
          "text": "Data"
        }
      },
      {
        "box": {
          "comment": "start / stop / restart / flight / speed / mode / loop / firstflight / lastflight / species 0 (Fruchtfliege) oder 1 (Moskito)",
          "id": "in",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            381.9277249574661,
            20.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "js",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            536.5591634511948,
            164.40378427505493,
            130.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "FSC_20261026_bio_trajektorien.js",
            "parameter_enable": 0
          },
          "text": "js FSC_20261026_bio_trajektorien.js"
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
            987.1796119213104,
            69.87180054187775,
            85.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            30.0,
            58.0,
            22.0
          ],
          "text": "Start",
          "textoncolor": [
            1.0,
            0.717647058823529,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "startbang",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            987.1796119213104,
            104.4871895313263,
            30.0,
            22.0
          ],
          "text": "t b"
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
            987.1796119213104,
            139.10257852077484,
            65.0,
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
            1083.3334702253342,
            69.87180054187775,
            85.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            71.0,
            30.0,
            58.0,
            22.0
          ],
          "text": "Stop",
          "textoncolor": [
            1.0,
            0.717647058823529,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "stopbang",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1083.3334702253342,
            104.4871895313263,
            30.0,
            22.0
          ],
          "text": "t b"
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
            1083.3334702253342,
            139.10257852077484,
            65.0,
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
            1178.2052770853043,
            69.87180054187775,
            85.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            58.0,
            58.0,
            22.0
          ],
          "text": "Neustart",
          "textoncolor": [
            1.0,
            0.717647058823529,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "restartbang",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1178.2052770853043,
            104.4871895313263,
            30.0,
            22.0
          ],
          "text": "t b"
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
            1178.2052770853043,
            139.10257852077484,
            65.0,
            22.0
          ],
          "text": "restart"
        }
      },
      {
        "box": {
          "id": "label_flight",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            110.84337759017944,
            139.10257852077484,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            88.0,
            70.0,
            20.0
          ],
          "text": "Flug 1–700"
        }
      },
      {
        "box": {
          "id": "flight",
          "maxclass": "number",
          "maximum": 700,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            110.84337759017944,
            164.40378427505493,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            109.0,
            70.0,
            22.0
          ],
          "varname": "flight_number"
        }
      },
      {
        "box": {
          "id": "pre_flight",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.84337759017944,
            194.52426731586456,
            110.0,
            22.0
          ],
          "text": "prepend flight"
        }
      },
      {
        "box": {
          "id": "label_speed",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            271.0843473672867,
            139.10257852077484,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            72.0,
            88.0,
            57.0,
            20.0
          ],
          "text": "Tempo"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "speed",
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
            271.0843473672867,
            164.40378427505493,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            76.0,
            109.0,
            53.0,
            22.0
          ],
          "varname": "tempo"
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
            271.0843473672867,
            194.52426731586456,
            110.0,
            22.0
          ],
          "text": "prepend speed"
        }
      },
      {
        "box": {
          "id": "label_time",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            110.84337759017944,
            239.10258221626282,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            142.0,
            70.0,
            20.0
          ],
          "text": "Position/s"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "time",
          "ignoreclick": 1,
          "maxclass": "flonum",
          "maximum": 99999.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            110.84337759017944,
            264.4037879705429,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            163.0,
            56.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "label_duration",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            271.0843473672867,
            239.10258221626282,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            76.0,
            142.0,
            53.0,
            20.0
          ],
          "text": "Gesamt"
        }
      },
      {
        "box": {
          "annotation": "Gesamte Auswahl inklusive Verbindungen bei Tempo 1. Loop: eine Runde inklusive Rückverbindung.",
          "format": 6,
          "id": "duration",
          "ignoreclick": 1,
          "maxclass": "flonum",
          "maximum": 1000000000.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            271.0843473672867,
            264.4037879705429,
            95.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            68.0,
            163.0,
            61.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "numinlets": 12,
          "numoutlets": 12,
          "outlettype": [
            "",
            "",
            "",
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
            258.0645275115967,
            422.58066380023956,
            510.0,
            22.0
          ],
          "text": "route flight speed time duration mode loop first last species limits flightlabel"
        }
      },
      {
        "box": {
          "id": "stat",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            584.3749777078629,
            228.20515704154968,
            150.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            68.0,
            58.0,
            61.0,
            22.0
          ],
          "text": "Bereit"
        }
      },
      {
        "box": {
          "id": "note",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            497.2693041563034,
            263.5416566133499,
            197.0,
            33.0
          ],
          "text": "Messbahnen + Verbindungsflüge.\nArtwechsel stoppt und setzt zurück."
        }
      },
      {
        "box": {
          "comment": "XY-Liste 0..1 → Panning-Switch",
          "id": "out",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            433.3333524465561,
            532.2580879926682,
            30.0,
            30.0
          ]
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
            443.58979964256287,
            97.43590974807739,
            65.0,
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
            443.58979964256287,
            132.05129873752594,
            65.0,
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
            443.58979964256287,
            167.94873917102814,
            40.0,
            22.0
          ],
          "text": "init"
        }
      },
      {
        "box": {
          "id": "label_mode",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            287.1795234680176,
            598.7180243730545,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            197.0,
            70.0,
            20.0
          ],
          "text": "Auswahl"
        }
      },
      {
        "box": {
          "id": "mode",
          "items": [
            "Einzeln",
            ",",
            "Bereich",
            ",",
            "Alle"
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
            287.1795234680176,
            628.2052075862885,
            100.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            218.0,
            70.0,
            22.0
          ],
          "textcolor": [
            0.58784,
            0.82881,
            0.43166,
            1.0
          ],
          "varname": "selection_mode"
        }
      },
      {
        "box": {
          "id": "pre_mode",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            287.1795234680176,
            667.9488023519516,
            145.0,
            22.0
          ],
          "text": "prepend mode"
        }
      },
      {
        "box": {
          "id": "label_loop",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            452.5641597509384,
            598.7180243730545,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            81.0,
            197.0,
            48.0,
            20.0
          ],
          "text": "Loop"
        }
      },
      {
        "box": {
          "checkedcolor": [
            0.168627450980392,
            1.0,
            0.0,
            1.0
          ],
          "id": "loop",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            452.5641597509384,
            628.2052075862885,
            100.00000000000001,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            107.0,
            218.0,
            22.0,
            22.0
          ],
          "uncheckedcolor": [
            0.686274509803922,
            0.0,
            0.0,
            1.0
          ],
          "varname": "loop_enabled"
        }
      },
      {
        "box": {
          "id": "pre_loop",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            452.5641597509384,
            667.9488023519516,
            145.0,
            22.0
          ],
          "text": "prepend loop"
        }
      },
      {
        "box": {
          "id": "label_first",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            617.9487960338593,
            598.7180243730545,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            253.0,
            56.0,
            20.0
          ],
          "text": "Von Flug"
        }
      },
      {
        "box": {
          "id": "first",
          "maxclass": "number",
          "maximum": 700,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            617.9487960338593,
            628.2052075862885,
            100.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            274.0,
            56.0,
            22.0
          ],
          "varname": "range_first"
        }
      },
      {
        "box": {
          "id": "pre_first",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            617.9487960338593,
            667.9488023519516,
            145.0,
            22.0
          ],
          "text": "prepend firstflight"
        }
      },
      {
        "box": {
          "id": "label_last",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            783.3334323167801,
            598.7180243730545,
            150.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            76.0,
            253.0,
            53.0,
            20.0
          ],
          "text": "Bis Flug"
        }
      },
      {
        "box": {
          "id": "last",
          "maxclass": "number",
          "maximum": 700,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            783.3334323167801,
            628.2052075862885,
            100.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            82.0,
            274.0,
            47.0,
            22.0
          ],
          "varname": "range_last"
        }
      },
      {
        "box": {
          "id": "pre_last",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            783.3334323167801,
            667.9488023519516,
            145.0,
            22.0
          ],
          "text": "prepend lastflight"
        }
      },
      {
        "box": {
          "id": "species",
          "legacytextcolor": 1,
          "maxclass": "textbutton",
          "mode": 1,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            287.1795234680176,
            738.4616317749023,
            205.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            80.0,
            22.0
          ],
          "text": "Fruchtfliege",
          "textcolor": [
            0.58784,
            0.82881,
            0.43166,
            1.0
          ],
          "texton": "Moskito",
          "textoncolor": [
            0.2627450980392157,
            0.6274509803921569,
            1.0,
            1.0
          ],
          "textovercolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "usetextovercolor": 1
        }
      },
      {
        "box": {
          "id": "pre_species",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            287.1795234680176,
            778.2052265405655,
            110.0,
            22.0
          ],
          "text": "prepend species"
        }
      },
      {
        "box": {
          "angle": 270.0,
          "bgcolor": [
            0.8235294117647058,
            0.8509803921568627,
            0.8156862745098039,
            1.0
          ],
          "id": "obj-1",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            77.84337759017944,
            331.1828103065491,
            128.0,
            128.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            144.0,
            304.0
          ],
          "proportion": 0.5
        }
      },
      {
        "box": {
          "id": "setup-autopattr",
          "maxclass": "newobj",
          "text": "autopattr @autorestore 0",
          "patching_rect": [
            20.0,
            20.0,
            150.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "stop-reset-route",
          "maxclass": "newobj",
          "text": "route stop",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            540.0,
            100.0,
            70.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "stop-reset-msg",
          "maxclass": "message",
          "text": "reset",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            540.0,
            135.0,
            42.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "swarm-route",
          "maxclass": "newobj",
          "patching_rect": [
            680.0,
            104.0,
            820.0,
            22.0
          ],
          "text": "route voiceid density grid gridvoices swarms densitygroup gridgroup orbitgroup ringmodegroup orbitspreadgroup pulseinnergroup pulseoutergroup pulsetempogroup pulsephasegroup pulsetempospreadgroup snakegroup snakespacinggroup alignmentgroup escapegroup escapestrengthgroup escapereturngroup portalmode portalx portaly portaldirection portalwidth portalspeed portaldeviation portalorigin wavemodegroup wavetypegroup waverungroup waveamplitudegroup wavelengthgroup wavespeedgroup wavewidthgroup landingmode landingpoints landingcycle landingstartwindow landingendwindow landingtrigger flocking flockneighbors flockseparation formationshape flowamount flowmode flowdirection flowspeed flowlayers flowcenter flowoffset swarmtickleader swarmtickrender snakedeviationgroup",
          "numoutlets": 57,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "swarm-attractor",
          "maxclass": "newobj",
          "patching_rect": [
            680.0,
            245.0,
            170.0,
            22.0
          ],
          "text": "js FSC_20261026_swarm_attractor.js #2",
          "numinlets": 57,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "swarm-note",
          "maxclass": "comment",
          "patching_rect": [
            680.0,
            200.0,
            400.0,
            34.0
          ],
          "text": "Schwarmebene: Rohbahn → Schwarmbewegung. Outlet 1: Raum-XY für Panning/Anzeige und XY-Mappings. Outlet 2: Analyse-XY für Manöver."
        }
      }
    ],
    "lines": [
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
            "pre_first",
            0
          ],
          "source": [
            "first",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_flight",
            0
          ],
          "source": [
            "flight",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
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
            "maneuver_js",
            1
          ],
          "order": 1,
          "source": [
            "js",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "maneuver_js",
            0
          ],
          "order": 0,
          "source": [
            "swarm-attractor",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "maneuver_meta_send",
            0
          ],
          "order": 0,
          "source": [
            "js",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-2",
            1
          ],
          "order": 1,
          "source": [
            "swarm-attractor",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "order": 2,
          "source": [
            "swarm-attractor",
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
          "order": 3,
          "source": [
            "swarm-attractor",
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
            "js",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "stat",
            1
          ],
          "source": [
            "js",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_last",
            0
          ],
          "source": [
            "last",
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
            "pre_loop",
            0
          ],
          "source": [
            "loop",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "maneuver_accel_send",
            0
          ],
          "source": [
            "maneuver_js",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "maneuver_accelint_send",
            0
          ],
          "source": [
            "maneuver_js",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "maneuver_send",
            0
          ],
          "source": [
            "maneuver_js",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "maneuver_speed_send",
            0
          ],
          "source": [
            "maneuver_js",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "maneuver_turn_send",
            0
          ],
          "source": [
            "maneuver_js",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_mode",
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
            "js",
            0
          ],
          "source": [
            "pre_first",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "source": [
            "pre_flight",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "source": [
            "pre_last",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "source": [
            "pre_loop",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "source": [
            "pre_mode",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
            0
          ],
          "source": [
            "pre_species",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
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
            "restartbang",
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
            "restartmsg",
            0
          ],
          "source": [
            "restartbang",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
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
            "duration",
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
            "first",
            0
          ],
          "order": 1,
          "source": [
            "route",
            9
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "first",
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
            "flight",
            0
          ],
          "order": 2,
          "source": [
            "route",
            9
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "flight",
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
            "label_flight",
            0
          ],
          "source": [
            "route",
            10
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "last",
            0
          ],
          "order": 0,
          "source": [
            "route",
            9
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "last",
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
            "loop",
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
            "mode",
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
            "species",
            0
          ],
          "source": [
            "route",
            8
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
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "time",
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
            "pre_species",
            0
          ],
          "source": [
            "species",
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
            "startbang",
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
            "startmsg",
            0
          ],
          "source": [
            "startbang",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
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
            "stopbang",
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
            "stopmsg",
            0
          ],
          "source": [
            "stopbang",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "js",
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
          "source": [
            "in",
            0
          ],
          "destination": [
            "stop-reset-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stop-reset-route",
            0
          ],
          "destination": [
            "stop-reset-msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stop-reset-msg",
            0
          ],
          "destination": [
            "maneuver_js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "in",
            0
          ],
          "destination": [
            "swarm-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            0
          ],
          "destination": [
            "swarm-attractor",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            1
          ],
          "destination": [
            "swarm-attractor",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            0
          ],
          "destination": [
            "swarm-attractor",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            2
          ],
          "destination": [
            "swarm-attractor",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            3
          ],
          "destination": [
            "swarm-attractor",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            4
          ],
          "destination": [
            "swarm-attractor",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            5
          ],
          "destination": [
            "swarm-attractor",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            6
          ],
          "destination": [
            "swarm-attractor",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            7
          ],
          "destination": [
            "swarm-attractor",
            8
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            8
          ],
          "destination": [
            "swarm-attractor",
            9
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            9
          ],
          "destination": [
            "swarm-attractor",
            10
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            10
          ],
          "destination": [
            "swarm-attractor",
            11
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            11
          ],
          "destination": [
            "swarm-attractor",
            12
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            12
          ],
          "destination": [
            "swarm-attractor",
            13
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            13
          ],
          "destination": [
            "swarm-attractor",
            14
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            14
          ],
          "destination": [
            "swarm-attractor",
            15
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            15
          ],
          "destination": [
            "swarm-attractor",
            16
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            16
          ],
          "destination": [
            "swarm-attractor",
            17
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            17
          ],
          "destination": [
            "swarm-attractor",
            18
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            18
          ],
          "destination": [
            "swarm-attractor",
            19
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            19
          ],
          "destination": [
            "swarm-attractor",
            20
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            20
          ],
          "destination": [
            "swarm-attractor",
            21
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            21
          ],
          "destination": [
            "swarm-attractor",
            22
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            22
          ],
          "destination": [
            "swarm-attractor",
            23
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            23
          ],
          "destination": [
            "swarm-attractor",
            24
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            24
          ],
          "destination": [
            "swarm-attractor",
            25
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            25
          ],
          "destination": [
            "swarm-attractor",
            26
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            26
          ],
          "destination": [
            "swarm-attractor",
            27
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            27
          ],
          "destination": [
            "swarm-attractor",
            28
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            28
          ],
          "destination": [
            "swarm-attractor",
            29
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-attractor",
            2
          ],
          "destination": [
            "maneuver_js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            29
          ],
          "destination": [
            "swarm-attractor",
            30
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            30
          ],
          "destination": [
            "swarm-attractor",
            31
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            31
          ],
          "destination": [
            "swarm-attractor",
            32
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            32
          ],
          "destination": [
            "swarm-attractor",
            33
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            33
          ],
          "destination": [
            "swarm-attractor",
            34
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            34
          ],
          "destination": [
            "swarm-attractor",
            35
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            35
          ],
          "destination": [
            "swarm-attractor",
            36
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            36
          ],
          "destination": [
            "swarm-attractor",
            37
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            37
          ],
          "destination": [
            "swarm-attractor",
            38
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            38
          ],
          "destination": [
            "swarm-attractor",
            39
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            39
          ],
          "destination": [
            "swarm-attractor",
            40
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            40
          ],
          "destination": [
            "swarm-attractor",
            41
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            41
          ],
          "destination": [
            "swarm-attractor",
            42
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            56
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            42
          ],
          "destination": [
            "swarm-attractor",
            43
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            43
          ],
          "destination": [
            "swarm-attractor",
            44
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            44
          ],
          "destination": [
            "swarm-attractor",
            45
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            45
          ],
          "destination": [
            "swarm-attractor",
            46
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            46
          ],
          "destination": [
            "swarm-attractor",
            47
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            47
          ],
          "destination": [
            "swarm-attractor",
            48
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            48
          ],
          "destination": [
            "swarm-attractor",
            49
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            49
          ],
          "destination": [
            "swarm-attractor",
            50
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            50
          ],
          "destination": [
            "swarm-attractor",
            51
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            51
          ],
          "destination": [
            "swarm-attractor",
            52
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            53
          ],
          "destination": [
            "swarm-attractor",
            54
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            54
          ],
          "destination": [
            "swarm-attractor",
            55
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            52
          ],
          "destination": [
            "swarm-attractor",
            53
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "swarm-route",
            55
          ],
          "destination": [
            "swarm-attractor",
            56
          ]
        }
      }
    ],
    "autosave": 0
  }
}
