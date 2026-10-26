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
      -1133.0,
      212.0,
      1080.0,
      730.0
    ],
    "boxes": [
      {
        "box": {
          "fontsize": 15.0,
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            35.0,
            20.0,
            640.0,
            23.0
          ],
          "text": "MS_FlyVoice #1 · eine vollständig gekapselte Fliege"
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            35.0,
            50.0,
            861.0,
            20.0
          ],
          "text": "Teststufe vor poly~: MS_fly erzeugt Mono-Audio; Quadpanner_Fliegenmodul erzeugt Flugbahn, Bewegungsdaten und vier Raumkanäle. #1 trennt die Instanzen."
        }
      },
      {
        "box": {
          "id": "synth",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            129.89689993858337,
            90.7216444015503,
            68.0,
            22.0
          ],
          "text": "FSC_20261026_MS_fly #1",
          "varname": "MS_fly"
        }
      },
      {
        "box": {
          "id": "mono-send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            129.89689993858337,
            122.0,
            145.0,
            22.0
          ],
          "text": "send~ #1FSC_20261026__Monosource"
        }
      },
      {
        "box": {
          "args": [
            "#1"
          ],
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "panner",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "FSC_20261026_Quadpanner_Fliegenmodul.maxpat",
          "numinlets": 0,
          "numoutlets": 0,
          "offset": [
            0.0,
            0.0
          ],
          "patching_rect": [
            35.0,
            180.0,
            640.0,
            305.0
          ],
          "varname": "Quadpanner_Fliegenmodul",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "r1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            35.0,
            590.0,
            125.0,
            22.0
          ],
          "text": "receive~ #1FSC_20261026_panner1"
        }
      },
      {
        "box": {
          "id": "r2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            210.0,
            590.0,
            125.0,
            22.0
          ],
          "text": "receive~ #1FSC_20261026_panner2"
        }
      },
      {
        "box": {
          "id": "r3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            385.0,
            590.0,
            125.0,
            22.0
          ],
          "text": "receive~ #1FSC_20261026_panner3"
        }
      },
      {
        "box": {
          "id": "r4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            560.0,
            590.0,
            125.0,
            22.0
          ],
          "text": "receive~ #1FSC_20261026_panner4"
        }
      },
      {
        "box": {
          "id": "lab1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            35.0,
            620.0,
            125.0,
            20.0
          ],
          "text": "1 · FL"
        }
      },
      {
        "box": {
          "id": "lab2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            210.0,
            620.0,
            125.0,
            20.0
          ],
          "text": "2 · FR"
        }
      },
      {
        "box": {
          "id": "lab3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            385.0,
            620.0,
            125.0,
            20.0
          ],
          "text": "3 · RR"
        }
      },
      {
        "box": {
          "id": "lab4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            560.0,
            620.0,
            125.0,
            20.0
          ],
          "text": "4 · RL"
        }
      },
      {
        "box": {
          "comment": "1 FL",
          "id": "out1",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            35.0,
            655.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "2 FR",
          "id": "out2",
          "index": 2,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            210.0,
            655.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "3 RR",
          "id": "out3",
          "index": 3,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            385.0,
            655.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "4 RL",
          "id": "out4",
          "index": 4,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            560.0,
            655.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "warning",
          "linecount": 4,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            720.0,
            590.0,
            315.0,
            60.0
          ],
          "text": "Diese Fassung ist absichtlich noch keine poly~-Voice. Die nummerierten send~/receive~-Namen werden nach dem klanglichen Eins-zu-eins-Test durch direkte Voice-Verbindungen ersetzt."
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "out1",
            0
          ],
          "source": [
            "r1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out2",
            0
          ],
          "source": [
            "r2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out3",
            0
          ],
          "source": [
            "r3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out4",
            0
          ],
          "source": [
            "r4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "mono-send",
            0
          ],
          "source": [
            "synth",
            0
          ]
        }
      }
    ]
  }
}
