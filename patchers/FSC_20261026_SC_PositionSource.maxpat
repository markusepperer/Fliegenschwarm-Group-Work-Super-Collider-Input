{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "rect": [
      100.0,
      100.0,
      1360.0,
      960.0
    ],
    "bglocked": 0,
    "default_fontsize": 12.0,
    "default_fontname": "Arial",
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "text": "OSC / INTERNE POSITION — Quellenwahl, Speicher und Kreis-Grundstellung in Max",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            10.0,
            1200.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "commands",
          "maxclass": "inlet",
          "text": "",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            20.0,
            70.0,
            55.0,
            22.0
          ],
          "index": 1
        }
      },
      {
        "box": {
          "id": "commandsnote",
          "maxclass": "comment",
          "text": "Befehle",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            100.0,
            220.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "internalxy",
          "maxclass": "inlet",
          "text": "",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            265.0,
            70.0,
            55.0,
            22.0
          ],
          "index": 2
        }
      },
      {
        "box": {
          "id": "internalxynote",
          "maxclass": "comment",
          "text": "Raum-XY intern",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            265.0,
            100.0,
            220.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "internalanalysis",
          "maxclass": "inlet",
          "text": "",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            510.0,
            70.0,
            55.0,
            22.0
          ],
          "index": 3
        }
      },
      {
        "box": {
          "id": "internalanalysisnote",
          "maxclass": "comment",
          "text": "Analyse-XY intern",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            510.0,
            100.0,
            220.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "internalmeta",
          "maxclass": "inlet",
          "text": "",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            755.0,
            70.0,
            55.0,
            22.0
          ],
          "index": 4
        }
      },
      {
        "box": {
          "id": "internalmetanote",
          "maxclass": "comment",
          "text": "Metadaten intern",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            755.0,
            100.0,
            220.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "internalreset",
          "maxclass": "inlet",
          "text": "",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            1000.0,
            70.0,
            55.0,
            22.0
          ],
          "index": 5
        }
      },
      {
        "box": {
          "id": "internalresetnote",
          "maxclass": "comment",
          "text": "Reset intern",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1000.0,
            100.0,
            220.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "xyout",
          "maxclass": "outlet",
          "text": "",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            1800.0,
            55.0,
            22.0
          ],
          "index": 1
        }
      },
      {
        "box": {
          "id": "analysisout",
          "maxclass": "outlet",
          "text": "",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            265.0,
            1800.0,
            55.0,
            22.0
          ],
          "index": 2
        }
      },
      {
        "box": {
          "id": "metaout",
          "maxclass": "outlet",
          "text": "",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            510.0,
            1800.0,
            55.0,
            22.0
          ],
          "index": 3
        }
      },
      {
        "box": {
          "id": "controlout",
          "maxclass": "outlet",
          "text": "",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            755.0,
            1800.0,
            55.0,
            22.0
          ],
          "index": 4
        }
      },
      {
        "box": {
          "id": "resetout",
          "maxclass": "outlet",
          "text": "",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1000.0,
            1800.0,
            55.0,
            22.0
          ],
          "index": 5
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "text": "route external externalpos externalstate externaltick voiceid start restart",
          "numinlets": 1,
          "numoutlets": 8,
          "patching_rect": [
            20.0,
            150.0,
            480.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "modeorder",
          "maxclass": "newobj",
          "text": "t i i",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20.0,
            200.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "inverse",
          "maxclass": "newobj",
          "text": "!- 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            120.0,
            235.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "internalgate0",
          "maxclass": "newobj",
          "text": "gate 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            220.0,
            300.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "internalgate1",
          "maxclass": "newobj",
          "text": "gate 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            465.0,
            300.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "internalgate2",
          "maxclass": "newobj",
          "text": "gate 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            710.0,
            300.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "internalgate3",
          "maxclass": "newobj",
          "text": "gate 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            955.0,
            300.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "selectmode",
          "maxclass": "newobj",
          "text": "sel 1 0",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20.0,
            265.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "enter",
          "maxclass": "newobj",
          "text": "t b b b b b",
          "numinlets": 1,
          "numoutlets": 5,
          "patching_rect": [
            20.0,
            350.0,
            70.4,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "stop",
          "maxclass": "message",
          "text": "stop",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            700.0,
            410.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "clear",
          "maxclass": "message",
          "text": "0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            140.0,
            410.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "resetone",
          "maxclass": "message",
          "text": "1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            220.0,
            410.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "resetmessage",
          "maxclass": "message",
          "text": "reset",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1000.0,
            1510.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "exit",
          "maxclass": "newobj",
          "text": "t b b",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            80.0,
            310.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "circlelabel",
          "maxclass": "comment",
          "text": "GRUNDSTELLUNG: feste Kreisposition pro ID; keine Verbindung zu Formation/Dichte.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            490.0,
            770.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "ownid",
          "maxclass": "newobj",
          "text": "i 0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            20.0,
            540.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "circle",
          "maxclass": "newobj",
          "text": "coll #0FSC_20261026_SC_circle @embed 1",
          "numinlets": 1,
          "numoutlets": 4,
          "patching_rect": [
            20.0,
            580.0,
            243.20000000000002,
            22.0
          ],
          "coll_data": {
            "count": 50,
            "data": [
              {
                "key": 1,
                "value": [
                  0.5,
                  0.5
                ]
              },
              {
                "key": 2,
                "value": [
                  0.5,
                  0.4
                ]
              },
              {
                "key": 3,
                "value": [
                  0.5951056516295153,
                  0.46909830056250523
                ]
              },
              {
                "key": 4,
                "value": [
                  0.5587785252292473,
                  0.5809016994374947
                ]
              },
              {
                "key": 5,
                "value": [
                  0.4412214747707527,
                  0.5809016994374947
                ]
              },
              {
                "key": 6,
                "value": [
                  0.40489434837048466,
                  0.4690983005625053
                ]
              },
              {
                "key": 7,
                "value": [
                  0.5618033988749895,
                  0.3097886967409693
                ]
              },
              {
                "key": 8,
                "value": [
                  0.6618033988749895,
                  0.3824429495415054
                ]
              },
              {
                "key": 9,
                "value": [
                  0.7,
                  0.5
                ]
              },
              {
                "key": 10,
                "value": [
                  0.6618033988749895,
                  0.6175570504584946
                ]
              },
              {
                "key": 11,
                "value": [
                  0.5618033988749895,
                  0.6902113032590307
                ]
              },
              {
                "key": 12,
                "value": [
                  0.4381966011250105,
                  0.6902113032590307
                ]
              },
              {
                "key": 13,
                "value": [
                  0.3381966011250105,
                  0.6175570504584946
                ]
              },
              {
                "key": 14,
                "value": [
                  0.3,
                  0.5
                ]
              },
              {
                "key": 15,
                "value": [
                  0.3381966011250105,
                  0.3824429495415054
                ]
              },
              {
                "key": 16,
                "value": [
                  0.43819660112501047,
                  0.3097886967409693
                ]
              },
              {
                "key": 17,
                "value": [
                  0.5,
                  0.19999999999999996
                ]
              },
              {
                "key": 18,
                "value": [
                  0.6301651217352675,
                  0.22970933962927426
                ]
              },
              {
                "key": 19,
                "value": [
                  0.734549444740409,
                  0.31295305944237994
                ]
              },
              {
                "key": 20,
                "value": [
                  0.7924783736545471,
                  0.43324371981310567
                ]
              },
              {
                "key": 21,
                "value": [
                  0.7924783736545471,
                  0.5667562801868943
                ]
              },
              {
                "key": 22,
                "value": [
                  0.734549444740409,
                  0.6870469405576201
                ]
              },
              {
                "key": 23,
                "value": [
                  0.6301651217352675,
                  0.7702906603707258
                ]
              },
              {
                "key": 24,
                "value": [
                  0.5,
                  0.8
                ]
              },
              {
                "key": 25,
                "value": [
                  0.3698348782647326,
                  0.7702906603707258
                ]
              },
              {
                "key": 26,
                "value": [
                  0.26545055525959105,
                  0.6870469405576201
                ]
              },
              {
                "key": 27,
                "value": [
                  0.2075216263454529,
                  0.5667562801868944
                ]
              },
              {
                "key": 28,
                "value": [
                  0.20752162634545285,
                  0.43324371981310594
                ]
              },
              {
                "key": 29,
                "value": [
                  0.265450555259591,
                  0.31295305944237994
                ]
              },
              {
                "key": 30,
                "value": [
                  0.36983487826473277,
                  0.22970933962927415
                ]
              },
              {
                "key": 31,
                "value": [
                  0.5625737860160924,
                  0.10492466376194487
                ]
              },
              {
                "key": 32,
                "value": [
                  0.6815961998958188,
                  0.1435973903246528
                ]
              },
              {
                "key": 33,
                "value": [
                  0.7828427124746191,
                  0.217157287525381
                ]
              },
              {
                "key": 34,
                "value": [
                  0.8564026096753472,
                  0.31840380010418123
                ]
              },
              {
                "key": 35,
                "value": [
                  0.8950753362380551,
                  0.43742621398390763
                ]
              },
              {
                "key": 36,
                "value": [
                  0.8950753362380551,
                  0.5625737860160923
                ]
              },
              {
                "key": 37,
                "value": [
                  0.8564026096753472,
                  0.6815961998958188
                ]
              },
              {
                "key": 38,
                "value": [
                  0.7828427124746191,
                  0.782842712474619
                ]
              },
              {
                "key": 39,
                "value": [
                  0.6815961998958188,
                  0.8564026096753472
                ]
              },
              {
                "key": 40,
                "value": [
                  0.5625737860160924,
                  0.8950753362380551
                ]
              },
              {
                "key": 41,
                "value": [
                  0.4374262139839077,
                  0.8950753362380551
                ]
              },
              {
                "key": 42,
                "value": [
                  0.31840380010418146,
                  0.8564026096753472
                ]
              },
              {
                "key": 43,
                "value": [
                  0.217157287525381,
                  0.7828427124746191
                ]
              },
              {
                "key": 44,
                "value": [
                  0.14359739032465285,
                  0.6815961998958188
                ]
              },
              {
                "key": 45,
                "value": [
                  0.10492466376194493,
                  0.5625737860160924
                ]
              },
              {
                "key": 46,
                "value": [
                  0.10492466376194487,
                  0.4374262139839077
                ]
              },
              {
                "key": 47,
                "value": [
                  0.1435973903246528,
                  0.31840380010418134
                ]
              },
              {
                "key": 48,
                "value": [
                  0.21715728752538094,
                  0.217157287525381
                ]
              },
              {
                "key": 49,
                "value": [
                  0.31840380010418123,
                  0.14359739032465285
                ]
              },
              {
                "key": 50,
                "value": [
                  0.4374262139839076,
                  0.10492466376194493
                ]
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "current",
          "maxclass": "newobj",
          "text": "zl reg 0.5 0.5",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            400.0,
            1210.0,
            89.60000000000001,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "voiceorder",
          "maxclass": "newobj",
          "text": "t i i i",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            850.0,
            200.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "voicepre",
          "maxclass": "newobj",
          "text": "prepend voiceid",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1010.0,
            235.0,
            96.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "latecircle",
          "maxclass": "newobj",
          "text": "gate 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            850.0,
            265.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "startgate",
          "maxclass": "newobj",
          "text": "gate 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1040.0,
            370.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "restartgate",
          "maxclass": "newobj",
          "text": "gate 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1160.0,
            370.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "startmsg",
          "maxclass": "message",
          "text": "start",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1040.0,
            410.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "restartmsg",
          "maxclass": "message",
          "text": "restart",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            1160.0,
            410.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "receivenote",
          "maxclass": "comment",
          "text": "EXTERNE DATEN: neuestes XY speichern. Nach 250 ms Pause wird beim nächsten Paket die Analyse neu angesetzt.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            400.0,
            490.0,
            850.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "received",
          "maxclass": "newobj",
          "text": "t l b b",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            400.0,
            540.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "latest",
          "maxclass": "newobj",
          "text": "zl reg",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            400.0,
            700.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "hasone",
          "maxclass": "message",
          "text": "1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            630.0,
            580.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "hasallow",
          "maxclass": "newobj",
          "text": "pak 0 0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            630.0,
            850.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "stale",
          "maxclass": "newobj",
          "text": "i 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            800.0,
            540.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "stalefirst",
          "maxclass": "newobj",
          "text": "sel 1",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            800.0,
            580.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "deadlineorder",
          "maxclass": "newobj",
          "text": "t b b b",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            800.0,
            625.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "stalezero",
          "maxclass": "message",
          "text": "0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            970.0,
            665.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "canceldeadline",
          "maxclass": "message",
          "text": "stop",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            880.0,
            665.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "deadline",
          "maxclass": "newobj",
          "text": "delay 250",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            800.0,
            710.0,
            57.6,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "staleone",
          "maxclass": "message",
          "text": "1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            800.0,
            755.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "allowlabel",
          "maxclass": "comment",
          "text": "VORHANDENE MAX-REGLER: Nur ID <= aktive Anzahl und ID <= davon bewegt sowie Start geben die neuesten XY frei.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            770.0,
            600.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "state",
          "maxclass": "newobj",
          "text": "unpack 0 0 0",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20.0,
            825.0,
            76.80000000000001,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "allowargs",
          "maxclass": "newobj",
          "text": "pak 0 0 0 0",
          "numinlets": 4,
          "numoutlets": 1,
          "patching_rect": [
            20.0,
            880.0,
            70.4,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "allow",
          "maxclass": "newobj",
          "text": "expr ($i1 > 0) && ($i1 <= $i2) && ($i1 <= $i3) && ($i4 != 0)",
          "numinlets": 4,
          "numoutlets": 1,
          "patching_rect": [
            20.0,
            920.0,
            384.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "alloworder",
          "maxclass": "newobj",
          "text": "t i i",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20.0,
            960.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "allowchange",
          "maxclass": "newobj",
          "text": "change",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            160.0,
            995.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "changed",
          "maxclass": "newobj",
          "text": "t b",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            160.0,
            1030.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "allowlatest",
          "maxclass": "newobj",
          "text": "expr $i1 && $i2",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            630.0,
            890.0,
            96.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "latestflag",
          "maxclass": "newobj",
          "text": "i 0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            630.0,
            930.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "tickargs",
          "maxclass": "newobj",
          "text": "pak 0 0 0",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            900.0,
            850.0,
            57.6,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "tickallow",
          "maxclass": "newobj",
          "text": "expr $i1 && ($i2 > 0) && ($i2 <= $i3)",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            900.0,
            890.0,
            236.8,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "tickgate",
          "maxclass": "newobj",
          "text": "gate 1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900.0,
            930.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "clocklabel",
          "maxclass": "comment",
          "text": "100-HZ-TICK: ggf. neuestes XY übernehmen, dann Reset / Metadaten / Analyse-XY / Raum-XY in dieser Reihenfolge ausgeben.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            1090.0,
            1200.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "tick",
          "maxclass": "newobj",
          "text": "t b b",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20.0,
            1150.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "uselatest",
          "maxclass": "newobj",
          "text": "sel 1",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            630.0,
            980.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "emit",
          "maxclass": "newobj",
          "text": "t b b b",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20.0,
            1280.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "pending",
          "maxclass": "newobj",
          "text": "i 0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900.0,
            1320.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "resetselect",
          "maxclass": "newobj",
          "text": "sel 1",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900.0,
            1360.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "resetorder",
          "maxclass": "newobj",
          "text": "t b b",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            900.0,
            1400.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "resetzero",
          "maxclass": "message",
          "text": "0",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            900.0,
            1440.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "clock",
          "maxclass": "newobj",
          "text": "cpuclock",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            265.0,
            1320.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "metadata",
          "maxclass": "message",
          "text": "2 0 1 1 $1",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            265.0,
            1360.0,
            64.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "xyorder",
          "maxclass": "newobj",
          "text": "t l l",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            400.0,
            1260.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "outnotes",
          "maxclass": "comment",
          "text": "Ausgänge: Raum-XY | Analyse-XY | Metadaten | interne Befehle | Analyse-Reset. Keine Registry, keine verdeckten Sends.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            1730.0,
            1200.0,
            36.0
          ]
        }
      },
      {
        "box": {
          "id": "default-internal",
          "maxclass": "newobj",
          "text": "loadmess 0",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1200.0,
            200.0,
            85.0,
            22.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "commands",
            0
          ],
          "destination": [
            "route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            0
          ],
          "destination": [
            "modeorder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "modeorder",
            1
          ],
          "destination": [
            "inverse",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "inverse",
            0
          ],
          "destination": [
            "internalgate0",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "internalxy",
            0
          ],
          "destination": [
            "internalgate0",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "internalgate0",
            0
          ],
          "destination": [
            "xyout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "inverse",
            0
          ],
          "destination": [
            "internalgate1",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "internalanalysis",
            0
          ],
          "destination": [
            "internalgate1",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "internalgate1",
            0
          ],
          "destination": [
            "analysisout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "inverse",
            0
          ],
          "destination": [
            "internalgate2",
            0
          ],
          "order": 2
        }
      },
      {
        "patchline": {
          "source": [
            "internalmeta",
            0
          ],
          "destination": [
            "internalgate2",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "internalgate2",
            0
          ],
          "destination": [
            "metaout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "inverse",
            0
          ],
          "destination": [
            "internalgate3",
            0
          ],
          "order": 3
        }
      },
      {
        "patchline": {
          "source": [
            "internalreset",
            0
          ],
          "destination": [
            "internalgate3",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "internalgate3",
            0
          ],
          "destination": [
            "resetout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "modeorder",
            0
          ],
          "destination": [
            "selectmode",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "selectmode",
            0
          ],
          "destination": [
            "enter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stop",
            0
          ],
          "destination": [
            "controlout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "enter",
            4
          ],
          "destination": [
            "stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "enter",
            3
          ],
          "destination": [
            "clear",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "enter",
            2
          ],
          "destination": [
            "resetone",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "resetmessage",
            0
          ],
          "destination": [
            "resetout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "selectmode",
            1
          ],
          "destination": [
            "exit",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "exit",
            1
          ],
          "destination": [
            "resetmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "exit",
            0
          ],
          "destination": [
            "stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "enter",
            1
          ],
          "destination": [
            "ownid",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ownid",
            0
          ],
          "destination": [
            "circle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "circle",
            0
          ],
          "destination": [
            "current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            4
          ],
          "destination": [
            "voiceorder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "voiceorder",
            2
          ],
          "destination": [
            "ownid",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "voiceorder",
            0
          ],
          "destination": [
            "voicepre",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "voicepre",
            0
          ],
          "destination": [
            "controlout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "modeorder",
            1
          ],
          "destination": [
            "latecircle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "voiceorder",
            1
          ],
          "destination": [
            "latecircle",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "latecircle",
            0
          ],
          "destination": [
            "circle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "inverse",
            0
          ],
          "destination": [
            "startgate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            5
          ],
          "destination": [
            "startgate",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "startgate",
            0
          ],
          "destination": [
            "startmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "startmsg",
            0
          ],
          "destination": [
            "controlout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "inverse",
            0
          ],
          "destination": [
            "restartgate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            6
          ],
          "destination": [
            "restartgate",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "restartgate",
            0
          ],
          "destination": [
            "restartmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "restartmsg",
            0
          ],
          "destination": [
            "controlout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            7
          ],
          "destination": [
            "controlout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            1
          ],
          "destination": [
            "received",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "received",
            0
          ],
          "destination": [
            "latest",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "received",
            1
          ],
          "destination": [
            "hasone",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "hasone",
            0
          ],
          "destination": [
            "hasallow",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clear",
            0
          ],
          "destination": [
            "hasallow",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "received",
            2
          ],
          "destination": [
            "stale",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stale",
            0
          ],
          "destination": [
            "stalefirst",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stalefirst",
            0
          ],
          "destination": [
            "resetone",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "received",
            1
          ],
          "destination": [
            "deadlineorder",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "deadlineorder",
            2
          ],
          "destination": [
            "stalezero",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stalezero",
            0
          ],
          "destination": [
            "stale",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "deadlineorder",
            1
          ],
          "destination": [
            "canceldeadline",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "canceldeadline",
            0
          ],
          "destination": [
            "deadline",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "deadlineorder",
            0
          ],
          "destination": [
            "deadline",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "deadline",
            0
          ],
          "destination": [
            "staleone",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "staleone",
            0
          ],
          "destination": [
            "stale",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "enter",
            3
          ],
          "destination": [
            "staleone",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            2
          ],
          "destination": [
            "state",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "voiceorder",
            2
          ],
          "destination": [
            "allowargs",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "state",
            0
          ],
          "destination": [
            "allowargs",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "state",
            1
          ],
          "destination": [
            "allowargs",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "state",
            2
          ],
          "destination": [
            "allowargs",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "allowargs",
            0
          ],
          "destination": [
            "allow",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "allow",
            0
          ],
          "destination": [
            "alloworder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "alloworder",
            0
          ],
          "destination": [
            "hasallow",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "alloworder",
            1
          ],
          "destination": [
            "allowchange",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "allowchange",
            0
          ],
          "destination": [
            "changed",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "changed",
            0
          ],
          "destination": [
            "resetone",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "hasallow",
            0
          ],
          "destination": [
            "allowlatest",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "allowlatest",
            0
          ],
          "destination": [
            "latestflag",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "modeorder",
            1
          ],
          "destination": [
            "tickargs",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "voiceorder",
            2
          ],
          "destination": [
            "tickargs",
            1
          ],
          "order": 2
        }
      },
      {
        "patchline": {
          "source": [
            "state",
            0
          ],
          "destination": [
            "tickargs",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tickargs",
            0
          ],
          "destination": [
            "tickallow",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tickallow",
            0
          ],
          "destination": [
            "tickgate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            3
          ],
          "destination": [
            "tickgate",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tickgate",
            0
          ],
          "destination": [
            "tick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tick",
            1
          ],
          "destination": [
            "latestflag",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "latestflag",
            0
          ],
          "destination": [
            "uselatest",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "uselatest",
            0
          ],
          "destination": [
            "latest",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "latest",
            0
          ],
          "destination": [
            "current",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tick",
            0
          ],
          "destination": [
            "emit",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "enter",
            0
          ],
          "destination": [
            "emit",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "resetone",
            0
          ],
          "destination": [
            "pending",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "emit",
            2
          ],
          "destination": [
            "pending",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pending",
            0
          ],
          "destination": [
            "resetselect",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "resetselect",
            0
          ],
          "destination": [
            "resetorder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "resetorder",
            1
          ],
          "destination": [
            "resetmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "resetorder",
            0
          ],
          "destination": [
            "resetzero",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "resetzero",
            0
          ],
          "destination": [
            "pending",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "emit",
            1
          ],
          "destination": [
            "clock",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clock",
            0
          ],
          "destination": [
            "metadata",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "metadata",
            0
          ],
          "destination": [
            "metaout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "emit",
            0
          ],
          "destination": [
            "current",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "current",
            0
          ],
          "destination": [
            "xyorder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "xyorder",
            1
          ],
          "destination": [
            "analysisout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "xyorder",
            0
          ],
          "destination": [
            "xyout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "default-internal",
            0
          ],
          "destination": [
            "modeorder",
            0
          ]
        }
      }
    ]
  }
}
