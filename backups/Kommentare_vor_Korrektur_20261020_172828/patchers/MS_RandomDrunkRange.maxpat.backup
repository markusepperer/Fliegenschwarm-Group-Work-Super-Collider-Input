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
        "rect": [ 215.0, 220.0, 1344.0, 897.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "linecount": 17,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 546.0, 74.5, 262.0, 234.0 ],
                    "text": "Jede Fliege besitzt eine charakteristische Flügelschlagfrequenz, die aufgrund von Morphologie und aktuellem Flugzustand variiert; darüber liegt eine langsame, unregelmäßige Variation der Schlagfrequenz.\n\nDer interessante Punkt für deinen Patch ist aber noch etwas anderes: 180–260 Hz um einen Mittelpunkt von 220 Hz entsprechen ungefähr ±18 %. Das liegt ziemlich genau in der Größenordnung der schnellen Frequenzvariation, die Farnell für Fliegen als klanglich relevant beschreibt. Er spricht davon, dass die Flügelfrequenz rasch um ungefähr 20 % variieren kann. Das passt also erstaunlich gut zu dem Bereich, den wir klanglich gewählt haben."
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 249.10714048147202, 341.07142531871796, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 249.10714048147202, 272.32142597436905, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 249.10714048147202, 305.3571399450302, 122.0, 22.0 ],
                    "text": "random @range 4 14"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 397.32142478227615, 577.6785659193993, 500.0, 21.0 ],
                    "text": "Fliegen-Grundfrequenz: drunk + zufällige line-Rampen"
                }
            },
            {
                "box": {
                    "id": "c1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 397.32142478227615, 609.8214227557182, 620.0, 20.0 ],
                    "text": "200–360 Hz, max. Schritt ±6-14 Hz, Rampendauer 2–7 s. Nächster Zielwert erst nach Ende der Rampe."
                }
            },
            {
                "box": {
                    "id": "auto_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 429.4642816185951, 659.8214222788811, 120.0, 20.0 ],
                    "text": "AUTO START/STOP"
                }
            },
            {
                "box": {
                    "id": "sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 136.0, 281.0, 52.0, 22.0 ],
                    "text": "sel 1 0"
                }
            },
            {
                "box": {
                    "id": "stopmsg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 152.5, 564.2857089042664, 36.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 50.0, 293.0, 42.0, 22.0 ],
                    "text": "gate 1"
                }
            },
            {
                "box": {
                    "id": "trig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 90.0, 334.0, 44.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "drunk",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 90.0, 382.0, 178.0, 22.0 ],
                    "text": "drunk 220. 6. @range 160. 220."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "target_num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 90.0, 421.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "target_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 166.0, 422.0, 100.0, 20.0 ],
                    "text": "neues Ziel Hz"
                }
            },
            {
                "box": {
                    "id": "randtime",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 308.0, 334.0, 88.0, 22.0 ],
                    "text": "random 5001"
                }
            },
            {
                "box": {
                    "id": "addtime",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 308.0, 382.0, 58.0, 22.0 ],
                    "text": "+ 2000"
                }
            },
            {
                "box": {
                    "id": "time_num",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 308.0, 411.60713893175125, 64.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "time_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 383.92856776714325, 412.60713893175125, 120.0, 20.0 ],
                    "text": "Rampenzeit ms"
                }
            },
            {
                "box": {
                    "id": "pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 87.0, 510.71428084373474, 88.0, 22.0 ],
                    "text": "pack 0. 3000"
                }
            },
            {
                "box": {
                    "id": "line",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 87.0, 600.8928514122963, 62.0, 22.0 ],
                    "text": "line 230."
                }
            },
            {
                "box": {
                    "id": "freq_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 106.64285695552826, 636.607136785984, 180.0, 20.0 ],
                    "text": "aktuelle Grundfrequenz Hz"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-1",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 87.0, 40.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-2",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.0, 716.0714217424393, 30.0, 30.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "pack", 1 ],
                    "order": 1,
                    "source": [ "addtime", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "time_num", 0 ],
                    "order": 0,
                    "source": [ "addtime", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 0 ],
                    "order": 1,
                    "source": [ "drunk", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "target_num", 0 ],
                    "order": 0,
                    "source": [ "drunk", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "trig", 0 ],
                    "source": [ "gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gate", 1 ],
                    "midpoints": [ 139.5, 630.1428565979004, 36.0, 630.1428565979004, 36.0, 279.0, 82.5, 279.0 ],
                    "source": [ "line", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gate", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sel", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "drunk", 2 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "line", 0 ],
                    "source": [ "pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "addtime", 0 ],
                    "source": [ "randtime", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stopmsg", 0 ],
                    "source": [ "sel", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "trig", 0 ],
                    "source": [ "sel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "line", 0 ],
                    "source": [ "stopmsg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "drunk", 0 ],
                    "source": [ "trig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "trig", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randtime", 0 ],
                    "order": 0,
                    "source": [ "trig", 1 ]
                }
            }
        ]
    }
}