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
      100.0,
      100.0,
      760.0,
      360.0
    ],
    "boxes": [
      {
        "box": {
          "fontsize": 13.0,
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            30.0,
            20.0,
            650.0,
            22.0
          ],
          "text": "MS_XY_Distance — Abstand der XY-Position vom realen Hörplatz im 140 × 200 cm Quad-Rechteck"
        }
      },
      {
        "box": {
          "id": "desc",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            30.0,
            48.0,
            690.0,
            22.0
          ],
          "text": "Input: x y normiert 0..1. Hörplatz: x=0.5 / y=0.357 (= 70 cm von links, 71.4 cm hinter Front). Output: Distanz in cm."
        }
      },
      {
        "box": {
          "comment": "XY-Liste: x y",
          "id": "in",
          "index": 1,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            45.0,
            95.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "expr",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            45.0,
            180.0,
            560.0,
            22.0
          ],
          "text": "expr sqrt((($f1-0.5)*140.)*(($f1-0.5)*140.) + (($f2-0.357)*200.)*(($f2-0.357)*200.))"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "num",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            45.0,
            230.0,
            90.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "cm",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            140.0,
            231.0,
            35.0,
            20.0
          ],
          "text": "cm"
        }
      },
      {
        "box": {
          "comment": "distance cm",
          "id": "out",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            45.0,
            275.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "check",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            190.0,
            230.0,
            520.0,
            22.0
          ],
          "text": "Kontrolle: Hörplatz ≈ 0 cm · Frontspeaker ≈ 100 cm · hintere Speaker ≈ 146.4 cm"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "num",
            0
          ],
          "order": 1,
          "source": [
            "expr",
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
            "expr",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "expr",
            0
          ],
          "source": [
            "in",
            0
          ]
        }
      }
    ]
  }
}
