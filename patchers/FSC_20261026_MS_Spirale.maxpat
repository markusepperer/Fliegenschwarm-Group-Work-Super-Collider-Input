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
      200.0,
      164.0,
      1376.0,
      607.0
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            115.15150499343872,
            -319.6969414949417,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            202.54775476455688,
            20.0
          ],
          "text": "SPIRALE · XY"
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
            115.15150499343872,
            -290.90906524658203,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            23.364485800266266,
            55.414008378982544,
            22.292991876602173
          ],
          "text": "Start"
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
            397.4999620914459,
            -209.99997997283936,
            80.0,
            22.0
          ],
          "text": "t b b"
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
            497.49995255470276,
            -209.99997997283936,
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
            230.30300998687744,
            -290.90906524658203,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            73.8317751288414,
            23.364485800266266,
            55.414008378982544,
            22.292991876602173
          ],
          "text": "Stop"
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
            397.4999620914459,
            -169.99998378753662,
            80.0,
            22.0
          ],
          "text": "t b b"
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
            497.49995255470276,
            -169.99998378753662,
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
            345.45451498031616,
            -290.90906524658203,
            105.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            146.72897082567215,
            23.364485800266266,
            55.414008378982544,
            22.292991876602173
          ],
          "text": "Neustart"
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
            397.4999620914459,
            -129.9999876022339,
            80.0,
            22.0
          ],
          "text": "t b b"
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
            497.49995255470276,
            -129.9999876022339,
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
            66.66666078567505,
            283.33330833911896,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            48.59813046455383,
            99.89809012413025,
            20.0
          ],
          "text": "Tempo (Wege/s)"
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
            66.66666078567505,
            306.0605790615082,
            100.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            71.02803683280945,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "l_turns",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            235.48387265205383,
            96.77419424057007,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            103.73831695318222,
            48.59813046455383,
            100.1847288608551,
            20.0
          ],
          "text": "Umrundungen"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "turns",
          "maxclass": "flonum",
          "maximum": 64.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            235.48387265205383,
            119.35483956336975,
            100.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            103.73831695318222,
            71.02803683280945,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "l_inner",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            66.66666078567505,
            336.3636066913605,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            96.26168149709702,
            99.89809012413025,
            20.0
          ],
          "text": "Innenradius"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "inner",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            66.66666078567505,
            359.0908774137497,
            100.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            119.62616729736328,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "l_outer",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            235.48387265205383,
            150.0000010728836,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            103.73831695318222,
            97.19626092910767,
            100.1847288608551,
            20.0
          ],
          "text": "Außenradius"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "outer",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            235.48387265205383,
            172.5806463956833,
            100.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            103.73831695318222,
            120.56074672937393,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "l_xscale",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            66.66666078567505,
            389.393905043602,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            142.99065309762955,
            99.89809012413025,
            20.0
          ],
          "text": "X-Skalierung"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "xscale",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            66.66666078567505,
            412.1211757659912,
            100.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            164.4859800338745,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "l_yscale",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            235.48387265205383,
            203.22580790519714,
            175.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            103.73831695318222,
            143.9252325296402,
            100.1847288608551,
            20.0
          ],
          "text": "Y-Skalierung"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "yscale",
          "maxclass": "flonum",
          "maximum": 1.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            235.48387265205383,
            225.80645322799683,
            100.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            103.73831695318222,
            165.42055946588516,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "l_direction",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            66.66666078567505,
            445.45450615882874,
            145.0,
            20.0
          ],
          "text": "Drehrichtung"
        }
      },
      {
        "box": {
          "id": "direction",
          "items": [
            "Uhrzeigersinn",
            ",",
            "Gegen Uhrzeigersinn"
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
            959.0908244848251,
            276.2727028131485,
            202.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9345794320106506,
            190.65420413017273,
            202.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "l_mode",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            66.66666078567505,
            480.3029879331589,
            145.0,
            20.0
          ],
          "text": "Ablauf"
        }
      },
      {
        "box": {
          "id": "mode",
          "items": [
            "Pingpong",
            ",",
            "Einwärts · Sprung",
            ",",
            "Auswärts · Sprung"
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
            1177.2726234197617,
            271.72724866867065,
            202.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9345794320106506,
            215.8878487944603,
            202.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "l_returnmode",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            66.66666078567505,
            513.6363183259964,
            145.0,
            20.0
          ],
          "text": "Pingpong-Rückweg"
        }
      },
      {
        "box": {
          "id": "returnmode",
          "items": [
            "Bahn zurück",
            ",",
            "Weiterdrehen"
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
            1398.4847251176834,
            271.72724866867065,
            202.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9345794320106506,
            240.1869140267372,
            202.0,
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
            474.2423824071884,
            566.6666166782379,
            170.0,
            22.0
          ],
          "text": "prepend speed"
        }
      },
      {
        "box": {
          "id": "pre_turns",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            474.2423824071884,
            601.515098452568,
            170.0,
            22.0
          ],
          "text": "prepend turns"
        }
      },
      {
        "box": {
          "id": "pre_inner",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            474.2423824071884,
            636.3635802268982,
            170.0,
            22.0
          ],
          "text": "prepend inner"
        }
      },
      {
        "box": {
          "id": "pre_outer",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            474.2423824071884,
            671.2120620012283,
            170.0,
            22.0
          ],
          "text": "prepend outer"
        }
      },
      {
        "box": {
          "id": "pre_xscale",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            474.2423824071884,
            707.5756951570511,
            170.0,
            22.0
          ],
          "text": "prepend xscale"
        }
      },
      {
        "box": {
          "id": "pre_yscale",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            474.2423824071884,
            742.4241769313812,
            170.0,
            22.0
          ],
          "text": "prepend yscale"
        }
      },
      {
        "box": {
          "id": "pre_direction",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            474.2423824071884,
            777.2726587057114,
            170.0,
            22.0
          ],
          "text": "prepend direction"
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
            474.2423824071884,
            812.1211404800415,
            170.0,
            22.0
          ],
          "text": "prepend mode"
        }
      },
      {
        "box": {
          "id": "pre_returnmode",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            474.2423824071884,
            846.9696222543716,
            170.0,
            22.0
          ],
          "text": "prepend returnmode"
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
            66.66666078567505,
            549.9999514818192,
            246.0,
            33.0
          ],
          "text": "Tempo 0.1 = 10 s pro Weg; Pingpong = 20 s.\n0 hält an. Radius 1 reicht bis zum Feldrand."
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            1.0,
            1.0,
            1.0
          ],
          "id": "status",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            911.0,
            106.27271604537964,
            140.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9345794320106506,
            290.65420335531235,
            201.95540606975555,
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
            959.9999084472656,
            40.0,
            185.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9345794320106506,
            264.48597925901413,
            201.95540606975555,
            22.0
          ],
          "text": "0.95 0.5"
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
            750.0,
            40.0,
            180.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "FSC_20261026_spirale.js",
            "parameter_enable": 0
          },
          "text": "js FSC_20261026_spirale.js"
        }
      },
      {
        "box": {
          "comment": "start/stop/restart oder benannte Parameter",
          "id": "in",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1128.7498923540115,
            -169.99998378753662,
            36.2499965429306,
            32.49999690055847
          ]
        }
      },
      {
        "box": {
          "comment": "X Y 0..1 → Daten-Switch",
          "id": "out",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            749.9999338388443,
            618.1817636489868,
            25.000000000000004,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "numinlets": 11,
          "numoutlets": 11,
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
            ""
          ],
          "patching_rect": [
            830.5,
            127.27271604537964,
            650.0,
            22.0
          ],
          "text": "route speed turns inner outer xscale yscale direction mode returnmode transition"
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
            911.0,
            82.25806510448456,
            140.0,
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
            770.0,
            -107.4999897480011,
            140.0,
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
            770.0,
            -72.4999930858612,
            140.0,
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
            770.0,
            -31.24999701976776,
            90.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "transition-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            66.0,
            590.0,
            140.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            318.0,
            104.0,
            20.0
          ],
          "text": "Übergang (ms)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "transition",
          "maxclass": "flonum",
          "maximum": 10000.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            66.0,
            613.0,
            100.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            104.0,
            318.0,
            100.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pre_transition",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            474.0,
            884.0,
            170.0,
            22.0
          ],
          "text": "prepend transition"
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
            "pre_direction",
            0
          ],
          "source": [
            "direction",
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
            "pre_inner",
            0
          ],
          "source": [
            "inner",
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
            "pre_outer",
            0
          ],
          "source": [
            "outer",
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
            "pre_direction",
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
            "pre_inner",
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
            "pre_mode",
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
            "pre_outer",
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
            "pre_returnmode",
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
            "pre_transition",
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
            "pre_turns",
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
            "pre_xscale",
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
            "pre_yscale",
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
            "pre_returnmode",
            0
          ],
          "source": [
            "returnmode",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "direction",
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
            "inner",
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
            "mode",
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
            "outer",
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
            "returnmode",
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
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "transition",
            0
          ],
          "source": [
            "route",
            9
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "turns",
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
            "xscale",
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
            "yscale",
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
            "pre_transition",
            0
          ],
          "source": [
            "transition",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_turns",
            0
          ],
          "source": [
            "turns",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_xscale",
            0
          ],
          "source": [
            "xscale",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pre_yscale",
            0
          ],
          "source": [
            "yscale",
            0
          ]
        }
      }
    ]
  }
}
