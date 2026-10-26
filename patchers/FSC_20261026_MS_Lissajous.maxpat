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
      -1333.0,
      145.0,
      1456.0,
      919.0
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
            297.7272698879242,
            -51.13636314868927,
            200.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            0.0,
            146.0,
            20.0
          ],
          "text": "LISSAJOUS · XY"
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
            297.7272698879242,
            -20.454545259475708,
            82.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            33.65384727716446,
            82.0,
            22.0
          ],
          "text": "▶ Start"
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
            390.9090871810913,
            -20.454545259475708,
            82.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            84.61538743972778,
            33.65384727716446,
            82.0,
            22.0
          ],
          "text": "■ Stop"
        }
      },
      {
        "box": {
          "id": "label_period",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            57.0,
            127.0,
            167.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            54.807694137096405,
            82.0,
            20.0
          ],
          "text": "Tempo/Cycl/s"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "period",
          "maxclass": "flonum",
          "maximum": 120.0,
          "minimum": 0.01,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            57.0,
            148.0,
            90.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9615384936332703,
            75.96154099702835,
            71.0,
            22.0
          ],
          "varname": "period"
        }
      },
      {
        "box": {
          "id": "label_rx",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            57.0,
            173.0,
            167.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9615384936332703,
            99.03846484422684,
            77.88461798429489,
            20.0
          ],
          "text": "Verhältnis X"
        }
      },
      {
        "box": {
          "id": "rx",
          "maxclass": "number",
          "maximum": 64,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 1,
          "parameter_mappable": 0,
          "patching_rect": [
            57.0,
            194.0,
            90.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9615384936332703,
            118.26923471689224,
            46.0,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "rx",
              "parameter_mmax": 64.0,
              "parameter_mmin": 1.0,
              "parameter_modmode": 3,
              "parameter_shortname": "rx",
              "parameter_type": 0
            }
          },
          "varname": "rx"
        }
      },
      {
        "box": {
          "id": "label_ry",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            235.0,
            173.0,
            167.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            87.5000029206276,
            99.03846484422684,
            76.0,
            20.0
          ],
          "text": "Verhältnis Y"
        }
      },
      {
        "box": {
          "id": "ry",
          "maxclass": "number",
          "maximum": 64,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            235.0,
            194.0,
            90.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            87.5000029206276,
            118.26923471689224,
            45.0,
            22.0
          ],
          "varname": "ry"
        }
      },
      {
        "box": {
          "id": "label_phase",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            235.0,
            127.0,
            167.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            87.5000029206276,
            54.807694137096405,
            76.0,
            20.0
          ],
          "text": "Phase (°)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "phase",
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
            235.0,
            148.0,
            90.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            87.5000029206276,
            75.96154099702835,
            45.0,
            22.0
          ],
          "varname": "phase"
        }
      },
      {
        "box": {
          "id": "label_width",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            57.0,
            219.0,
            167.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9615384936332703,
            140.38462007045746,
            63.0,
            20.0
          ],
          "text": "Breite"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "width",
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
            57.0,
            240.0,
            90.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9615384936332703,
            160.57692843675613,
            46.0,
            22.0
          ],
          "varname": "width"
        }
      },
      {
        "box": {
          "id": "label_height",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            235.0,
            219.0,
            167.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            87.5000029206276,
            140.38462007045746,
            45.0,
            20.0
          ],
          "text": "Höhe"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "height",
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
            235.0,
            240.0,
            90.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            87.5000029206276,
            160.57692843675613,
            45.0,
            22.0
          ],
          "varname": "height"
        }
      },
      {
        "box": {
          "id": "label_px",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            57.0,
            265.0,
            167.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9615384936332703,
            183.65385228395462,
            63.0,
            20.0
          ],
          "text": "Position X"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "px",
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
            57.0,
            286.0,
            90.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.9615384936332703,
            203.8461606502533,
            46.0,
            22.0
          ],
          "varname": "px"
        }
      },
      {
        "box": {
          "id": "label_py",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            235.0,
            265.0,
            167.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            87.5000029206276,
            183.65385228395462,
            67.0,
            20.0
          ],
          "text": "Position Y"
        }
      },
      {
        "box": {
          "annotation": "Position Y: +1 = oben / vorne, 0 = Mitte, -1 = unten / hinten.",
          "format": 6,
          "id": "py",
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
            235.0,
            286.0,
            90.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            87.5000029206276,
            203.8461606502533,
            45.0,
            22.0
          ],
          "varname": "py"
        }
      },
      {
        "box": {
          "id": "defaults",
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
            655.0,
            52.2727267742157,
            145.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            21.153846859931946,
            166.34615939855576,
            11.538461923599243
          ],
          "text": "Grundfigur"
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
            760.6818171739578,
            87.49999916553497,
            140.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "once",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "patching_rect": [
            760.6818171739578,
            115.90908980369568,
            140.0,
            22.0
          ],
          "text": "onebang"
        }
      },
      {
        "box": {
          "id": "init",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "patching_rect": [
            655.0,
            152.27272582054138,
            140.0,
            22.0
          ],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "v_period",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            475.0,
            195.0,
            75.0,
            22.0
          ],
          "text": "10."
        }
      },
      {
        "box": {
          "id": "v_rx",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            555.0,
            195.0,
            75.0,
            22.0
          ],
          "text": "1"
        }
      },
      {
        "box": {
          "id": "v_ry",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            635.0,
            195.0,
            75.0,
            22.0
          ],
          "text": "2"
        }
      },
      {
        "box": {
          "id": "v_phase",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            715.0,
            195.0,
            75.0,
            22.0
          ],
          "text": "0."
        }
      },
      {
        "box": {
          "id": "v_width",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            795.0,
            195.0,
            75.0,
            22.0
          ],
          "text": "0.7"
        }
      },
      {
        "box": {
          "id": "v_height",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            875.0,
            195.0,
            75.0,
            22.0
          ],
          "text": "0.7"
        }
      },
      {
        "box": {
          "id": "v_px",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            955.0,
            195.0,
            75.0,
            22.0
          ],
          "text": "0."
        }
      },
      {
        "box": {
          "id": "v_py",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1035.0,
            195.0,
            75.0,
            22.0
          ],
          "text": "0."
        }
      },
      {
        "box": {
          "comment": "",
          "id": "in",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            520.0,
            7.954545378684998,
            25.000000000000004,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            525.0,
            245.0,
            180.0,
            22.0
          ],
          "text": "route start stop int"
        }
      },
      {
        "box": {
          "id": "stmsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            303.7272698879242,
            15.909090757369995,
            70.0,
            22.0
          ],
          "text": "start"
        }
      },
      {
        "box": {
          "id": "spmsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            390.09090542793274,
            15.909090757369995,
            70.0,
            22.0
          ],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "sel",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "bang",
            ""
          ],
          "patching_rect": [
            724.9999930858612,
            245.0,
            114.00001382827759,
            22.0
          ],
          "text": "sel 0 1"
        }
      },
      {
        "box": {
          "id": "starttr",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "bang",
            "bang",
            "bang",
            "bang"
          ],
          "patching_rect": [
            772.5,
            286.0,
            120.0,
            22.0
          ],
          "text": "t b b b b"
        }
      },
      {
        "box": {
          "id": "off",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            520.0,
            298.0,
            40.0,
            22.0
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "on",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            775.0,
            335.0,
            40.0,
            22.0
          ],
          "text": "1"
        }
      },
      {
        "box": {
          "id": "reset",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            835.0,
            335.0,
            80.0,
            22.0
          ],
          "text": "reset 0."
        }
      },
      {
        "box": {
          "id": "clock",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            520.0,
            342.0454512834549,
            56.0,
            22.0
          ],
          "text": "metro 10"
        }
      },
      {
        "box": {
          "id": "tick",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "patching_rect": [
            525.0,
            425.0,
            70.0,
            22.0
          ],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "base",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            475.0,
            485.0,
            200.0,
            22.0
          ],
          "text": "expr 1./max(0.01\\, $f1)"
        }
      },
      {
        "box": {
          "id": "baseSig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            475.0,
            525.0,
            140.0,
            22.0
          ],
          "text": "sig~ 0.1"
        }
      },
      {
        "box": {
          "id": "runSig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            725.0,
            385.0,
            140.0,
            22.0
          ],
          "text": "sig~ 0."
        }
      },
      {
        "box": {
          "id": "runfreq",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            475.0,
            565.0,
            65.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "freq_x",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            475.0,
            615.0,
            80.0,
            22.0
          ],
          "text": "*~ 1."
        }
      },
      {
        "box": {
          "id": "osc_x",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            475.0,
            655.0,
            90.0,
            22.0
          ],
          "text": "cycle~"
        }
      },
      {
        "box": {
          "id": "half_x",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            585.0,
            615.0,
            70.0,
            22.0
          ],
          "text": "* 0.5"
        }
      },
      {
        "box": {
          "id": "amp_x",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            475.0,
            695.0,
            90.0,
            22.0
          ],
          "text": "*~ 0.35"
        }
      },
      {
        "box": {
          "id": "centerpak_x",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            585.0,
            655.0,
            140.0,
            22.0
          ],
          "text": "pak 0. 0.7"
        }
      },
      {
        "box": {
          "id": "center_x",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            585.0,
            695.0,
            280.0,
            22.0
          ],
          "text": "expr 0.5+$f1*(0.5-$f2*0.5)"
        }
      },
      {
        "box": {
          "id": "offset_x",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            475.0,
            745.0,
            90.0,
            22.0
          ],
          "text": "+~ 0.5"
        }
      },
      {
        "box": {
          "id": "snap_x",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            475.0,
            795.0,
            64.0,
            22.0
          ],
          "text": "snapshot~"
        }
      },
      {
        "box": {
          "id": "freq_y",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            895.0,
            615.0,
            80.0,
            22.0
          ],
          "text": "*~ 2."
        }
      },
      {
        "box": {
          "id": "osc_y",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            895.0,
            655.0,
            90.0,
            22.0
          ],
          "text": "cycle~"
        }
      },
      {
        "box": {
          "id": "half_y",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            1005.0,
            615.0,
            70.0,
            22.0
          ],
          "text": "* 0.5"
        }
      },
      {
        "box": {
          "id": "amp_y",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            895.0,
            695.0,
            90.0,
            22.0
          ],
          "text": "*~ 0.35"
        }
      },
      {
        "box": {
          "id": "centerpak_y",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1005.0,
            655.0,
            140.0,
            22.0
          ],
          "text": "pak 0. 0.7"
        }
      },
      {
        "box": {
          "id": "center_y",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1005.0,
            695.0,
            280.0,
            22.0
          ],
          "text": "expr 0.5-$f1*(0.5-$f2*0.5)"
        }
      },
      {
        "box": {
          "id": "offset_y",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            895.0,
            745.0,
            90.0,
            22.0
          ],
          "text": "+~ 0.5"
        }
      },
      {
        "box": {
          "id": "snap_y",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            895.0,
            795.0,
            64.0,
            22.0
          ],
          "text": "snapshot~"
        }
      },
      {
        "box": {
          "id": "phasefrac",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            966.0,
            545.4545402526855,
            80.0,
            22.0
          ],
          "text": "/ 360."
        }
      },
      {
        "box": {
          "id": "pack",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            475.0,
            845.0,
            120.0,
            22.0
          ],
          "text": "pack 0. 0."
        }
      },
      {
        "box": {
          "comment": "XY 0..1 → Daten-Switch",
          "id": "out",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            475.0,
            895.0,
            25.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "read",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            289.6551675796509,
            904.5976860523224,
            145.0,
            22.0
          ],
          "text": "0.237884 0.37876"
        }
      },
      {
        "box": {
          "id": "comment",
          "linecount": 4,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            475.0,
            945.0,
            505.0,
            60.0
          ],
          "text": "X und Y: cycle~ → *~ (halbe Größe) → +~ (Mitte) → snapshot~.\nGemeinsames metro fragt zuerst Y, dann X ab: genau eine vollständige XY-Liste pro Tick.\nStart initialisiert beim ersten Mal auch nach Copy/Paste. Stop: Frequenz 0 und Datentakt aus.\nPosition -1..1 nutzt den verbleibenden Platz; volle Größe lässt keine Verschiebung zu."
        }
      },
      {
        "box": {
          "angle": 270.0,
          "bgcolor": [
            0.7372549019607844,
            0.7411764705882353,
            0.796078431372549,
            1.0
          ],
          "id": "obj-2",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            244.0,
            507.0,
            128.0,
            128.0
          ],
          "presentation": 1,
          "presentation_rect": [
            0.0,
            -9.0,
            166.61538743972778,
            234.8461606502533
          ],
          "proportion": 0.5
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "offset_x",
            0
          ],
          "source": [
            "amp_x",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "offset_y",
            0
          ],
          "source": [
            "amp_y",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "baseSig",
            0
          ],
          "source": [
            "base",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "runfreq",
            0
          ],
          "source": [
            "baseSig",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "offset_x",
            1
          ],
          "source": [
            "center_x",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "offset_y",
            1
          ],
          "source": [
            "center_y",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "center_x",
            0
          ],
          "source": [
            "centerpak_x",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "center_y",
            0
          ],
          "source": [
            "centerpak_y",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "tick",
            0
          ],
          "source": [
            "clock",
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
            "defaults",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "osc_x",
            0
          ],
          "source": [
            "freq_x",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "osc_y",
            0
          ],
          "source": [
            "freq_y",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "amp_x",
            1
          ],
          "source": [
            "half_x",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "amp_y",
            1
          ],
          "source": [
            "half_y",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "centerpak_y",
            1
          ],
          "order": 0,
          "source": [
            "height",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "half_y",
            0
          ],
          "order": 1,
          "source": [
            "height",
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
            "in",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "v_height",
            0
          ],
          "order": 2,
          "source": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "v_period",
            0
          ],
          "order": 7,
          "source": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "v_phase",
            0
          ],
          "order": 4,
          "source": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "v_px",
            0
          ],
          "order": 1,
          "source": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "v_py",
            0
          ],
          "order": 0,
          "source": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "v_rx",
            0
          ],
          "order": 6,
          "source": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "v_ry",
            0
          ],
          "order": 5,
          "source": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "v_width",
            0
          ],
          "order": 3,
          "source": [
            "init",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "once",
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
            "clock",
            0
          ],
          "order": 1,
          "source": [
            "off",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "runSig",
            0
          ],
          "order": 0,
          "source": [
            "off",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snap_x",
            0
          ],
          "source": [
            "offset_x",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snap_y",
            0
          ],
          "source": [
            "offset_y",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "clock",
            0
          ],
          "order": 1,
          "source": [
            "on",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "runSig",
            0
          ],
          "order": 0,
          "source": [
            "on",
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
            "once",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "amp_x",
            0
          ],
          "source": [
            "osc_x",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "amp_y",
            0
          ],
          "source": [
            "osc_y",
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
          "order": 0,
          "source": [
            "pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "read",
            1
          ],
          "order": 1,
          "source": [
            "pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "base",
            0
          ],
          "source": [
            "period",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "phasefrac",
            0
          ],
          "source": [
            "phase",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "osc_y",
            1
          ],
          "source": [
            "phasefrac",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "centerpak_x",
            0
          ],
          "source": [
            "px",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "centerpak_y",
            0
          ],
          "source": [
            "py",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "osc_x",
            0
          ],
          "order": 1,
          "source": [
            "reset",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "osc_y",
            0
          ],
          "order": 0,
          "source": [
            "reset",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "off",
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
            "sel",
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
            "starttr",
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
            "runfreq",
            1
          ],
          "source": [
            "runSig",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "freq_x",
            0
          ],
          "order": 1,
          "source": [
            "runfreq",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "freq_y",
            0
          ],
          "order": 0,
          "source": [
            "runfreq",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "freq_x",
            1
          ],
          "source": [
            "rx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "freq_y",
            1
          ],
          "source": [
            "ry",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "off",
            0
          ],
          "source": [
            "sel",
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
            "sel",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pack",
            0
          ],
          "source": [
            "snap_x",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pack",
            1
          ],
          "source": [
            "snap_y",
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
            "spmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "stmsg",
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
            "off",
            0
          ],
          "source": [
            "starttr",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "on",
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
            "once",
            0
          ],
          "source": [
            "starttr",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "reset",
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
            "route",
            0
          ],
          "source": [
            "stmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "spmsg",
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
            "snap_x",
            0
          ],
          "source": [
            "tick",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "snap_y",
            0
          ],
          "source": [
            "tick",
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
            "v_height",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "period",
            0
          ],
          "source": [
            "v_period",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "phase",
            0
          ],
          "source": [
            "v_phase",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "px",
            0
          ],
          "source": [
            "v_px",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "py",
            0
          ],
          "source": [
            "v_py",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "rx",
            0
          ],
          "source": [
            "v_rx",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "ry",
            0
          ],
          "source": [
            "v_ry",
            0
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
            "v_width",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "centerpak_x",
            1
          ],
          "order": 0,
          "source": [
            "width",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "half_x",
            0
          ],
          "order": 1,
          "source": [
            "width",
            0
          ]
        }
      }
    ]
  }
}
