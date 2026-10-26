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
          "id": "alignment-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            958.2562619447708,
            970.8307992219925,
            100.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            0.0,
            0.0,
            69.78397971391678,
            33.0
          ],
          "text": "PARALLELFLUG"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "linecount": 15,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            74.0,
            330.0,
            368.0,
            208.0
          ],
          "text": "Das Modul PARALLELFLUG koppelt die Flugbewegungen eines Teilschwarms zunehmend an dessen Führungsfliege.\n- 0 % Angleichung: Jede Fliege folgt weiterhin ihrer eigenen Flugbahn.\n- Zwischenwerte: Die eigene Flugbahn wird mit der Bewegung der Führungsfliege gemischt.\n- 100 % Angleichung: Alle Fliegen des Teilschwarms bewegen sich parallel zur Führungsfliege. Ihre räumlichen Abstände bleiben erhalten; sie fallen nicht auf einen Punkt zusammen.\nBeim Einschalten merkt sich jede Fliege ihren aktuellen Abstand zur Führungsfliege. Dadurch sollte die Formation nicht plötzlich springen. Das Ein- und Ausschalten wird außerdem geglättet.\nDas Modul folgt der Schwarmadresse:\n- 0 bearbeitet alle Teilschwärme.\n- 1–4 bearbeitet nur den ausgewählten Teilschwarm."
        }
      },
      {
        "box": {
          "id": "alignment-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            110.55045366287231,
            108.0,
            160.0,
            20.0
          ],
          "presentation": 1,
          "presentation_linecount": 2,
          "presentation_rect": [
            7.391989856958389,
            57.0,
            55.0,
            33.0
          ],
          "text": "Angleichung (%)"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "alignment-num",
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
            110.55045366287231,
            77.0,
            55.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            7.391989856958389,
            34.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "alignment-pre",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.55045366287231,
            192.0,
            115.0,
            22.0
          ],
          "text": "prepend alignment"
        }
      },
      {
        "box": {
          "id": "alignment-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.55045366287231,
            48.0,
            50.0,
            22.0
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-7",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.55045366287231,
            2.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "obj-11",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            110.55045366287231,
            244.0,
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
            "alignment-pre",
            0
          ],
          "source": [
            "alignment-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-11",
            0
          ],
          "source": [
            "alignment-pre",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "alignment-num",
            0
          ],
          "source": [
            "alignment-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "alignment-set",
            0
          ],
          "source": [
            "obj-7",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
