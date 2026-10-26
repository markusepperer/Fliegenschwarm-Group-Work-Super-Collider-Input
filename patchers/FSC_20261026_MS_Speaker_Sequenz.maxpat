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
      -1356.0,
      228.0,
      1261.0,
      690.0
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
            98.24561309814453,
            205.26315784454346,
            130.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.130081295967102,
            0.0,
            130.0,
            20.0
          ],
          "text": "SPEAKER-SEQUENZ"
        }
      },
      {
        "box": {
          "annotation": "1 FL auswählen; mindestens zwei Speaker",
          "bgoncolor": [
            0.25,
            0.5,
            0.75,
            1.0
          ],
          "fontsize": 22.0,
          "id": "s1",
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
            99.99999904632568,
            231.57894706726074,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            9.756097555160522,
            26.016260147094727,
            28.0,
            28.0
          ],
          "text": "●",
          "texton": "●",
          "textoncolor": [
            0.168627450980392,
            1.0,
            0.0,
            1.0
          ],
          "usetextovercolor": 1
        }
      },
      {
        "box": {
          "id": "s1pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            691.2621264457703,
            192.2330070734024,
            200.0,
            22.0
          ],
          "text": "prepend speaker 1"
        }
      },
      {
        "box": {
          "id": "eq1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            1005.4793789386749,
            61.0,
            60.0,
            22.0
          ],
          "text": "== 1"
        }
      },
      {
        "box": {
          "id": "led1",
          "ignoreclick": 1,
          "maxclass": "led",
          "numinlets": 1,
          "numoutlets": 1,
          "oncolor": [
            1.0,
            0.933333333333333,
            0.0,
            1.0
          ],
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            128.07017421722412,
            240.3508768081665,
            10.0,
            10.0
          ],
          "presentation": 1,
          "presentation_rect": [
            39.02439022064209,
            34.95934957265854,
            10.0,
            10.0
          ]
        }
      },
      {
        "box": {
          "annotation": "2 FR auswählen; mindestens zwei Speaker",
          "bgoncolor": [
            0.25,
            0.5,
            0.75,
            1.0
          ],
          "fontsize": 22.0,
          "id": "s2",
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
            145.61403369903564,
            231.57894706726074,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            56.910569071769714,
            26.016260147094727,
            28.0,
            28.0
          ],
          "text": "●",
          "texton": "●",
          "textoncolor": [
            0.168627450980392,
            1.0,
            0.0,
            1.0
          ],
          "usetextovercolor": 1
        }
      },
      {
        "box": {
          "id": "s2pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            650.0,
            250.0,
            200.0,
            22.0
          ],
          "text": "prepend speaker 2"
        }
      },
      {
        "box": {
          "id": "eq2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            1000.0,
            100.0,
            60.0,
            22.0
          ],
          "text": "== 2"
        }
      },
      {
        "box": {
          "id": "led2",
          "ignoreclick": 1,
          "maxclass": "led",
          "numinlets": 1,
          "numoutlets": 1,
          "oncolor": [
            1.0,
            0.933333333333333,
            0.0,
            1.0
          ],
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            175.43859481811523,
            240.3508768081665,
            10.0,
            10.0
          ],
          "presentation": 1,
          "presentation_rect": [
            86.17886173725128,
            34.95934957265854,
            10.0,
            10.0
          ]
        }
      },
      {
        "box": {
          "annotation": "4 RL auswählen; mindestens zwei Speaker",
          "bgoncolor": [
            0.25,
            0.5,
            0.75,
            1.0
          ],
          "fontsize": 22.0,
          "id": "s4",
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
            99.99999904632568,
            287.7192974090576,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            9.756097555160522,
            82.11382108926773,
            28.0,
            28.0
          ],
          "text": "●",
          "texton": "●",
          "textoncolor": [
            0.168627450980392,
            1.0,
            0.0,
            1.0
          ],
          "usetextovercolor": 1
        }
      },
      {
        "box": {
          "id": "s4pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            650.0,
            350.0,
            200.0,
            22.0
          ],
          "text": "prepend speaker 4"
        }
      },
      {
        "box": {
          "id": "eq4",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            1000.0,
            200.0,
            60.0,
            22.0
          ],
          "text": "== 4"
        }
      },
      {
        "box": {
          "id": "led4",
          "ignoreclick": 1,
          "maxclass": "led",
          "numinlets": 1,
          "numoutlets": 1,
          "oncolor": [
            1.0,
            0.933333333333333,
            0.0,
            1.0
          ],
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            128.07017421722412,
            296.4912271499634,
            10.0,
            10.0
          ],
          "presentation": 1,
          "presentation_rect": [
            39.02439022064209,
            91.05691051483154,
            10.0,
            10.0
          ]
        }
      },
      {
        "box": {
          "annotation": "3 RR auswählen; mindestens zwei Speaker",
          "bgoncolor": [
            0.25,
            0.5,
            0.75,
            1.0
          ],
          "fontsize": 22.0,
          "id": "s3",
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
            145.61403369903564,
            287.7192974090576,
            28.0,
            28.0
          ],
          "presentation": 1,
          "presentation_rect": [
            56.910569071769714,
            82.11382108926773,
            28.0,
            28.0
          ],
          "text": "●",
          "texton": "●",
          "textoncolor": [
            0.168627450980392,
            1.0,
            0.0,
            1.0
          ],
          "usetextovercolor": 1
        }
      },
      {
        "box": {
          "id": "s3pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            650.0,
            450.0,
            200.0,
            22.0
          ],
          "text": "prepend speaker 3"
        }
      },
      {
        "box": {
          "id": "eq3",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            1000.0,
            150.0,
            60.0,
            22.0
          ],
          "text": "== 3"
        }
      },
      {
        "box": {
          "id": "led3",
          "ignoreclick": 1,
          "maxclass": "led",
          "numinlets": 1,
          "numoutlets": 1,
          "oncolor": [
            1.0,
            0.933333333333333,
            0.0,
            1.0
          ],
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            175.43859481811523,
            296.4912271499634,
            10.0,
            10.0
          ],
          "presentation": 1,
          "presentation_rect": [
            86.17886173725128,
            91.05691051483154,
            10.0,
            10.0
          ]
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
            198.24561214447021,
            229.8245611190796,
            72.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            108.13008123636246,
            25.203252017498016,
            72.0,
            24.0
          ],
          "text": "▶ Start",
          "textoncolor": [
            0.168627450980392,
            1.0,
            0.0,
            1.0
          ]
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
            801.1494119167328,
            -57.47126340866089,
            60.0,
            22.0
          ],
          "text": "start"
        }
      },
      {
        "box": {
          "id": "stop",
          "legacytextcolor": 1,
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
            277.19297981262207,
            229.8245611190796,
            72.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            186.99186980724335,
            25.203252017498016,
            72.0,
            24.0
          ],
          "text": "■ Stop",
          "textcolor": [
            1.0,
            0.0,
            0.0,
            1.0
          ],
          "usetextovercolor": 1
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
            720.0,
            -36.78160858154297,
            60.0,
            22.0
          ],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "method",
          "items": [
            "Uhrzeigersinn",
            ",",
            "Gegen Uhrzeigersinn",
            ",",
            "Random ohne Wiederholung",
            ",",
            "Random Urn",
            ",",
            "Kreuz: 1–3–2–4"
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
            198.24561214447021,
            261.40350818634033,
            151.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            108.13008123636246,
            56.910569071769714,
            151.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "methodpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            549.1228017807007,
            200.0,
            22.0
          ],
          "text": "prepend method"
        }
      },
      {
        "box": {
          "id": "timing",
          "items": [
            "Millisekunden fest",
            ",",
            "Millisekunden zufällig",
            ",",
            "Noten gleichmäßig",
            ",",
            "Noten-Zufall",
            ",",
            "Pattern"
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
            198.24561214447021,
            291.2280693054199,
            151.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            108.13008123636246,
            86.99186986684799,
            151.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "timingpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            598.245608329773,
            200.0,
            22.0
          ],
          "text": "prepend timing"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "lfixed",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            98.24561309814453,
            354.3859634399414,
            56.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.130081295967102,
            162.60162591934204,
            56.0,
            20.0
          ],
          "text": "Zeit (ms)",
          "varname": "lfixed"
        }
      },
      {
        "box": {
          "format": 6,
          "hidden": 1,
          "id": "fixed",
          "maxclass": "flonum",
          "maximum": 60000.0,
          "minimum": 20.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            152.63157749176025,
            354.3859634399414,
            58.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            69.10569101572037,
            162.60162591934204,
            58.0,
            22.0
          ],
          "varname": "fixed"
        }
      },
      {
        "box": {
          "id": "fixedpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            673.6842041015625,
            200.0,
            22.0
          ],
          "text": "prepend fixed"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "lmin",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            98.24561309814453,
            373.6842088699341,
            58.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.130081295967102,
            186.99186980724335,
            60.162601590156555,
            20.0
          ],
          "text": "Min. (ms)",
          "varname": "lmin"
        }
      },
      {
        "box": {
          "format": 6,
          "hidden": 1,
          "id": "min",
          "maxclass": "flonum",
          "maximum": 60000.0,
          "minimum": 20.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            140.3508758544922,
            373.6842088699341,
            48.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            70.73170727491379,
            186.99186980724335,
            48.0,
            22.0
          ],
          "varname": "min"
        }
      },
      {
        "box": {
          "id": "minpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            749.122799873352,
            200.0,
            22.0
          ],
          "text": "prepend minimum"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "lmax",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            192.98245429992676,
            373.6842088699341,
            62.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            118.69918692111969,
            186.99186980724335,
            62.0,
            20.0
          ],
          "text": "Max. (ms)",
          "varname": "lmax"
        }
      },
      {
        "box": {
          "format": 6,
          "hidden": 1,
          "id": "max",
          "maxclass": "flonum",
          "maximum": 60000.0,
          "minimum": 20.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            236.84210300445557,
            373.6842088699341,
            48.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            179.67479664087296,
            186.99186980724335,
            48.0,
            22.0
          ],
          "varname": "max"
        }
      },
      {
        "box": {
          "id": "maxpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            822.8070096969604,
            200.0,
            22.0
          ],
          "text": "prepend maximum"
        }
      },
      {
        "box": {
          "id": "lbpm",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            98.24561309814453,
            391.2280683517456,
            35.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.130081295967102,
            210.56910556554794,
            35.0,
            20.0
          ],
          "text": "BPM",
          "varname": "lbpm"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "bpm",
          "maxclass": "flonum",
          "maximum": 750.0,
          "minimum": 20.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            129.82456016540527,
            391.2280683517456,
            50.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            48.78048777580261,
            210.56910556554794,
            50.0,
            22.0
          ],
          "varname": "bpm"
        }
      },
      {
        "box": {
          "id": "bpmpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            898.24560546875,
            200.0,
            22.0
          ],
          "text": "prepend bpm"
        }
      },
      {
        "box": {
          "id": "lnote",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            185.96491050720215,
            391.2280683517456,
            38.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            102.43902432918549,
            210.56910556554794,
            38.0,
            20.0
          ],
          "text": "Basis",
          "varname": "lnote"
        }
      },
      {
        "box": {
          "id": "note",
          "items": [
            "1/2",
            ",",
            "1/4",
            ",",
            "1/8",
            ",",
            "1/16"
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
            221.0526294708252,
            391.2280683517456,
            52.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            140.65040642023087,
            210.56910556554794,
            52.0,
            22.0
          ],
          "varname": "note"
        }
      },
      {
        "box": {
          "id": "notepre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            973.6842012405396,
            200.0,
            22.0
          ],
          "text": "prepend note"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "lpool",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            98.24561309814453,
            410.5263137817383,
            41.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.130081295967102,
            236.58536571264267,
            41.0,
            20.0
          ],
          "text": "Noten",
          "varname": "lpool"
        }
      },
      {
        "box": {
          "bgoncolor": [
            0.25,
            0.5,
            0.75,
            1.0
          ],
          "hidden": 1,
          "id": "n2",
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
            136.84210395812988,
            410.5263137817383,
            34.0,
            18.0
          ],
          "presentation": 1,
          "presentation_rect": [
            52.03252029418945,
            236.58536571264267,
            34.0,
            18.0
          ],
          "text": "1/2",
          "texton": "1/2",
          "varname": "n2"
        }
      },
      {
        "box": {
          "id": "n2pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            1049.122797012329,
            200.0,
            22.0
          ],
          "text": "prepend pool 2"
        }
      },
      {
        "box": {
          "bgoncolor": [
            0.25,
            0.5,
            0.75,
            1.0
          ],
          "hidden": 1,
          "id": "n4",
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
            173.68420886993408,
            410.5263137817383,
            34.0,
            18.0
          ],
          "presentation": 1,
          "presentation_rect": [
            87.8048779964447,
            236.58536571264267,
            34.0,
            18.0
          ],
          "text": "1/4",
          "texton": "1/4",
          "varname": "n4"
        }
      },
      {
        "box": {
          "id": "n4pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            1098.2456035614014,
            200.0,
            22.0
          ],
          "text": "prepend pool 4"
        }
      },
      {
        "box": {
          "bgoncolor": [
            0.25,
            0.5,
            0.75,
            1.0
          ],
          "hidden": 1,
          "id": "n8",
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
            208.77192783355713,
            410.5263137817383,
            34.0,
            18.0
          ],
          "presentation": 1,
          "presentation_rect": [
            124.39024382829666,
            236.58536571264267,
            34.0,
            18.0
          ],
          "text": "1/8",
          "texton": "1/8",
          "varname": "n8"
        }
      },
      {
        "box": {
          "id": "n8pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            1149.1227960586548,
            200.0,
            22.0
          ],
          "text": "prepend pool 8"
        }
      },
      {
        "box": {
          "bgoncolor": [
            0.25,
            0.5,
            0.75,
            1.0
          ],
          "hidden": 1,
          "id": "n16",
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
            245.61403274536133,
            410.5263137817383,
            40.0,
            18.0
          ],
          "presentation": 1,
          "presentation_rect": [
            160.1626015305519,
            236.58536571264267,
            40.0,
            18.0
          ],
          "text": "1/16",
          "texton": "1/16",
          "varname": "n16"
        }
      },
      {
        "box": {
          "id": "n16pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            1198.245602607727,
            200.0,
            22.0
          ],
          "text": "prepend pool 16"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "lpattern",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            98.24561309814453,
            429.82455921173096,
            45.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.130081295967102,
            259.34959334135056,
            45.0,
            20.0
          ],
          "text": "Muster",
          "varname": "lpattern"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pattern",
          "items": [
            "Gleichmäßig 1-1-1-1",
            ",",
            "Kurz-kurz-lang 1-1-2",
            ",",
            "Lang-kurz 3-1",
            ",",
            "Pendel 1-2-1-2",
            ",",
            "Kurz-lang 1-3",
            ",",
            "Auftakt 1-1-1-3",
            ",",
            "Nachschlag 3-1-1-1",
            ",",
            "Asymmetrisch 5 · 2-1-2",
            ",",
            "Asymmetrisch 7 · 2-2-1-2",
            ",",
            "Beschleunigend 4-3-2-1",
            ",",
            "Verlangsamend 1-2-3-4",
            ",",
            "Unregelmäßig 1-3-1-2-2-1"
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
            142.10526180267334,
            429.82455921173096,
            224.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            57.723577201366425,
            259.34959334135056,
            224.0,
            22.0
          ],
          "varname": "pattern"
        }
      },
      {
        "box": {
          "id": "patternpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            1273.6841983795166,
            200.0,
            22.0
          ],
          "text": "prepend pattern"
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            98.24561309814453,
            450.8771905899048,
            268.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.130081295967102,
            280.487804710865,
            268.0,
            20.0
          ],
          "text": "Bereit. Mindestens zwei Speaker auswählen."
        }
      },
      {
        "box": {
          "bgcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "color": [
            1.0,
            0.0,
            0.0,
            1.0
          ],
          "id": "engine",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            703.4482641220093,
            0.0,
            220.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "FSC_20261026_speaker_sequence.js",
            "parameter_enable": 0
          },
          "text": "js FSC_20261026_speaker_sequence.js"
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
            1000.0,
            250.0,
            120.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "uiroute",
          "maxclass": "newobj",
          "numinlets": 31,
          "numoutlets": 31,
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
            ""
          ],
          "patching_rect": [
            -274.0740694999695,
            -148.14814567565918,
            1100.0,
            22.0
          ],
          "text": "route s1 s2 s3 s4 timing fixed min max bpm note pattern n2 n4 n8 n16 lfixed lmin lmax lbpm lnote lpool lpattern p1 p2 p3 p4 swing lswing patcher deviate"
        }
      },
      {
        "box": {
          "comment": "Befehle: start / stop",
          "id": "in",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            703.4482641220093,
            -324.1379256248474,
            25.0,
            25.0
          ]
        }
      },
      {
        "box": {
          "comment": "XY-Liste zum Daten-Switch oder nodes",
          "id": "out",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1017.0,
            1695.0,
            25.0,
            25.0
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
            912.3287007808685,
            -124.65752518177032,
            120.0,
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
            912.3287007808685,
            -94.52054107189178,
            120.0,
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
            912.3287007808685,
            -64.38355696201324,
            120.0,
            22.0
          ],
          "text": "loadbang"
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
          "id": "lprob",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            98.24561309814453,
            336.8421039581299,
            88.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.0,
            137.0,
            88.0,
            20.0
          ],
          "text": "Probability %"
        }
      },
      {
        "box": {
          "annotation": "Probability Speaker 1 in Prozent",
          "id": "p1",
          "maxclass": "number",
          "maximum": 100,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            99.99999904632568,
            261.40350818634033,
            38.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            9.756097555160522,
            56.097560942173004,
            38.0,
            22.0
          ],
          "textcolor": [
            1.0,
            0.933333333333333,
            0.0,
            1.0
          ],
          "varname": "p1"
        }
      },
      {
        "box": {
          "id": "p1pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            1349.1227941513062,
            180.0,
            22.0
          ],
          "text": "prepend probability 1"
        }
      },
      {
        "box": {
          "annotation": "Probability Speaker 2 in Prozent",
          "id": "p2",
          "maxclass": "number",
          "maximum": 100,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            145.61403369903564,
            261.40350818634033,
            38.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            56.910569071769714,
            56.097560942173004,
            38.0,
            22.0
          ],
          "textcolor": [
            1.0,
            0.933333333333333,
            0.0,
            1.0
          ],
          "varname": "p2"
        }
      },
      {
        "box": {
          "id": "p2pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            1382.456127166748,
            180.0,
            22.0
          ],
          "text": "prepend probability 2"
        }
      },
      {
        "box": {
          "annotation": "Probability Speaker 3 in Prozent",
          "id": "p3",
          "maxclass": "number",
          "maximum": 100,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            145.61403369903564,
            317.5438585281372,
            38.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            56.910569071769714,
            112.19512188434601,
            38.0,
            22.0
          ],
          "textcolor": [
            1.0,
            0.933333333333333,
            0.0,
            1.0
          ],
          "varname": "p3"
        }
      },
      {
        "box": {
          "id": "p3pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            361.4035053253174,
            1417.543846130371,
            180.0,
            22.0
          ],
          "text": "prepend probability 3"
        }
      },
      {
        "box": {
          "annotation": "Probability Speaker 4 in Prozent",
          "id": "p4",
          "maxclass": "number",
          "maximum": 100,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            99.99999904632568,
            317.5438585281372,
            38.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            9.756097555160522,
            112.19512188434601,
            38.0,
            22.0
          ],
          "textcolor": [
            1.0,
            0.933333333333333,
            0.0,
            1.0
          ],
          "varname": "p4"
        }
      },
      {
        "box": {
          "id": "p4pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            352.0,
            1450.0,
            180.0,
            22.0
          ],
          "text": "prepend probability 4"
        }
      },
      {
        "box": {
          "id": "lswing",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            277.19297981262207,
            391.2280683517456,
            55.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            194.30894297361374,
            210.56910556554794,
            56.3025176525116,
            20.0
          ],
          "text": "Swing %",
          "varname": "lswing"
        }
      },
      {
        "box": {
          "annotation": "Swing 0–99 %: 0 = kein Swing, 99 = extrem",
          "format": 6,
          "id": "swing",
          "maxclass": "flonum",
          "maximum": 99.0,
          "minimum": 0.0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            328.47368335723877,
            390.2280683517456,
            46.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            247.9674795269966,
            209.75609743595123,
            46.0,
            22.0
          ],
          "varname": "swing"
        }
      },
      {
        "box": {
          "id": "swingpre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            336.0,
            1486.0,
            140.0,
            22.0
          ],
          "text": "prepend swing"
        }
      },
      {
        "box": {
          "id": "ui_thispatcher",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            769.6500684310649,
            -112.96296107769012,
            78.0,
            22.0
          ],
          "save": [
            "#N",
            "thispatcher",
            ";",
            "#Q",
            "end",
            ";"
          ],
          "text": "thispatcher"
        }
      },
      {
        "box": {
          "id": "ldeviate",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            580.0,
            390.0,
            55.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            197.96020179986954,
            235.58536571264267,
            49.0,
            20.0
          ],
          "text": "Deviate",
          "varname": "ldeviate"
        }
      },
      {
        "box": {
          "annotation": "Deviate 0–100: zufällige Abweichung des Swing-Werts",
          "id": "deviate",
          "maxclass": "number",
          "maximum": 100,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            650.0,
            389.0,
            46.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            247.9674795269966,
            235.772357583046,
            46.0,
            22.0
          ],
          "varname": "deviate"
        }
      },
      {
        "box": {
          "id": "deviatepre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            691.2621264457703,
            418.6046361923218,
            140.0,
            22.0
          ],
          "text": "prepend deviate"
        }
      },
      {
        "box": {
          "angle": 270.0,
          "background": 1,
          "bgcolor": [
            0.7764705882352941,
            0.7764705882352941,
            0.7764705882352941,
            1.0
          ],
          "id": "seq_background_panel",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            89.47368335723877,
            200.0,
            285.0,
            272.0
          ],
          "presentation": 1,
          "presentation_rect": [
            -4.065040647983551,
            -5.691056907176971,
            324.3902437090874,
            323.57723557949066
          ],
          "proportion": 0.5
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "bpmpre",
            0
          ],
          "source": [
            "bpm",
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
            "bpmpre",
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
            "deviatepre",
            0
          ],
          "source": [
            "deviate",
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
            "deviatepre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "eq1",
            0
          ],
          "order": 0,
          "source": [
            "engine",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "eq2",
            0
          ],
          "order": 3,
          "source": [
            "engine",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "eq3",
            0
          ],
          "order": 2,
          "source": [
            "engine",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "eq4",
            0
          ],
          "order": 1,
          "source": [
            "engine",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "method",
            0
          ],
          "source": [
            "engine",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out",
            0
          ],
          "source": [
            "engine",
            0
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
            "engine",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "uiroute",
            0
          ],
          "source": [
            "engine",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "led1",
            0
          ],
          "source": [
            "eq1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "led2",
            0
          ],
          "source": [
            "eq2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "led3",
            0
          ],
          "source": [
            "eq3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "led4",
            0
          ],
          "source": [
            "eq4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fixedpre",
            0
          ],
          "source": [
            "fixed",
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
            "fixedpre",
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
            "maxpre",
            0
          ],
          "source": [
            "max",
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
            "maxpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "methodpre",
            0
          ],
          "source": [
            "method",
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
            "methodpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "minpre",
            0
          ],
          "source": [
            "min",
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
            "minpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "n16pre",
            0
          ],
          "source": [
            "n16",
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
            "n16pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "n2pre",
            0
          ],
          "source": [
            "n2",
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
            "n2pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "n4pre",
            0
          ],
          "source": [
            "n4",
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
            "n4pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "n8pre",
            0
          ],
          "source": [
            "n8",
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
            "n8pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "notepre",
            0
          ],
          "source": [
            "note",
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
            "notepre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p1pre",
            0
          ],
          "source": [
            "p1",
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
            "p1pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p2pre",
            0
          ],
          "source": [
            "p2",
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
            "p2pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p3pre",
            0
          ],
          "source": [
            "p3",
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
            "p3pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p4pre",
            0
          ],
          "source": [
            "p4",
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
            "p4pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "patternpre",
            0
          ],
          "source": [
            "pattern",
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
            "patternpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "s1pre",
            0
          ],
          "source": [
            "s1",
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
            "s1pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "s2pre",
            0
          ],
          "source": [
            "s2",
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
            "s2pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "s3pre",
            0
          ],
          "source": [
            "s3",
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
            "s3pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "s4pre",
            0
          ],
          "source": [
            "s4",
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
            "s4pre",
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
            "stopmsg",
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
            "swingpre",
            0
          ],
          "source": [
            "swing",
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
            "swingpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "timingpre",
            0
          ],
          "source": [
            "timing",
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
            "timingpre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "bpm",
            0
          ],
          "source": [
            "uiroute",
            8
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "deviate",
            0
          ],
          "source": [
            "uiroute",
            29
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "fixed",
            0
          ],
          "source": [
            "uiroute",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "lbpm",
            0
          ],
          "source": [
            "uiroute",
            18
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "lfixed",
            0
          ],
          "source": [
            "uiroute",
            15
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "lmax",
            0
          ],
          "source": [
            "uiroute",
            17
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "lmin",
            0
          ],
          "source": [
            "uiroute",
            16
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "lnote",
            0
          ],
          "source": [
            "uiroute",
            19
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "lpattern",
            0
          ],
          "source": [
            "uiroute",
            21
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "lpool",
            0
          ],
          "source": [
            "uiroute",
            20
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "lswing",
            0
          ],
          "source": [
            "uiroute",
            27
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "max",
            0
          ],
          "source": [
            "uiroute",
            7
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "min",
            0
          ],
          "source": [
            "uiroute",
            6
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "n16",
            0
          ],
          "source": [
            "uiroute",
            14
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "n2",
            0
          ],
          "source": [
            "uiroute",
            11
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "n4",
            0
          ],
          "source": [
            "uiroute",
            12
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "n8",
            0
          ],
          "source": [
            "uiroute",
            13
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "note",
            0
          ],
          "source": [
            "uiroute",
            9
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p1",
            0
          ],
          "source": [
            "uiroute",
            22
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p2",
            0
          ],
          "source": [
            "uiroute",
            23
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p3",
            0
          ],
          "source": [
            "uiroute",
            24
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p4",
            0
          ],
          "source": [
            "uiroute",
            25
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pattern",
            0
          ],
          "source": [
            "uiroute",
            10
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "s1",
            0
          ],
          "source": [
            "uiroute",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "s2",
            0
          ],
          "source": [
            "uiroute",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "s3",
            0
          ],
          "source": [
            "uiroute",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "s4",
            0
          ],
          "source": [
            "uiroute",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "swing",
            0
          ],
          "source": [
            "uiroute",
            26
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "timing",
            0
          ],
          "source": [
            "uiroute",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "ui_thispatcher",
            0
          ],
          "source": [
            "uiroute",
            28
          ]
        }
      }
    ]
  }
}
