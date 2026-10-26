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
        "rect": [ 613.0, 104.0, 720.0, 520.0 ],
        "boxes": [
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 18.0, 520.0, 20.0 ],
                    "text": "Distance Air Filter · finale entfernungsabhängige Höhendämpfung"
                }
            },
            {
                "box": {
                    "id": "desc",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 42.0, 600.0, 33.0 ],
                    "text": "Verwendet die reale Entfernung zum Hörplatz. Bypass ist vollständig neutral; Amount 0 lässt auch im aktiven Zustand die Klangfarbe praktisch unverändert."
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "audio-in",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 157.0, 96.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "distance-recv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 250.0, 87.0, 175.0, 22.0 ],
                    "text": "receive #1_Distancemapping"
                }
            },
            {
                "box": {
                    "id": "distance-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 250.0, 132.0, 88.0, 22.0 ],
                    "text": "clip 0. 146.4"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "distance-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 351.0, 132.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "amount",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 300.0, 196.0, 70.0, 22.0 ],
                    "varname": "distance_air_amount"
                }
            },
            {
                "box": {
                    "id": "amount-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 391.0, 171.0, 125.0, 20.0 ],
                    "text": "Amount 0–1"
                }
            },
            {
                "box": {
                    "id": "amount-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 300.0, 170.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "pak",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 250.0, 250.0, 92.0, 22.0 ],
                    "text": "pak 0. 0.65"
                }
            },
            {
                "box": {
                    "id": "cutoff-expr",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 250.0, 285.0, 263.0, 22.0 ],
                    "text": "expr 18000.*pow(3500./18000.\\, ($f1/146.4)*$f2)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "cutoff-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 438.0, 315.0, 78.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "cutoff-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 250.0, 320.0, 58.0, 22.0 ],
                    "text": "$1 120"
                }
            },
            {
                "box": {
                    "id": "cutoff-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 250.0, 355.0, 74.0, 22.0 ],
                    "text": "line~ 18000."
                }
            },
            {
                "box": {
                    "id": "filter",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 97.0, 355.0, 95.0, 22.0 ],
                    "text": "onepole~ 18000"
                }
            },
            {
                "box": {
                    "id": "bypass",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 31.0, 193.0, 24.0, 24.0 ],
                    "varname": "distance_air_on"
                }
            },
            {
                "box": {
                    "id": "bypass-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.0, 170.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "plus-one",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 30.0, 250.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "selector",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 405.0, 68.0, 22.0 ],
                    "text": "selector~ 2"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "audio-out",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 455.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "on-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.0, 136.0, 92.0, 33.0 ],
                    "text": "Air Filter an/aus"
                }
            },
            {
                "box": {
                    "id": "note",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 250.0, 405.0, 420.0, 47.0 ],
                    "text": "Nah: bis 18 kHz. Fern: bei Amount 1 bis ca. 7 kHz. 120 ms Glättung verhindert hörbare Parametersprünge. Der Filter verändert keine Lautstärkehüllkurve."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "pak", 1 ],
                    "source": [ "amount", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "amount", 0 ],
                    "source": [ "amount-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "filter", 0 ],
                    "order": 0,
                    "source": [ "audio-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "selector", 1 ],
                    "order": 1,
                    "source": [ "audio-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "plus-one", 0 ],
                    "source": [ "bypass", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bypass", 0 ],
                    "source": [ "bypass-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cutoff-msg", 0 ],
                    "order": 1,
                    "source": [ "cutoff-expr", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cutoff-num", 0 ],
                    "order": 0,
                    "source": [ "cutoff-expr", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "filter", 1 ],
                    "source": [ "cutoff-line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cutoff-line", 0 ],
                    "source": [ "cutoff-msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "distance-num", 0 ],
                    "order": 0,
                    "source": [ "distance-clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pak", 0 ],
                    "order": 1,
                    "source": [ "distance-clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "distance-clip", 0 ],
                    "source": [ "distance-recv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "selector", 2 ],
                    "source": [ "filter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cutoff-expr", 0 ],
                    "source": [ "pak", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "selector", 0 ],
                    "source": [ "plus-one", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio-out", 0 ],
                    "source": [ "selector", 0 ]
                }
            }
        ]
    }
}