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
        "rect": [ 180.0, 121.0, 1422.0, 942.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-28",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 188.0, 881.0, 150.0, 74.0 ],
                    "presentation": 1,
                    "presentation_linecount": 5,
                    "presentation_rect": [ 929.0, 817.0, 150.0, 74.0 ],
                    "text": "~max = NetAddr(\"192.168.244.160\", 9000);\n~max.sendMsg('/fly', 1, 0.25, 0.75);"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 746.9071725904942, 836.8852219581604, 69.0, 22.0 ],
                    "text": "mcs.limi~ 4"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 850.1858581602573, 847.5409593582153, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
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
                        "rect": [ 59.0, 114.0, 1210.0, 831.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 110.37870955467224, 100.0, 39.0, 22.0 ],
                                    "text": "$1 30"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "multichannelsignal", "", "" ],
                                    "patching_rect": [ 110.37870955467224, 129.78654819726944, 111.0, 22.0 ],
                                    "text": "mc.line~ @chans 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 185.84714931249619, 53.0, 22.0 ],
                                    "text": "mc.*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-44",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 40.00000083662417, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-45",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 110.37872300000004, 40.00000083662417, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-48",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 267.8471078366242, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 1 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 689.5301250517368, 906.5573511123657, 76.0, 22.0 ],
                    "text": "p 4chsOnOff"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 746.0875004827976, 868.8524341583252, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
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
                        "rect": [ 100.0, 100.0, 1060.0, 680.0 ],
                        "bglocked": 1,
                        "description": "Vierkanal-MC auf Stereo: 1+4 links, 2+3 rechts; Stereo-Limiter nach Mixdown; 30 ms Ausgangsrampe.",
                        "digest": "Stereo-Mixdown 1/4 links, 2/3 rechts",
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 19.0,
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 20.0, 900.0, 28.0 ],
                                    "text": "STEREO: 1 + 4 LINKS / 2 + 3 RECHTS"
                                }
                            },
                            {
                                "box": {
                                    "id": "explain",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 58.0, 900.0, 20.0 ],
                                    "text": "Kopierbares Modul: Eingang 1 = vierkanaliges MC-Signal; Eingang 2 = Ausgang an/aus (0/1). Ausgang = zweikanaliges MC-Signal."
                                }
                            },
                            {
                                "box": {
                                    "comment": "Vierkanaliges MC-Signal, Reihenfolge 1 2 3 4",
                                    "id": "audio-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 40.0, 115.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Stereo-Ausgang 0/1, 30 ms Rampe",
                                    "id": "enable-in",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 720.0, 115.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "pans-note",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 280.0, 110.0, 400.0, 33.0 ],
                                    "text": "Pan-Signal: vier Werte fuer vier EINGANGS-Kanaele. Bei pancontrolmode 1 gilt: 0 = ganz links, 1 = ganz rechts."
                                }
                            },
                            {
                                "box": {
                                    "id": "pans",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 280.0, 182.0, 270.0, 22.0 ],
                                    "text": "mc.sig~ @chans 4 @values 0. 1. 1. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "mix",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 40.0, 238.0, 480.0, 22.0 ],
                                    "text": "mc.mixdown~ 2 @pancontrolmode 1 @linearpanmode 1 @autogain 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "unity",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 40.0, 275.0, 620.0, 20.0 ],
                                    "text": "Einheitsverstaerkung: L = Eingang 1 + 4; R = Eingang 2 + 3. Kein automatisches Absenken durch autogain."
                                }
                            },
                            {
                                "box": {
                                    "id": "limiter",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 40.0, 338.0, 280.0, 22.0 ],
                                    "text": "mcs.limi~ 2 @threshold -1. @postamp 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "limit-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 340.0, 337.0, 530.0, 20.0 ],
                                    "text": "Limiter NACH dem Summieren, gemeinsam fuer den Stereo-Ausgang."
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp-message",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 720.0, 190.0, 50.0, 22.0 ],
                                    "text": "$1 30"
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "multichannelsignal", "", "" ],
                                    "patching_rect": [ 720.0, 238.0, 140.0, 22.0 ],
                                    "text": "mc.line~ @chans 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "gate",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 40.0, 420.0, 75.0, 22.0 ],
                                    "text": "mc.*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "Stereo-MC: Kanal 1 links, Kanal 2 rechts",
                                    "id": "audio-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 40.0, 500.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "copy-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 35.0, 555.0, 990.0, 20.0 ],
                                    "text": "Anschluss: mc.pack~ 4 -> Audioeingang links. Toggle 0/1 -> Steuereingang rechts. Stereo-MC-Ausgang -> mc.unpack~ 2 -> dac~ 1 2. Ausgang bleibt bis zum ersten Einschalten stumm."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "mix", 0 ],
                                    "source": [ "audio-in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ramp-message", 0 ],
                                    "source": [ "enable-in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "audio-out", 0 ],
                                    "source": [ "gate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gate", 0 ],
                                    "source": [ "limiter", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "limiter", 0 ],
                                    "source": [ "mix", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mix", 1 ],
                                    "source": [ "pans", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gate", 1 ],
                                    "source": [ "ramp", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ramp", 0 ],
                                    "source": [ "ramp-message", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 819.0383180677891, 904.9180068969727, 155.0, 22.0 ],
                    "saved_object_attributes": {
                        "description": "Vierkanal-MC auf Stereo: 1+4 links, 2+3 rechts; Stereo-Limiter nach Mixdown; 30 ms Ausgangsrampe.",
                        "digest": "Stereo-Mixdown 1/4 links, 2/3 rechts"
                    },
                    "text": "p Stereo_14_L_23_R"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 850.1858581602573, 873.7704668045044, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 688.7104529440403, 937.704891204834, 84.0, 22.0 ],
                    "text": "mc.unpack~ 4"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 819.0383180677891, 933.6065306663513, 84.0, 22.0 ],
                    "text": "mc.unpack~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 747.5, 788.5, 70.0, 22.0 ],
                    "text": "mc.pack~ 4"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 819.0383180677891, 969.2308917045593, 134.67742031812668, 22.0 ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 316.666659116745, 131.6666635274887, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.933333333333333, 0.0, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-38",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Fliegenfliegen.maxpat",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 177.0, 159.99999618530273, 82.64462351799011, 113.22313421964645 ],
                    "presentation": 1,
                    "presentation_rect": [ 281.35145169496536, 85.84911754727364, 82.64462351799011, 113.22313421964645 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.9058823529411765, 0.8627450980392157, 0.8627450980392157, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-30",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Flow.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 1069.999974489212, 799.9999809265137, 214.66667306423187, 234.66667366027832 ],
                    "presentation": 1,
                    "presentation_rect": [ 1016.470630645752, 152.92199617624283, 214.66667306423187, 234.66667366027832 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.8980392156862745, 0.9450980392156862, 0.8745098039215686, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-22",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Flocking.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 1301.666635632515, 816.666647195816, 120.1680600643158, 218.48738193511963 ],
                    "presentation": 1,
                    "presentation_rect": [ 1249.4118168354034, 170.5690557360649, 120.1680600643158, 218.48738193511963 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.8117647058823529, 0.0, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-80",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Flugbahnensteuerung.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 584.9999860525131, 33.333332538604736, 208.60215973854065, 82.79570257663727 ],
                    "presentation": 1,
                    "presentation_rect": [ 648.3146585226059, 11.235955953598022, 208.60215973854065, 82.79570257663727 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
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
                        "rect": [ 59.0, 111.0, 1344.0, 900.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "portal-mouse-route",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 100.0, 110.0, 22.0 ],
                                    "text": "route portalxy"
                                }
                            },
                            {
                                "box": {
                                    "id": "portal-mouse-unpack",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 126.0757485628128, 129.81638979911804, 90.0, 22.0 ],
                                    "text": "unpack 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "portal-x-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 126.0757485628128, 159.93687283992767, 50.0, 22.0 ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "portal-y-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 183.64902448654175, 163.55133080482483, 50.0, 22.0 ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-72",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.000029485504115, 39.99999963846585, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-73",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 126.07571248550425, 245.55133063846586, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-74",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 161.07571248550425, 245.55133063846586, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-75",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 196.07571248550425, 245.55133063846586, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "portal-mouse-route", 0 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "portal-mouse-route", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "portal-mouse-unpack", 0 ],
                                    "source": [ "portal-mouse-route", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "portal-x-set", 0 ],
                                    "source": [ "portal-mouse-unpack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "portal-y-set", 0 ],
                                    "source": [ "portal-mouse-unpack", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "portal-x-set", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "source": [ "portal-y-set", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1059.9999747276306, 743.3333156108856, 85.0, 22.0 ],
                    "text": "p Route Portal"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
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
                        "rect": [ 0.0, 0.0, 1344.0, 900.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "spread",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 100.0, 74.0, 22.0 ],
                                    "text": "spread 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "rotate",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 128.89907598495483, 100.0, 60.0, 22.0 ],
                                    "text": "rotate 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "shiftx",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 198.6238408088684, 100.0, 60.0, 22.0 ],
                                    "text": "shiftx 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "shifty",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 268.348605632782, 100.0, 60.0, 22.0 ],
                                    "text": "shifty 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "shake",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 339.9082326889038, 100.0, 62.0, 22.0 ],
                                    "text": "shake 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "center",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 408.71556639671326, 100.0, 62.0, 22.0 ],
                                    "text": "center 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-69",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 191.1559356785126, 182.00000026210023, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-70",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 408.71556767851257, 182.00000026210023, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "center", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "rotate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "shake", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "shiftx", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "shifty", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "spread", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 924.9999779462814, 189.999995470047, 127.0, 22.0 ],
                    "text": "p Advanced Nodes Ctl"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.9490196078431372, 1.0, 0.8627450980392157, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-64",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_tempominmaxrndm.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 439.9999895095825, 48.33333218097687, 130.5263204574585, 67.36842346191406 ],
                    "presentation": 1,
                    "presentation_rect": [ 215.73035430908203, 208.98878073692322, 142.04545319080353, 66.04545390605927 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 571.6666530370712, 231.66666114330292, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.9803921568627451, 0.8980392156862745, 0.8980392156862745, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-58",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Formation.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 56.66666531562805, 534.999987244606, 138.25503957271576, 91.27517175674438 ],
                    "presentation": 1,
                    "presentation_rect": [ 217.97754549980164, 291.0112591981888, 138.25503957271576, 91.27517175674438 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.9450980392156862, 1.0, 0.8549019607843137, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-39",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Teilschwarme_Adressierung.maxpat",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1063.333307981491, 96.66666436195374, 156.1797877550125, 69.66292691230774 ],
                    "presentation": 1,
                    "presentation_rect": [ 217.97754549980164, 396.6292451620102, 146.01852971315384, 69.85714834928513 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.8705882352941177, 0.8705882352941177, 0.8705882352941177, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-18",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_PortalInout.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1716.666625738144, 346.66665840148926, 164.99998426437378, 331.24996840953827 ],
                    "presentation": 1,
                    "presentation_rect": [ 1180.0000492334366, 414.09847766160965, 164.99998426437378, 331.24996840953827 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.9686274509803922, 0.9411764705882353, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-11",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_collective_landing.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 1548.33329641819, 338.3333252668381, 141.3333375453949, 332.00000989437103 ],
                    "presentation": 1,
                    "presentation_rect": [ 1015.2941600084305, 414.09847766160965, 141.3333375453949, 332.00000989437103 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.9294117647058824, 0.9803921568627451, 0.8980392156862745, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-49",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_radial_pulse.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 206.66666173934937, 769.9999816417694, 160.869559943676, 175.6521681547165 ],
                    "presentation": 1,
                    "presentation_rect": [ 805.6180418729782, 570.4463194012642, 160.869559943676, 175.6521681547165 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.8745098039215686, 0.8980392156862745, 1.0, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-27",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Fluchtreaktion.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 499.99998807907104, 788.333314538002, 118.25397008657455, 146.03174829483032 ],
                    "presentation": 1,
                    "presentation_rect": [ 298.8764283657074, 591.7647305727005, 118.25397008657455, 146.03174829483032 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-15",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Snake_Flugkette.maxpat",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 396.66665720939636, 769.9999816417694, 87.44185733795166, 181.3953423500061 ],
                    "presentation": 1,
                    "presentation_rect": [ 698.876460313797, 567.5747323036194, 87.44185733795166, 181.3953423500061 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.9058823529411765, 0.8745098039215686, 0.8470588235294118, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-12",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Parallelflug.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 624.9999850988388, 691.6666501760483, 70.37037599086761, 92.5925999879837 ],
                    "presentation": 1,
                    "presentation_rect": [ 221.82016867399216, 597.7528567314148, 69.28104794025421, 98.69281357526779 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.8627450980392157, 0.9450980392156862, 0.9450980392156862, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-9",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Wellen_Impuls.maxpat",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 1239.9999704360962, 28.333332657814026, 260.4166567325592, 191.66665935516357 ],
                    "presentation": 1,
                    "presentation_rect": [ 425.84273064136505, 557.3034152984619, 260.4166567325592, 191.66665935516357 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.9568627450980393, 0.8627450980392157, 1.0 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-19",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_Formation_Orbit.maxpat",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 16.666666269302368, 726.6666493415833, 173.0, 100.46780967712402 ],
                    "presentation": 1,
                    "presentation_rect": [ 221.34833228588104, 474.15734124183655, 173.0, 100.46780967712402 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 514.9999877214432, 128.33333027362823, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 404.99999034404755, 131.6666635274887, 77.0, 22.0 ],
                    "text": "loadmess 30"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 778.3333147764206, 136.66666340827942, 83.0, 22.0 ],
                    "text": "loadmess 100"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.788235294117647, 0.8941176470588236, 1.0, 0.7411764705882349 ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-61",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "FSC_20261026_ZufalligePegel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 311.6666592359543, 48.33333218097687, 119.83470410108566, 66.94214504957199 ],
                    "presentation": 1,
                    "presentation_rect": [ 528.089929819107, 42.696632623672485, 112.4999989271164, 51.59381020069122 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 59.0, 111.0, 1344.0, 900.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 129.10447657108307, 52.0, 22.0 ],
                                    "text": "open $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 50.0, 100.0, 29.5, 22.0 ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-56",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 49.999985806144764, 40.00000257350159, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-57",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 84.99998580614476, 40.00000257350159, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-58",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.999985806144764, 211.10446357350156, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 748.3333154916763, 316.666659116745, 100.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 870.7865864038467, 258.4269869327545, 100.0, 22.0 ],
                    "text": "p open instanzen"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 518.3333209753036, 216.6666615009308, 54.878050088882446, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 476.40453243255615, 42.696632623672485, 36.90476155281067, 20.0 ],
                    "text": "Gain"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 401.6666570901871, 216.6666615009308, 104.59769940376282, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 867.4157996177673, 155.0561921596527, 55.05618417263031, 33.0 ],
                    "text": "smooth panning"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 778.3333147764206, 221.6666613817215, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 867.4157996177673, 105.61798596382141, 82.79570257663727, 20.0 ],
                    "text": "Nodes Range"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 324.9999922513962, 216.6666615009308, 54.92957818508148, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 219.99999278783798, 110.43477898836136, 50.0, 20.0 ],
                    "text": "Tempo"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 666.6666507720947, 136.66666340827942, 84.82394552230835, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 420.22475266456604, 33.70786786079407, 48.80952334403992, 33.0 ],
                    "text": "Target/Voice"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 0,
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
                        "rect": [ 59.0, 111.0, 1344.0, 899.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 180.0, 283.0, 72.0, 22.0 ],
                                    "text": "capture 200"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 130.0, 223.0, 39.0, 22.0 ],
                                    "text": "atodb"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-40",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 79.0, 328.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-38",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 130.0, 317.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "meter~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 122.0, 177.0, 80.0, 13.0 ]
                                }
                            },
                            {
                                "box": {
                                    "channels": 1,
                                    "id": "obj-35",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 50.0, 191.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "live.gain~[1]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.gain~[1]",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 100.0, 70.0, 22.0 ],
                                    "text": "mc.pack~ 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 130.0, 92.0, 22.0 ],
                                    "text": "mc.mixdown~ 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-43",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-44",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 85.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-45",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 120.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-46",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 155.0, 40.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "order": 1,
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "order": 0,
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-35", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "order": 1,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "order": 0,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 1 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 2 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 3 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 901.0, 788.5, 122.0, 22.0 ],
                    "text": "p monosignalmessen"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-23",
                    "maxclass": "flonum",
                    "maximum": 20.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 316.666659116745, 161.66666281223297, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 219.99999278783798, 85.35166722536087, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 224.99999463558197, 399.99999046325684, 128.0, 22.0 ],
                    "text": "print swarmvoicecount"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 168.33332931995392, 391.66665732860565, 50.0, 22.0 ],
                    "text": "target 0"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 726.6666493415833, 168.33332931995392, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.196078431372549, 0.196078431372549, 1.0 ],
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 59.0, 111.0, 1344.0, 900.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-4",
                                    "linecount": 289,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 100.0, 686.0, 3881.0 ],
                                    "text": "Das Grundkonzept ist eine klare Trennung zwischen **zentraler Steuerung**, **50 selbstständigen Fliegenstimmen** und **gemeinsamer Audioausgabe**.\n\n```mermaid\nflowchart TD\n    GUI[\"Test-GUI<br/>globale und individuelle Befehle\"]\n    Manager[\"FSC_20261026_swarm_voice_count.js<br/>Stimmenverwaltung und Verteilung\"]\n    Poly[\"poly~ MS_FlyVoice_Poly 50\"]\n    Voice[\"50 × MS_FlyVoice_Poly<br/>je eine vollständige Fliege\"]\n    Audio[\"4 Audiokanäle<br/>Summen aller Stimmen\"]\n    Status[\"Statusausgang<br/>Voice-ID, X, Y\"]\n\n    GUI --> Manager\n    Manager --> Poly\n    Poly --> Voice\n    Voice --> Audio\n    Voice --> Status\n```\n\nIm Hauptpatch ist `poly~ MS_FlyVoice_Poly 50` der Container. Max erzeugt darin 50 voneinander unabhängige Instanzen des Patches `FSC_20261026_MS_FlyVoice_Poly.maxpat`. Jede Instanz hat eigene Flugbahndaten, eigenen Wiedergabezustand, eigenes Tempo, eigene Position und eigene Klangerzeugung.\n\n## Der Testpatch außen\n\nDie Bedienelemente erzeugen Nachrichten wie:\n\n```text\nstart\ntempo 1.2\nmode 1\nfirst 30\nlast 300\nloop 1\nexpand 100\ngain 1\n```\n\nDiese Nachrichten gehen nicht direkt in `poly~`, sondern zunächst in:\n\n```text\njs FSC_20261026_swarm_voice_count.js\n```\n\nDieses JavaScript ist die **Stimmenverwaltung**.\n\nEs weiß:\n\n- wie viele Stimmen derzeit aktiv sein sollen,\n- welche Stimme mit `target N` angesprochen wird,\n- dass `target 0` alle aktuell aktiven Stimmen bezeichnet,\n- welche Stimmen beim Erhöhen der Anzahl eingeschaltet werden,\n- welche beim Verringern gestoppt und deaktiviert werden,\n- wie individuelle Zufallstempi verteilt werden.\n\n### `target`\n\nMit:\n\n```text\ntarget 5\ntempo 2.\n```\n\nschickt das JavaScript an `poly~`:\n\n```text\ntarget 5\ntempo 2.\n```\n\nNur Stimme 5 bekommt den neuen Wert.\n\nBei:\n\n```text\ntarget 0\ntempo 2.\n```\n\ndurchläuft das JavaScript alle aktiven Stimmen:\n\n```text\ntarget 1, tempo 2.\ntarget 2, tempo 2.\ntarget 3, tempo 2.\n...\n```\n\n`target 0` bedeutet in unserer Architektur daher: **alle gegenwärtig zum Schwarm gehörenden Stimmen**.\n\n### Anzahl aktiver Stimmen\n\n`poly~` besitzt immer 50 geladene Instanzen. Das Zahlenfeld „Anzahl aktiver Fliegen“ entscheidet, wie viele davon arbeiten.\n\nWenn du von 4 auf 50 erhöhst, sendet die Verwaltung an die neu hinzukommenden Stimmen:\n\n```text\ntarget N\nactive 1\nstart\n```\n\nBeim Reduzieren erhält jede entfernte Stimme:\n\n```text\ntarget N\nstop\nactive 0\n```\n\n`active 0` wird innerhalb der Stimme zu `mute 1` für `thispoly~`. Dadurch wird die DSP-Berechnung dieser Stimme abgeschaltet. Die Instanz existiert weiterhin, verbraucht aber wesentlich weniger Rechenleistung.\n\n## Die zufällige Tempoverteilung\n\n`Tempo Min` und `Tempo Max` werden im Verwaltungs-JavaScript gespeichert. Beim Anklicken von `randomizetempo` erzeugt es für jede aktive Stimme einen eigenen Zufallswert:\n\n```text\ntarget 1, tempo 0.83\ntarget 2, tempo 1.41\ntarget 3, tempo 1.07\n...\ntarget 50, tempo 1.26\n```\n\nDamit bleiben Flugmodus, Bereich, Raumgeometrie und andere Einstellungen global, während die Stimmen zeitlich auseinanderlaufen. Genau dadurch verliert der Schwarm seine gekoppelte Bewegung.\n\n## Der Stimmenpatch innen\n\nOben in `MS_FlyVoice_Poly` kommt jede Nachricht über `in 1` herein:\n\n```text\nroute start stop flight tempo mode loop first last\n      expand spread rotate shiftx shifty shake center\n      smooth gain active resetquad\n```\n\n`route` zerlegt die Nachrichten nach ihrem ersten Wort.\n\nBeispiele:\n\n- `tempo 1.2` verlässt den Ausgang `tempo`.\n- `expand 80` verlässt den Ausgang `expand`.\n- `active 0` verlässt den Ausgang `active`.\n\nDie Objekte `prepend ...` übersetzen anschließend die äußeren, einheitlichen Namen in die Namen, welche die vorhandenen Abstraktionen erwarten:\n\n```text\ntempo 1.2  → prepend speed       → speed 1.2\nfirst 30   → prepend firstflight → firstflight 30\ngain 0.8   → prepend gain        → gain 0.8\n```\n\nDiese übersetzten Nachrichten werden an:\n\n```text\ns #0_voice_commands\n```\n\ngeschickt.\n\n`#0` ist in jeder Poly-Instanz eine andere, automatisch vergebene Nummer. Im Screenshot ist daraus beispielsweise geworden:\n\n```text\ns 3922_voice_commands\nr 3922_voice_commands\n```\n\nEine andere Stimme erhält etwa `4178_voice_commands`. Deshalb können sich die 50 Instanzen nicht gegenseitig beeinflussen.\n\n## Klangerzeugung und Panning innerhalb jeder Stimme\n\nDie eigentliche Stimme besteht aus zwei großen Teilen:\n\n```text\nMS_fly #0\nQuadpanner_FlyVoice\n```\n\n`MS_fly #0` erzeugt die Mono-Fliege. Dort liegen Synthese und bewegungsabhängige Klangveränderungen.\n\nDer Quadpanner enthält:\n\n- die Flugbahnen,\n- den gelben Positionspunkt,\n- Node-Geometrie,\n- Expand, Spread, Rotate und Shift,\n- die Verteilung der Monoquelle auf vier Lautsprecher.\n\nDie Instanz erzeugt daher direkt vier Audiosignale:\n\n```text\nLautsprecher 1\nLautsprecher 2\nLautsprecher 3\nLautsprecher 4\n```\n\n## Warum `send~` und `receive~` verwendet werden\n\nInnerhalb einer Stimme benutzt der Patch instanzbezogene Signalnamen, beispielsweise:\n\n```text\nsend~ 3922_Monosource\nreceive~ 3922panner1\nreceive~ 3922panner2\nreceive~ 3922panner3\nreceive~ 3922panner4\n```\n\nAuch hier isoliert die aus `#0` entstandene Nummer jede Stimme. Eine Fliege empfängt dadurch ausschließlich ihre eigenen vier Panning-Ausgänge.\n\nDie vier `out~`-Objekte verlassen anschließend die Poly-Stimme. `poly~` addiert automatisch alle gleich nummerierten Signalausgänge:\n\n```text\nAusgang 1 = Summe aller Stimmen auf Lautsprecher 1\nAusgang 2 = Summe aller Stimmen auf Lautsprecher 2\nAusgang 3 = Summe aller Stimmen auf Lautsprecher 3\nAusgang 4 = Summe aller Stimmen auf Lautsprecher 4\n```\n\nDeshalb besitzt der äußere Patch nur vier Audiokabel, obwohl im Inneren 50 Fliegen mit jeweils vier Kanälen laufen.\n\n## `active` und `thispoly~`\n\nDer rechte Strang verarbeitet:\n\n```text\nactive 1\n```\n\nüber:\n\n```text\nexpr 1-$i1\nprepend mute\nthispoly~\n```\n\nDaraus wird:\n\n```text\nactive 1 → mute 0\nactive 0 → mute 1\n```\n\nDie Umkehrung ist notwendig, weil „aktiv“ und „mute“ gegensätzliche Bedeutungen haben.\n\n- `active 1`: Stimme arbeitet.\n- `active 0`: Stimme wird stummgeschaltet und ihre DSP-Berechnung deaktiviert.\n\n## Der fünfte Ausgang\n\nUnten rechts empfängt jede Stimme ihre aktuellen Flugkoordinaten:\n\n```text\nreceive~ #0_Flugkoordinaten\n```\n\nDiese werden in Kontrollwerte umgewandelt und mit der Identität von `thispoly~` kombiniert:\n\n```text\nVoice-ID X Y\n```\n\nBeispielsweise:\n\n```text\n25 0.101706 0.436686\n```\n\nDas bedeutet:\n\n- Stimme 25\n- X-Position 0,101706\n- Y-Position 0,436686\n\nDieser Ausgang trägt kein Audio. Er ist für die kommende gemeinsame Schwarmdarstellung vorgesehen.\n\nDie Architektur besteht damit aus **einer zentralen Kommandoebene**, **50 voneinander isolierten vollständigen Fliegen** und **vier automatisch summierten Raumkanälen**. Jede Stimme bleibt einzeln adressierbar, während globale Befehle vom Verwaltungs-JavaScript auf den gesamten aktiven Schwarm verteilt werden."
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 1259.999969959259, 734.9999824762344, 81.0, 22.0 ],
                    "text": "p doku theory"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-26",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 514.9999877214432, 158.3333295583725, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 476.40453243255615, 71.91011810302734, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-17",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 409.99999022483826, 159.99999618530273, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 867.4157996177673, 131.46068465709686, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 778.3333147764206, 163.3333294391632, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 867.4157996177673, 79.77528727054596, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "channels": 4,
                    "id": "obj-3",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 4,
                    "numoutlets": 7,
                    "outlettype": [ "signal", "signal", "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 741.6666489839554, 628.3333183526993, 106.0, 137.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 869.6629908084869, 308.2353069782257, 50.0, 240.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 0,
                    "patching_rect": [ 674.0437862773737, 969.2308917045593, 106.0, 22.0 ],
                    "text": "dac~ 1 2 3 4"
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.9999743700027, -76.6666648387909, 686.0, 40.0 ],
                    "text": "Fliegenschwarm · Poly-Test mit bis zu 50 Stimmen"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 18.0,
                    "id": "poly",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "signal", "signal", "signal", "signal", "", "" ],
                    "patching_rect": [ 748.3333154916763, 348.3333250284195, 368.0, 29.0 ],
                    "text": "poly~ FSC_20261026_MS_FlyVoice_Poly 50",
                    "varname": "poly~"
                }
            },
            {
                "box": {
                    "id": "targetnum",
                    "maxclass": "number",
                    "maximum": 50,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 666.6666507720947, 168.33332931995392, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 416.85396587848663, 71.91011810302734, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "targetpre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 666.6666507720947, 194.9999953508377, 90.0, 22.0 ],
                    "text": "prepend target"
                }
            },
            {
                "box": {
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 628.3333183526993, 259.99999380111694, 38.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 226.08694911003113, 141.87340450286865, 38.0, 22.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.6666506528854, 259.99999380111694, 34.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 227.8260794878006, 170.5690557360649, 34.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "tempo",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 316.666659116745, 188.33332884311676, 59.0, 22.0 ],
                    "text": "tempo $1"
                }
            },
            {
                "box": {
                    "id": "loop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 571.6666530370712, 259.99999380111694, 47.0, 22.0 ],
                    "text": "loop 1"
                }
            },
            {
                "box": {
                    "id": "expand",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 778.3333147764206, 193.33332872390747, 65.0, 22.0 ],
                    "text": "expand $1"
                }
            },
            {
                "box": {
                    "id": "smooth",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 409.99999022483826, 188.33332884311676, 65.0, 22.0 ],
                    "text": "smooth $1"
                }
            },
            {
                "box": {
                    "id": "gain",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 514.9999877214432, 191.66666209697723, 48.0, 22.0 ],
                    "text": "gain $1"
                }
            },
            {
                "box": {
                    "id": "meter1",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 2,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 718.3333162069321, 473.33332204818726, 18.0, 121.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 922.3529796600342, 414.09847766160965, 18.0, 121.0 ]
                }
            },
            {
                "box": {
                    "id": "meter2",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 2,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 769.9999816417694, 473.33332204818726, 18.0, 121.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 943.5294511318207, 414.09847766160965, 18.0, 121.0 ]
                }
            },
            {
                "box": {
                    "id": "meter3",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 2,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 811.6666473150253, 473.33332204818726, 18.0, 121.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 967.0588638782501, 414.09847766160965, 18.0, 121.0 ]
                }
            },
            {
                "box": {
                    "id": "meter4",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 2,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 869.9999792575836, 476.66665530204773, 18.0, 121.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 988.2353353500366, 414.09847766160965, 18.0, 121.0 ]
                }
            },
            {
                "box": {
                    "id": "status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 881.8274262666703, 391.66665732860565, 164.7058892250061, 22.0 ],
                    "text": "50 0.437426 0.104925"
                }
            },
            {
                "box": {
                    "id": "statuslab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 853.3333129882812, 409.99999022483826, 127.41935575008392, 20.0 ],
                    "text": "Stimmen-ID · X · Y"
                }
            },
            {
                "box": {
                    "id": "msg-resetquad",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 924.9999779462814, 148.33332979679108, 68.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 867.4157996177673, 192.13484680652618, 68.0, 22.0 ],
                    "text": "resetquad"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.933333333333333, 0.0, 1.0 ],
                    "fontsize": 16.0,
                    "id": "voicecount-js",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 146.8614661693573, 364.66665732860565, 389.6103858947754, 26.0 ],
                    "saved_object_attributes": {
                        "filename": "FSC_20261026_swarm_voice_count.js",
                        "parameter_enable": 0
                    },
                    "text": "js FSC_20261026_swarm_voice_count.js"
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "swarm-display-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1069.999974489212, 223.33332800865173, 440.0, 24.0 ],
                    "text": "SCHWARMDARSTELLUNG · gelber Punkt + Voice-ID"
                }
            },
            {
                "box": {
                    "filename": "FSC_20261026_swarm_display.js",
                    "id": "swarm-display",
                    "jsarguments": [ "FSC_20261026_swarm_display.js" ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1059.9999747276306, 283.33332657814026, 440.0, 440.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 416.85396587848663, 102.247199177742, 440.0, 440.0 ]
                }
            },
            {
                "box": {
                    "id": "swarm-display-note",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1381.6666337251663, 731.666649222374, 124.09639012813568, 47.0 ],
                    "text": "Monitor: verändert weder Flugbahnen noch Audiopanning."
                }
            },
            {
                "box": {
                    "id": "swarm-autogain",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 728.3333159685135, 449.99998927116394, 218.0, 22.0 ],
                    "text": "FSC_20261026_MS_Swarm_AutoGain"
                }
            },
            {
                "box": {
                    "id": "subswarms-ui-route",
                    "linecount": 11,
                    "maxclass": "newobj",
                    "numinlets": 17,
                    "numoutlets": 17,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 276.6666600704193, 511.6666544675827, 165.0, 156.0 ],
                    "text": "route setdensity setgrid setorbit setringmode setorbitspread setpulseinner setpulseouter setpulsetempo setpulsephase setpulsetempospread setsnake setsnakespacing setalignment setescapestrength setescapereturn setsnakedeviation"
                }
            },
            {
                "box": {
                    "id": "subswarms-set-density",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 54.999998688697815, 499.99998807907104, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "subswarms-set-grid",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 168.33332931995392, 499.99998807907104, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "landing-target-recv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1074.9999743700027, 249.99999403953552, 222.0, 22.0 ],
                    "text": "r FSC_20261026_3922_landing_targets"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 748.3333154916763, 283.33332657814026, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 923.5955793857574, 229.21350145339966, 23.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "number",
                    "maximum": 50,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 828.3333135843277, 283.33332657814026, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 869.6629908084869, 230.33709704875946, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "swarm-manager-recv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 344.999991774559, 316.666659116745, 295.0, 22.0 ],
                    "text": "r FSC_20261026_3922_swarm_manager_commands"
                }
            },
            {
                "box": {
                    "annotation": "Intern: vorhandene Steuerung. SuperCollider: /fly ID X Y auf UDP 9000; feste Kreis-Grundstellung.",
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 20.0,
                    "id": "sc-source-button",
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.5128231048584, 1000.0001263618469, 174.4088817834854, 29.487183213233948 ],
                    "presentation": 1,
                    "presentation_rect": [ 662.0, 817.0, 240.0, 24.0 ],
                    "text": "Intern",
                    "texton": "SuperCollider",
                    "textoncolor": [ 1.0, 0.717647058823529, 0.0, 1.0 ],
                    "textovercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "usebgoncolor": 1,
                    "usetextovercolor": 1,
                    "varname": "FSC_20261026_position_source"
                }
            },
            {
                "box": {
                    "id": "sc-source-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1120.0, 99.0, 22.0 ],
                    "text": "prepend external"
                }
            },
            {
                "box": {
                    "id": "sc-udp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1170.0, 207.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 433.0, 819.0, 207.0, 22.0 ],
                    "saved_object_attributes": {
                        "defer": 1
                    },
                    "text": "udpreceive 9000"
                }
            },
            {
                "box": {
                    "id": "sc-route",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 20.0, 1200.0, 70.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 433.0, 849.0, 70.0, 22.0 ],
                    "text": "route /fly"
                }
            },
            {
                "box": {
                    "id": "sc-valid",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 100.0, 95.0, 1360.0, 943.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 10.0, 1200.0, 20.0 ],
                                    "text": "EINGANGSPRÜFUNG — genau ID X Y; ID ganzzahlig 1..50, X/Y numerisch 0..1"
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
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 70.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 700.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "order",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "bang" ],
                                    "patching_rect": [ 20.0, 130.0, 55.0, 22.0 ],
                                    "text": "t l l b"
                                }
                            },
                            {
                                "box": {
                                    "id": "clear",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1100.0, 150.0, 55.0, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "tests",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 280.0, 180.0, 57.6, 22.0 ],
                                    "text": "t l l l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "flags",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 650.0, 510.0, 76.80000000000001, 22.0 ],
                                    "text": "pack 0 0 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "nth0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 200.0, 240.0, 55.0, 22.0 ],
                                    "text": "zl nth 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "type0",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 200.0, 290.0, 96.0, 22.0 ],
                                    "text": "route int float"
                                }
                            },
                            {
                                "box": {
                                    "id": "valid0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 200.0, 340.0, 326.40000000000003, 22.0 ],
                                    "text": "expr ($f1 >= 1) && ($f1 <= 50) && ($f1 == int($f1))"
                                }
                            },
                            {
                                "box": {
                                    "id": "flag0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 200.0, 400.0, 55.0, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "nth1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 530.0, 240.0, 55.0, 22.0 ],
                                    "text": "zl nth 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "type1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 530.0, 290.0, 96.0, 22.0 ],
                                    "text": "route int float"
                                }
                            },
                            {
                                "box": {
                                    "id": "valid1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 530.0, 340.0, 185.60000000000002, 22.0 ],
                                    "text": "expr ($f1 >= 0) && ($f1 <= 1)"
                                }
                            },
                            {
                                "box": {
                                    "id": "flag1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 530.0, 400.0, 55.0, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "nth2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 860.0, 240.0, 55.0, 22.0 ],
                                    "text": "zl nth 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "type2",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 860.0, 290.0, 96.0, 22.0 ],
                                    "text": "route int float"
                                }
                            },
                            {
                                "box": {
                                    "id": "valid2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 860.0, 340.0, 185.60000000000002, 22.0 ],
                                    "text": "expr ($f1 >= 0) && ($f1 <= 1)"
                                }
                            },
                            {
                                "box": {
                                    "id": "flag2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 860.0, 400.0, 55.0, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "len",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1120.0, 240.0, 55.0, 22.0 ],
                                    "text": "zl len"
                                }
                            },
                            {
                                "box": {
                                    "id": "three",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 1120.0, 290.0, 55.0, 22.0 ],
                                    "text": "== 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "dataorder",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 20.0, 450.0, 55.0, 22.0 ],
                                    "text": "t l b"
                                }
                            },
                            {
                                "box": {
                                    "id": "flagorder",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "bang" ],
                                    "patching_rect": [ 200.0, 450.0, 55.0, 22.0 ],
                                    "text": "t b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "all",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 650.0, 555.0, 185.60000000000002, 22.0 ],
                                    "text": "expr $i1 && $i2 && $i3 && $i4"
                                }
                            },
                            {
                                "box": {
                                    "id": "gate",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 620.0, 55.0, 22.0 ],
                                    "text": "gate 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "gate", 0 ],
                                    "source": [ "all", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flag0", 1 ],
                                    "order": 2,
                                    "source": [ "clear", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flag1", 1 ],
                                    "order": 1,
                                    "source": [ "clear", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flag2", 1 ],
                                    "order": 0,
                                    "source": [ "clear", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flagorder", 0 ],
                                    "source": [ "dataorder", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gate", 1 ],
                                    "source": [ "dataorder", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flags", 0 ],
                                    "source": [ "flag0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flags", 1 ],
                                    "source": [ "flag1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flags", 2 ],
                                    "source": [ "flag2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flag0", 0 ],
                                    "source": [ "flagorder", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flag1", 0 ],
                                    "source": [ "flagorder", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flag2", 0 ],
                                    "source": [ "flagorder", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "all", 0 ],
                                    "source": [ "flags", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "gate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "order", 0 ],
                                    "source": [ "in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "three", 0 ],
                                    "source": [ "len", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "type0", 0 ],
                                    "source": [ "nth0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "type1", 0 ],
                                    "source": [ "nth1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "type2", 0 ],
                                    "source": [ "nth2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "clear", 0 ],
                                    "source": [ "order", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "dataorder", 0 ],
                                    "source": [ "order", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tests", 0 ],
                                    "source": [ "order", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "len", 0 ],
                                    "source": [ "tests", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "nth0", 0 ],
                                    "source": [ "tests", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "nth1", 0 ],
                                    "source": [ "tests", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "nth2", 0 ],
                                    "source": [ "tests", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flags", 3 ],
                                    "source": [ "three", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "valid0", 0 ],
                                    "source": [ "type0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "valid0", 0 ],
                                    "source": [ "type0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "valid1", 0 ],
                                    "source": [ "type1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "valid1", 0 ],
                                    "source": [ "type1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "valid2", 0 ],
                                    "source": [ "type2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "valid2", 0 ],
                                    "source": [ "type2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flag0", 1 ],
                                    "source": [ "valid0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flag1", 1 ],
                                    "source": [ "valid1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flag2", 1 ],
                                    "source": [ "valid2", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 20.0, 1230.0, 107.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 433.0, 879.0, 107.0, 22.0 ],
                    "text": "p ID_X_Y_pruefen"
                }
            },
            {
                "box": {
                    "id": "sc-address",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1280.0, 185.60000000000002, 22.0 ],
                    "text": "setvalue $1 externalpos $2 $3"
                }
            },
            {
                "box": {
                    "id": "sc-receive-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 1035.0, 750.0, 20.0 ],
                    "text": "OSC: /fly ID X Y → ID adressiert direkt die poly~-Stimme."
                }
            },
            {
                "box": {
                    "id": "sc-address-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 1320.0, 800.0, 20.0 ],
                    "text": "Beispiel: 7 0.25 0.75 → setvalue 7 externalpos 0.25 0.75. Der bisherige poly~-Target bleibt unverändert."
                }
            },
            {
                "box": {
                    "id": "sc-controls",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 550.0000694990158, 1103.8462933301926, 115.2, 22.0 ],
                    "text": "route source state"
                }
            },
            {
                "box": {
                    "id": "sc-modeorder",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 550.0, 1170.0, 55.0, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "sc-modebroadcast",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 760.0, 1210.0, 140.8, 22.0 ],
                    "text": "setvalue 0 external $1"
                }
            },
            {
                "box": {
                    "id": "sc-clock",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 550.0, 1210.0, 63.0, 22.0 ],
                    "text": "qmetro 10"
                }
            },
            {
                "box": {
                    "id": "sc-tick",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 550.0, 1244.871952176094, 147.20000000000002, 22.0 ],
                    "text": "setvalue 0 externaltick"
                }
            },
            {
                "box": {
                    "id": "sc-state",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.8071725904941, 1120.0, 211.20000000000002, 22.0 ],
                    "text": "setvalue 0 externalstate $1 $2 $3"
                }
            },
            {
                "box": {
                    "id": "sc-controls-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 550.0, 1380.0, 760.0, 20.0 ],
                    "text": "Vorhandene Max-Steuerung: Quelle / aktive Anzahl / davon bewegt / Start–Stop. 0 = an alle Stimmen."
                }
            },
            {
                "box": {
                    "id": "sc-receive-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1205.0, 65.0, 22.0 ],
                    "text": "gate 1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "expand", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "expand", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "source": [ "landing-target-recv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "loop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "msg-resetquad", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "msg-resetquad", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 1 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smooth", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 3 ],
                    "source": [ "obj-21", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
                    "source": [ "obj-21", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tempo", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "targetpre", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 3 ],
                    "order": 1,
                    "source": [ "obj-3", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 2 ],
                    "order": 1,
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "order": 1,
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 3 ],
                    "order": 0,
                    "source": [ "obj-3", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 2 ],
                    "order": 0,
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 1 ],
                    "order": 0,
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "order": 0,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "order": 1,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-autogain", 0 ],
                    "order": 0,
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "source": [ "obj-38", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-38", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 0 ],
                    "order": 1,
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-39", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "expand", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 1 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 1 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "poly", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "loop", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-71", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 1 ],
                    "source": [ "obj-76", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-76", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 1 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "status", 1 ],
                    "order": 1,
                    "source": [ "poly", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-autogain", 4 ],
                    "source": [ "poly", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-autogain", 3 ],
                    "source": [ "poly", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-autogain", 2 ],
                    "source": [ "poly", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-autogain", 1 ],
                    "source": [ "poly", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "poly", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "poly", 0 ],
                    "midpoints": [ 29.5, 1305.0, 3.0, 1305.0, 3.0, 432.0, 735.0, 432.0, 735.0, 345.0, 757.8333154916763, 345.0 ],
                    "source": [ "sc-address", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-tick", 0 ],
                    "source": [ "sc-clock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-modeorder", 0 ],
                    "source": [ "sc-controls", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-state", 0 ],
                    "source": [ "sc-controls", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "poly", 0 ],
                    "midpoints": [ 769.5, 1233.0, 672.0, 1233.0, 672.0, 1107.0, 792.0, 1107.0, 792.0, 894.0, 732.0, 894.0, 732.0, 777.0, 705.0, 777.0, 705.0, 345.0, 757.8333154916763, 345.0 ],
                    "source": [ "sc-modebroadcast", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-clock", 0 ],
                    "source": [ "sc-modeorder", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-modebroadcast", 0 ],
                    "source": [ "sc-modeorder", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-valid", 0 ],
                    "source": [ "sc-receive-gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-receive-gate", 1 ],
                    "source": [ "sc-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-receive-gate", 0 ],
                    "order": 0,
                    "source": [ "sc-source-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-source-pre", 0 ],
                    "order": 1,
                    "source": [ "sc-source-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "midpoints": [ 29.5, 1143.0, 3.0, 1143.0, 3.0, 432.0, 573.0, 432.0, 573.0, 345.0, 526.9718520641327, 345.0 ],
                    "source": [ "sc-source-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "poly", 0 ],
                    "midpoints": [ 685.3071725904941, 1143.0, 672.0, 1143.0, 672.0, 1107.0, 792.0, 1107.0, 792.0, 894.0, 732.0, 894.0, 732.0, 777.0, 705.0, 777.0, 705.0, 345.0, 757.8333154916763, 345.0 ],
                    "source": [ "sc-state", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "poly", 0 ],
                    "midpoints": [ 559.5, 1314.0, 537.0, 1314.0, 537.0, 1065.0, 792.0, 1065.0, 792.0, 894.0, 732.0, 894.0, 732.0, 777.0, 705.0, 777.0, 705.0, 345.0, 757.8333154916763, 345.0 ],
                    "source": [ "sc-tick", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-route", 0 ],
                    "source": [ "sc-udp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-address", 0 ],
                    "source": [ "sc-valid", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "smooth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "stop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "subswarms-set-density", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 1 ],
                    "source": [ "subswarms-set-grid", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "subswarms-ui-route", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "source": [ "subswarms-ui-route", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "subswarms-ui-route", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 2 ],
                    "source": [ "subswarms-ui-route", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 2 ],
                    "source": [ "subswarms-ui-route", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 1 ],
                    "source": [ "subswarms-ui-route", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "subswarms-ui-route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 1 ],
                    "source": [ "subswarms-ui-route", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "subswarms-ui-route", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 4 ],
                    "source": [ "subswarms-ui-route", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 3 ],
                    "source": [ "subswarms-ui-route", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 2 ],
                    "source": [ "subswarms-ui-route", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 1 ],
                    "source": [ "subswarms-ui-route", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "subswarms-ui-route", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subswarms-set-density", 0 ],
                    "source": [ "subswarms-ui-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subswarms-set-grid", 0 ],
                    "source": [ "subswarms-ui-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter1", 0 ],
                    "order": 1,
                    "source": [ "swarm-autogain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter2", 0 ],
                    "order": 1,
                    "source": [ "swarm-autogain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter3", 0 ],
                    "order": 0,
                    "source": [ "swarm-autogain", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter4", 0 ],
                    "order": 0,
                    "source": [ "swarm-autogain", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 3 ],
                    "order": 1,
                    "source": [ "swarm-autogain", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 2 ],
                    "order": 1,
                    "source": [ "swarm-autogain", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "order": 0,
                    "source": [ "swarm-autogain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "swarm-autogain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "swarm-display", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "swarm-manager-recv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "targetpre", 0 ],
                    "source": [ "targetnum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "targetpre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "tempo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "order": 1,
                    "source": [ "voicecount-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "voicecount-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "poly", 0 ],
                    "order": 0,
                    "source": [ "voicecount-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc-controls", 0 ],
                    "source": [ "voicecount-js", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subswarms-ui-route", 0 ],
                    "source": [ "voicecount-js", 2 ]
                }
            }
        ],
        "parameters": {
            "obj-3": [ "live.gain~", "live.gain~", 0 ],
            "obj-47::obj-35": [ "live.gain~[1]", "live.gain~[1]", 0 ],
            "obj-80::obj-36": [ "live.tab", "live.tab", 0 ],
            "poly.10::synth::doppler-control::dop-amount": [ "doppler_amount[88]", "doppler_amount", 0 ],
            "poly.10::synth::obj-152::gain0": [ "Harmonic 2 Gain[89]", "H2 Gain", 0 ],
            "poly.10::synth::obj-152::gain1": [ "Harmonic 3 Gain[92]", "H3 Gain", 0 ],
            "poly.10::synth::obj-152::q0": [ "Harmonic 2 Q[89]", "H2 Q", 0 ],
            "poly.10::synth::obj-152::q1": [ "Harmonic 3 Q[89]", "H3 Q", 0 ],
            "poly.10::synth::orientation-radiation::amount": [ "Orientation Amount[89]", "Orient Amount", 0 ],
            "poly.11::synth::doppler-control::dop-amount": [ "doppler_amount[87]", "doppler_amount", 0 ],
            "poly.11::synth::obj-152::gain0": [ "Harmonic 2 Gain[88]", "H2 Gain", 0 ],
            "poly.11::synth::obj-152::gain1": [ "Harmonic 3 Gain[91]", "H3 Gain", 0 ],
            "poly.11::synth::obj-152::q0": [ "Harmonic 2 Q[88]", "H2 Q", 0 ],
            "poly.11::synth::obj-152::q1": [ "Harmonic 3 Q[88]", "H3 Q", 0 ],
            "poly.11::synth::orientation-radiation::amount": [ "Orientation Amount[88]", "Orient Amount", 0 ],
            "poly.12::synth::doppler-control::dop-amount": [ "doppler_amount[86]", "doppler_amount", 0 ],
            "poly.12::synth::obj-152::gain0": [ "Harmonic 2 Gain[87]", "H2 Gain", 0 ],
            "poly.12::synth::obj-152::gain1": [ "Harmonic 3 Gain[90]", "H3 Gain", 0 ],
            "poly.12::synth::obj-152::q0": [ "Harmonic 2 Q[87]", "H2 Q", 0 ],
            "poly.12::synth::obj-152::q1": [ "Harmonic 3 Q[87]", "H3 Q", 0 ],
            "poly.12::synth::orientation-radiation::amount": [ "Orientation Amount[87]", "Orient Amount", 0 ],
            "poly.13::synth::doppler-control::dop-amount": [ "doppler_amount[85]", "doppler_amount", 0 ],
            "poly.13::synth::obj-152::gain0": [ "Harmonic 2 Gain[86]", "H2 Gain", 0 ],
            "poly.13::synth::obj-152::gain1": [ "Harmonic 3 Gain[89]", "H3 Gain", 0 ],
            "poly.13::synth::obj-152::q0": [ "Harmonic 2 Q[86]", "H2 Q", 0 ],
            "poly.13::synth::obj-152::q1": [ "Harmonic 3 Q[86]", "H3 Q", 0 ],
            "poly.13::synth::orientation-radiation::amount": [ "Orientation Amount[86]", "Orient Amount", 0 ],
            "poly.14::synth::doppler-control::dop-amount": [ "doppler_amount[84]", "doppler_amount", 0 ],
            "poly.14::synth::obj-152::gain0": [ "Harmonic 2 Gain[85]", "H2 Gain", 0 ],
            "poly.14::synth::obj-152::gain1": [ "Harmonic 3 Gain[88]", "H3 Gain", 0 ],
            "poly.14::synth::obj-152::q0": [ "Harmonic 2 Q[85]", "H2 Q", 0 ],
            "poly.14::synth::obj-152::q1": [ "Harmonic 3 Q[85]", "H3 Q", 0 ],
            "poly.14::synth::orientation-radiation::amount": [ "Orientation Amount[85]", "Orient Amount", 0 ],
            "poly.15::synth::doppler-control::dop-amount": [ "doppler_amount[83]", "doppler_amount", 0 ],
            "poly.15::synth::obj-152::gain0": [ "Harmonic 2 Gain[84]", "H2 Gain", 0 ],
            "poly.15::synth::obj-152::gain1": [ "Harmonic 3 Gain[87]", "H3 Gain", 0 ],
            "poly.15::synth::obj-152::q0": [ "Harmonic 2 Q[84]", "H2 Q", 0 ],
            "poly.15::synth::obj-152::q1": [ "Harmonic 3 Q[84]", "H3 Q", 0 ],
            "poly.15::synth::orientation-radiation::amount": [ "Orientation Amount[84]", "Orient Amount", 0 ],
            "poly.16::synth::doppler-control::dop-amount": [ "doppler_amount[82]", "doppler_amount", 0 ],
            "poly.16::synth::obj-152::gain0": [ "Harmonic 2 Gain[83]", "H2 Gain", 0 ],
            "poly.16::synth::obj-152::gain1": [ "Harmonic 3 Gain[86]", "H3 Gain", 0 ],
            "poly.16::synth::obj-152::q0": [ "Harmonic 2 Q[83]", "H2 Q", 0 ],
            "poly.16::synth::obj-152::q1": [ "Harmonic 3 Q[83]", "H3 Q", 0 ],
            "poly.16::synth::orientation-radiation::amount": [ "Orientation Amount[83]", "Orient Amount", 0 ],
            "poly.17::synth::doppler-control::dop-amount": [ "doppler_amount[81]", "doppler_amount", 0 ],
            "poly.17::synth::obj-152::gain0": [ "Harmonic 2 Gain[82]", "H2 Gain", 0 ],
            "poly.17::synth::obj-152::gain1": [ "Harmonic 3 Gain[85]", "H3 Gain", 0 ],
            "poly.17::synth::obj-152::q0": [ "Harmonic 2 Q[82]", "H2 Q", 0 ],
            "poly.17::synth::obj-152::q1": [ "Harmonic 3 Q[82]", "H3 Q", 0 ],
            "poly.17::synth::orientation-radiation::amount": [ "Orientation Amount[82]", "Orient Amount", 0 ],
            "poly.18::synth::doppler-control::dop-amount": [ "doppler_amount[80]", "doppler_amount", 0 ],
            "poly.18::synth::obj-152::gain0": [ "Harmonic 2 Gain[81]", "H2 Gain", 0 ],
            "poly.18::synth::obj-152::gain1": [ "Harmonic 3 Gain[84]", "H3 Gain", 0 ],
            "poly.18::synth::obj-152::q0": [ "Harmonic 2 Q[81]", "H2 Q", 0 ],
            "poly.18::synth::obj-152::q1": [ "Harmonic 3 Q[81]", "H3 Q", 0 ],
            "poly.18::synth::orientation-radiation::amount": [ "Orientation Amount[81]", "Orient Amount", 0 ],
            "poly.19::synth::doppler-control::dop-amount": [ "doppler_amount[79]", "doppler_amount", 0 ],
            "poly.19::synth::obj-152::gain0": [ "Harmonic 2 Gain[80]", "H2 Gain", 0 ],
            "poly.19::synth::obj-152::gain1": [ "Harmonic 3 Gain[83]", "H3 Gain", 0 ],
            "poly.19::synth::obj-152::q0": [ "Harmonic 2 Q[80]", "H2 Q", 0 ],
            "poly.19::synth::obj-152::q1": [ "Harmonic 3 Q[80]", "H3 Q", 0 ],
            "poly.19::synth::orientation-radiation::amount": [ "Orientation Amount[80]", "Orient Amount", 0 ],
            "poly.1::synth::doppler-control::dop-amount": [ "doppler_amount[3]", "doppler_amount", 0 ],
            "poly.1::synth::obj-152::gain0": [ "Harmonic 2 Gain[10]", "H2 Gain", 0 ],
            "poly.1::synth::obj-152::gain1": [ "Harmonic 3 Gain[9]", "H3 Gain", 0 ],
            "poly.1::synth::obj-152::q0": [ "Harmonic 2 Q[2]", "H2 Q", 0 ],
            "poly.1::synth::obj-152::q1": [ "Harmonic 3 Q[8]", "H3 Q", 0 ],
            "poly.1::synth::orientation-radiation::amount": [ "Orientation Amount[8]", "Orient Amount", 0 ],
            "poly.20::synth::doppler-control::dop-amount": [ "doppler_amount[78]", "doppler_amount", 0 ],
            "poly.20::synth::obj-152::gain0": [ "Harmonic 2 Gain[79]", "H2 Gain", 0 ],
            "poly.20::synth::obj-152::gain1": [ "Harmonic 3 Gain[82]", "H3 Gain", 0 ],
            "poly.20::synth::obj-152::q0": [ "Harmonic 2 Q[79]", "H2 Q", 0 ],
            "poly.20::synth::obj-152::q1": [ "Harmonic 3 Q[79]", "H3 Q", 0 ],
            "poly.20::synth::orientation-radiation::amount": [ "Orientation Amount[79]", "Orient Amount", 0 ],
            "poly.21::synth::doppler-control::dop-amount": [ "doppler_amount[77]", "doppler_amount", 0 ],
            "poly.21::synth::obj-152::gain0": [ "Harmonic 2 Gain[78]", "H2 Gain", 0 ],
            "poly.21::synth::obj-152::gain1": [ "Harmonic 3 Gain[81]", "H3 Gain", 0 ],
            "poly.21::synth::obj-152::q0": [ "Harmonic 2 Q[78]", "H2 Q", 0 ],
            "poly.21::synth::obj-152::q1": [ "Harmonic 3 Q[78]", "H3 Q", 0 ],
            "poly.21::synth::orientation-radiation::amount": [ "Orientation Amount[78]", "Orient Amount", 0 ],
            "poly.22::synth::doppler-control::dop-amount": [ "doppler_amount[76]", "doppler_amount", 0 ],
            "poly.22::synth::obj-152::gain0": [ "Harmonic 2 Gain[77]", "H2 Gain", 0 ],
            "poly.22::synth::obj-152::gain1": [ "Harmonic 3 Gain[80]", "H3 Gain", 0 ],
            "poly.22::synth::obj-152::q0": [ "Harmonic 2 Q[77]", "H2 Q", 0 ],
            "poly.22::synth::obj-152::q1": [ "Harmonic 3 Q[77]", "H3 Q", 0 ],
            "poly.22::synth::orientation-radiation::amount": [ "Orientation Amount[77]", "Orient Amount", 0 ],
            "poly.23::synth::doppler-control::dop-amount": [ "doppler_amount[75]", "doppler_amount", 0 ],
            "poly.23::synth::obj-152::gain0": [ "Harmonic 2 Gain[76]", "H2 Gain", 0 ],
            "poly.23::synth::obj-152::gain1": [ "Harmonic 3 Gain[79]", "H3 Gain", 0 ],
            "poly.23::synth::obj-152::q0": [ "Harmonic 2 Q[76]", "H2 Q", 0 ],
            "poly.23::synth::obj-152::q1": [ "Harmonic 3 Q[76]", "H3 Q", 0 ],
            "poly.23::synth::orientation-radiation::amount": [ "Orientation Amount[76]", "Orient Amount", 0 ],
            "poly.24::synth::doppler-control::dop-amount": [ "doppler_amount[74]", "doppler_amount", 0 ],
            "poly.24::synth::obj-152::gain0": [ "Harmonic 2 Gain[75]", "H2 Gain", 0 ],
            "poly.24::synth::obj-152::gain1": [ "Harmonic 3 Gain[78]", "H3 Gain", 0 ],
            "poly.24::synth::obj-152::q0": [ "Harmonic 2 Q[75]", "H2 Q", 0 ],
            "poly.24::synth::obj-152::q1": [ "Harmonic 3 Q[75]", "H3 Q", 0 ],
            "poly.24::synth::orientation-radiation::amount": [ "Orientation Amount[75]", "Orient Amount", 0 ],
            "poly.25::synth::doppler-control::dop-amount": [ "doppler_amount[73]", "doppler_amount", 0 ],
            "poly.25::synth::obj-152::gain0": [ "Harmonic 2 Gain[74]", "H2 Gain", 0 ],
            "poly.25::synth::obj-152::gain1": [ "Harmonic 3 Gain[77]", "H3 Gain", 0 ],
            "poly.25::synth::obj-152::q0": [ "Harmonic 2 Q[74]", "H2 Q", 0 ],
            "poly.25::synth::obj-152::q1": [ "Harmonic 3 Q[74]", "H3 Q", 0 ],
            "poly.25::synth::orientation-radiation::amount": [ "Orientation Amount[74]", "Orient Amount", 0 ],
            "poly.26::synth::doppler-control::dop-amount": [ "doppler_amount[72]", "doppler_amount", 0 ],
            "poly.26::synth::obj-152::gain0": [ "Harmonic 2 Gain[73]", "H2 Gain", 0 ],
            "poly.26::synth::obj-152::gain1": [ "Harmonic 3 Gain[76]", "H3 Gain", 0 ],
            "poly.26::synth::obj-152::q0": [ "Harmonic 2 Q[73]", "H2 Q", 0 ],
            "poly.26::synth::obj-152::q1": [ "Harmonic 3 Q[73]", "H3 Q", 0 ],
            "poly.26::synth::orientation-radiation::amount": [ "Orientation Amount[73]", "Orient Amount", 0 ],
            "poly.27::synth::doppler-control::dop-amount": [ "doppler_amount[71]", "doppler_amount", 0 ],
            "poly.27::synth::obj-152::gain0": [ "Harmonic 2 Gain[72]", "H2 Gain", 0 ],
            "poly.27::synth::obj-152::gain1": [ "Harmonic 3 Gain[75]", "H3 Gain", 0 ],
            "poly.27::synth::obj-152::q0": [ "Harmonic 2 Q[72]", "H2 Q", 0 ],
            "poly.27::synth::obj-152::q1": [ "Harmonic 3 Q[72]", "H3 Q", 0 ],
            "poly.27::synth::orientation-radiation::amount": [ "Orientation Amount[72]", "Orient Amount", 0 ],
            "poly.28::synth::doppler-control::dop-amount": [ "doppler_amount[70]", "doppler_amount", 0 ],
            "poly.28::synth::obj-152::gain0": [ "Harmonic 2 Gain[71]", "H2 Gain", 0 ],
            "poly.28::synth::obj-152::gain1": [ "Harmonic 3 Gain[74]", "H3 Gain", 0 ],
            "poly.28::synth::obj-152::q0": [ "Harmonic 2 Q[71]", "H2 Q", 0 ],
            "poly.28::synth::obj-152::q1": [ "Harmonic 3 Q[71]", "H3 Q", 0 ],
            "poly.28::synth::orientation-radiation::amount": [ "Orientation Amount[71]", "Orient Amount", 0 ],
            "poly.29::synth::doppler-control::dop-amount": [ "doppler_amount[69]", "doppler_amount", 0 ],
            "poly.29::synth::obj-152::gain0": [ "Harmonic 2 Gain[70]", "H2 Gain", 0 ],
            "poly.29::synth::obj-152::gain1": [ "Harmonic 3 Gain[73]", "H3 Gain", 0 ],
            "poly.29::synth::obj-152::q0": [ "Harmonic 2 Q[70]", "H2 Q", 0 ],
            "poly.29::synth::obj-152::q1": [ "Harmonic 3 Q[70]", "H3 Q", 0 ],
            "poly.29::synth::orientation-radiation::amount": [ "Orientation Amount[70]", "Orient Amount", 0 ],
            "poly.2::synth::doppler-control::dop-amount": [ "doppler_amount[96]", "doppler_amount", 0 ],
            "poly.2::synth::obj-152::gain0": [ "Harmonic 2 Gain[97]", "H2 Gain", 0 ],
            "poly.2::synth::obj-152::gain1": [ "Harmonic 3 Gain[100]", "H3 Gain", 0 ],
            "poly.2::synth::obj-152::q0": [ "Harmonic 2 Q[97]", "H2 Q", 0 ],
            "poly.2::synth::obj-152::q1": [ "Harmonic 3 Q[97]", "H3 Q", 0 ],
            "poly.2::synth::orientation-radiation::amount": [ "Orientation Amount[97]", "Orient Amount", 0 ],
            "poly.30::synth::doppler-control::dop-amount": [ "doppler_amount[68]", "doppler_amount", 0 ],
            "poly.30::synth::obj-152::gain0": [ "Harmonic 2 Gain[69]", "H2 Gain", 0 ],
            "poly.30::synth::obj-152::gain1": [ "Harmonic 3 Gain[72]", "H3 Gain", 0 ],
            "poly.30::synth::obj-152::q0": [ "Harmonic 2 Q[69]", "H2 Q", 0 ],
            "poly.30::synth::obj-152::q1": [ "Harmonic 3 Q[69]", "H3 Q", 0 ],
            "poly.30::synth::orientation-radiation::amount": [ "Orientation Amount[69]", "Orient Amount", 0 ],
            "poly.31::synth::doppler-control::dop-amount": [ "doppler_amount[67]", "doppler_amount", 0 ],
            "poly.31::synth::obj-152::gain0": [ "Harmonic 2 Gain[68]", "H2 Gain", 0 ],
            "poly.31::synth::obj-152::gain1": [ "Harmonic 3 Gain[71]", "H3 Gain", 0 ],
            "poly.31::synth::obj-152::q0": [ "Harmonic 2 Q[68]", "H2 Q", 0 ],
            "poly.31::synth::obj-152::q1": [ "Harmonic 3 Q[68]", "H3 Q", 0 ],
            "poly.31::synth::orientation-radiation::amount": [ "Orientation Amount[68]", "Orient Amount", 0 ],
            "poly.32::synth::doppler-control::dop-amount": [ "doppler_amount[66]", "doppler_amount", 0 ],
            "poly.32::synth::obj-152::gain0": [ "Harmonic 2 Gain[67]", "H2 Gain", 0 ],
            "poly.32::synth::obj-152::gain1": [ "Harmonic 3 Gain[70]", "H3 Gain", 0 ],
            "poly.32::synth::obj-152::q0": [ "Harmonic 2 Q[67]", "H2 Q", 0 ],
            "poly.32::synth::obj-152::q1": [ "Harmonic 3 Q[67]", "H3 Q", 0 ],
            "poly.32::synth::orientation-radiation::amount": [ "Orientation Amount[67]", "Orient Amount", 0 ],
            "poly.33::synth::doppler-control::dop-amount": [ "doppler_amount[65]", "doppler_amount", 0 ],
            "poly.33::synth::obj-152::gain0": [ "Harmonic 2 Gain[66]", "H2 Gain", 0 ],
            "poly.33::synth::obj-152::gain1": [ "Harmonic 3 Gain[69]", "H3 Gain", 0 ],
            "poly.33::synth::obj-152::q0": [ "Harmonic 2 Q[66]", "H2 Q", 0 ],
            "poly.33::synth::obj-152::q1": [ "Harmonic 3 Q[66]", "H3 Q", 0 ],
            "poly.33::synth::orientation-radiation::amount": [ "Orientation Amount[66]", "Orient Amount", 0 ],
            "poly.34::synth::doppler-control::dop-amount": [ "doppler_amount[64]", "doppler_amount", 0 ],
            "poly.34::synth::obj-152::gain0": [ "Harmonic 2 Gain[65]", "H2 Gain", 0 ],
            "poly.34::synth::obj-152::gain1": [ "Harmonic 3 Gain[68]", "H3 Gain", 0 ],
            "poly.34::synth::obj-152::q0": [ "Harmonic 2 Q[65]", "H2 Q", 0 ],
            "poly.34::synth::obj-152::q1": [ "Harmonic 3 Q[65]", "H3 Q", 0 ],
            "poly.34::synth::orientation-radiation::amount": [ "Orientation Amount[65]", "Orient Amount", 0 ],
            "poly.35::synth::doppler-control::dop-amount": [ "doppler_amount[63]", "doppler_amount", 0 ],
            "poly.35::synth::obj-152::gain0": [ "Harmonic 2 Gain[64]", "H2 Gain", 0 ],
            "poly.35::synth::obj-152::gain1": [ "Harmonic 3 Gain[38]", "H3 Gain", 0 ],
            "poly.35::synth::obj-152::q0": [ "Harmonic 2 Q[64]", "H2 Q", 0 ],
            "poly.35::synth::obj-152::q1": [ "Harmonic 3 Q[64]", "H3 Q", 0 ],
            "poly.35::synth::orientation-radiation::amount": [ "Orientation Amount[64]", "Orient Amount", 0 ],
            "poly.36::synth::doppler-control::dop-amount": [ "doppler_amount[62]", "doppler_amount", 0 ],
            "poly.36::synth::obj-152::gain0": [ "Harmonic 2 Gain[38]", "H2 Gain", 0 ],
            "poly.36::synth::obj-152::gain1": [ "Harmonic 3 Gain[67]", "H3 Gain", 0 ],
            "poly.36::synth::obj-152::q0": [ "Harmonic 2 Q[63]", "H2 Q", 0 ],
            "poly.36::synth::obj-152::q1": [ "Harmonic 3 Q[63]", "H3 Q", 0 ],
            "poly.36::synth::orientation-radiation::amount": [ "Orientation Amount[38]", "Orient Amount", 0 ],
            "poly.37::synth::doppler-control::dop-amount": [ "doppler_amount[61]", "doppler_amount", 0 ],
            "poly.37::synth::obj-152::gain0": [ "Harmonic 2 Gain[63]", "H2 Gain", 0 ],
            "poly.37::synth::obj-152::gain1": [ "Harmonic 3 Gain[66]", "H3 Gain", 0 ],
            "poly.37::synth::obj-152::q0": [ "Harmonic 2 Q[38]", "H2 Q", 0 ],
            "poly.37::synth::obj-152::q1": [ "Harmonic 3 Q[38]", "H3 Q", 0 ],
            "poly.37::synth::orientation-radiation::amount": [ "Orientation Amount[63]", "Orient Amount", 0 ],
            "poly.38::synth::doppler-control::dop-amount": [ "doppler_amount[38]", "doppler_amount", 0 ],
            "poly.38::synth::obj-152::gain0": [ "Harmonic 2 Gain[62]", "H2 Gain", 0 ],
            "poly.38::synth::obj-152::gain1": [ "Harmonic 3 Gain[65]", "H3 Gain", 0 ],
            "poly.38::synth::obj-152::q0": [ "Harmonic 2 Q[62]", "H2 Q", 0 ],
            "poly.38::synth::obj-152::q1": [ "Harmonic 3 Q[62]", "H3 Q", 0 ],
            "poly.38::synth::orientation-radiation::amount": [ "Orientation Amount[62]", "Orient Amount", 0 ],
            "poly.39::synth::doppler-control::dop-amount": [ "doppler_amount[60]", "doppler_amount", 0 ],
            "poly.39::synth::obj-152::gain0": [ "Harmonic 2 Gain[61]", "H2 Gain", 0 ],
            "poly.39::synth::obj-152::gain1": [ "Harmonic 3 Gain[64]", "H3 Gain", 0 ],
            "poly.39::synth::obj-152::q0": [ "Harmonic 2 Q[61]", "H2 Q", 0 ],
            "poly.39::synth::obj-152::q1": [ "Harmonic 3 Q[61]", "H3 Q", 0 ],
            "poly.39::synth::orientation-radiation::amount": [ "Orientation Amount[61]", "Orient Amount", 0 ],
            "poly.3::synth::doppler-control::dop-amount": [ "doppler_amount[95]", "doppler_amount", 0 ],
            "poly.3::synth::obj-152::gain0": [ "Harmonic 2 Gain[96]", "H2 Gain", 0 ],
            "poly.3::synth::obj-152::gain1": [ "Harmonic 3 Gain[99]", "H3 Gain", 0 ],
            "poly.3::synth::obj-152::q0": [ "Harmonic 2 Q[96]", "H2 Q", 0 ],
            "poly.3::synth::obj-152::q1": [ "Harmonic 3 Q[96]", "H3 Q", 0 ],
            "poly.3::synth::orientation-radiation::amount": [ "Orientation Amount[96]", "Orient Amount", 0 ],
            "poly.40::synth::doppler-control::dop-amount": [ "doppler_amount[59]", "doppler_amount", 0 ],
            "poly.40::synth::obj-152::gain0": [ "Harmonic 2 Gain[60]", "H2 Gain", 0 ],
            "poly.40::synth::obj-152::gain1": [ "Harmonic 3 Gain[63]", "H3 Gain", 0 ],
            "poly.40::synth::obj-152::q0": [ "Harmonic 2 Q[60]", "H2 Q", 0 ],
            "poly.40::synth::obj-152::q1": [ "Harmonic 3 Q[60]", "H3 Q", 0 ],
            "poly.40::synth::orientation-radiation::amount": [ "Orientation Amount[60]", "Orient Amount", 0 ],
            "poly.41::synth::doppler-control::dop-amount": [ "doppler_amount[58]", "doppler_amount", 0 ],
            "poly.41::synth::obj-152::gain0": [ "Harmonic 2 Gain[59]", "H2 Gain", 0 ],
            "poly.41::synth::obj-152::gain1": [ "Harmonic 3 Gain[62]", "H3 Gain", 0 ],
            "poly.41::synth::obj-152::q0": [ "Harmonic 2 Q[59]", "H2 Q", 0 ],
            "poly.41::synth::obj-152::q1": [ "Harmonic 3 Q[59]", "H3 Q", 0 ],
            "poly.41::synth::orientation-radiation::amount": [ "Orientation Amount[59]", "Orient Amount", 0 ],
            "poly.42::synth::doppler-control::dop-amount": [ "doppler_amount[57]", "doppler_amount", 0 ],
            "poly.42::synth::obj-152::gain0": [ "Harmonic 2 Gain[58]", "H2 Gain", 0 ],
            "poly.42::synth::obj-152::gain1": [ "Harmonic 3 Gain[61]", "H3 Gain", 0 ],
            "poly.42::synth::obj-152::q0": [ "Harmonic 2 Q[58]", "H2 Q", 0 ],
            "poly.42::synth::obj-152::q1": [ "Harmonic 3 Q[58]", "H3 Q", 0 ],
            "poly.42::synth::orientation-radiation::amount": [ "Orientation Amount[58]", "Orient Amount", 0 ],
            "poly.43::synth::doppler-control::dop-amount": [ "doppler_amount[56]", "doppler_amount", 0 ],
            "poly.43::synth::obj-152::gain0": [ "Harmonic 2 Gain[57]", "H2 Gain", 0 ],
            "poly.43::synth::obj-152::gain1": [ "Harmonic 3 Gain[60]", "H3 Gain", 0 ],
            "poly.43::synth::obj-152::q0": [ "Harmonic 2 Q[57]", "H2 Q", 0 ],
            "poly.43::synth::obj-152::q1": [ "Harmonic 3 Q[57]", "H3 Q", 0 ],
            "poly.43::synth::orientation-radiation::amount": [ "Orientation Amount[57]", "Orient Amount", 0 ],
            "poly.44::synth::doppler-control::dop-amount": [ "doppler_amount[55]", "doppler_amount", 0 ],
            "poly.44::synth::obj-152::gain0": [ "Harmonic 2 Gain[56]", "H2 Gain", 0 ],
            "poly.44::synth::obj-152::gain1": [ "Harmonic 3 Gain[59]", "H3 Gain", 0 ],
            "poly.44::synth::obj-152::q0": [ "Harmonic 2 Q[56]", "H2 Q", 0 ],
            "poly.44::synth::obj-152::q1": [ "Harmonic 3 Q[56]", "H3 Q", 0 ],
            "poly.44::synth::orientation-radiation::amount": [ "Orientation Amount[56]", "Orient Amount", 0 ],
            "poly.45::synth::doppler-control::dop-amount": [ "doppler_amount[54]", "doppler_amount", 0 ],
            "poly.45::synth::obj-152::gain0": [ "Harmonic 2 Gain[55]", "H2 Gain", 0 ],
            "poly.45::synth::obj-152::gain1": [ "Harmonic 3 Gain[58]", "H3 Gain", 0 ],
            "poly.45::synth::obj-152::q0": [ "Harmonic 2 Q[55]", "H2 Q", 0 ],
            "poly.45::synth::obj-152::q1": [ "Harmonic 3 Q[55]", "H3 Q", 0 ],
            "poly.45::synth::orientation-radiation::amount": [ "Orientation Amount[55]", "Orient Amount", 0 ],
            "poly.46::synth::doppler-control::dop-amount": [ "doppler_amount[53]", "doppler_amount", 0 ],
            "poly.46::synth::obj-152::gain0": [ "Harmonic 2 Gain[48]", "H2 Gain", 0 ],
            "poly.46::synth::obj-152::gain1": [ "Harmonic 3 Gain[57]", "H3 Gain", 0 ],
            "poly.46::synth::obj-152::q0": [ "Harmonic 2 Q[54]", "H2 Q", 0 ],
            "poly.46::synth::obj-152::q1": [ "Harmonic 3 Q[54]", "H3 Q", 0 ],
            "poly.46::synth::orientation-radiation::amount": [ "Orientation Amount[48]", "Orient Amount", 0 ],
            "poly.47::synth::doppler-control::dop-amount": [ "doppler_amount[52]", "doppler_amount", 0 ],
            "poly.47::synth::obj-152::gain0": [ "Harmonic 2 Gain[54]", "H2 Gain", 0 ],
            "poly.47::synth::obj-152::gain1": [ "Harmonic 3 Gain[56]", "H3 Gain", 0 ],
            "poly.47::synth::obj-152::q0": [ "Harmonic 2 Q[48]", "H2 Q", 0 ],
            "poly.47::synth::obj-152::q1": [ "Harmonic 3 Q[48]", "H3 Q", 0 ],
            "poly.47::synth::orientation-radiation::amount": [ "Orientation Amount[54]", "Orient Amount", 0 ],
            "poly.48::synth::doppler-control::dop-amount": [ "doppler_amount[48]", "doppler_amount", 0 ],
            "poly.48::synth::obj-152::gain0": [ "Harmonic 2 Gain[53]", "H2 Gain", 0 ],
            "poly.48::synth::obj-152::gain1": [ "Harmonic 3 Gain[55]", "H3 Gain", 0 ],
            "poly.48::synth::obj-152::q0": [ "Harmonic 2 Q[53]", "H2 Q", 0 ],
            "poly.48::synth::obj-152::q1": [ "Harmonic 3 Q[53]", "H3 Q", 0 ],
            "poly.48::synth::orientation-radiation::amount": [ "Orientation Amount[53]", "Orient Amount", 0 ],
            "poly.49::synth::doppler-control::dop-amount": [ "doppler_amount[51]", "doppler_amount", 0 ],
            "poly.49::synth::obj-152::gain0": [ "Harmonic 2 Gain[51]", "H2 Gain", 0 ],
            "poly.49::synth::obj-152::gain1": [ "Harmonic 3 Gain[54]", "H3 Gain", 0 ],
            "poly.49::synth::obj-152::q0": [ "Harmonic 2 Q[52]", "H2 Q", 0 ],
            "poly.49::synth::obj-152::q1": [ "Harmonic 3 Q[52]", "H3 Q", 0 ],
            "poly.49::synth::orientation-radiation::amount": [ "Orientation Amount[51]", "Orient Amount", 0 ],
            "poly.4::synth::doppler-control::dop-amount": [ "doppler_amount[94]", "doppler_amount", 0 ],
            "poly.4::synth::obj-152::gain0": [ "Harmonic 2 Gain[95]", "H2 Gain", 0 ],
            "poly.4::synth::obj-152::gain1": [ "Harmonic 3 Gain[98]", "H3 Gain", 0 ],
            "poly.4::synth::obj-152::q0": [ "Harmonic 2 Q[95]", "H2 Q", 0 ],
            "poly.4::synth::obj-152::q1": [ "Harmonic 3 Q[95]", "H3 Q", 0 ],
            "poly.4::synth::orientation-radiation::amount": [ "Orientation Amount[95]", "Orient Amount", 0 ],
            "poly.50::synth::doppler-control::dop-amount": [ "doppler_amount[50]", "doppler_amount", 0 ],
            "poly.50::synth::obj-152::gain0": [ "Harmonic 2 Gain[52]", "H2 Gain", 0 ],
            "poly.50::synth::obj-152::gain1": [ "Harmonic 3 Gain[53]", "H3 Gain", 0 ],
            "poly.50::synth::obj-152::q0": [ "Harmonic 2 Q[51]", "H2 Q", 0 ],
            "poly.50::synth::obj-152::q1": [ "Harmonic 3 Q[51]", "H3 Q", 0 ],
            "poly.50::synth::orientation-radiation::amount": [ "Orientation Amount[52]", "Orient Amount", 0 ],
            "poly.5::synth::doppler-control::dop-amount": [ "doppler_amount[93]", "doppler_amount", 0 ],
            "poly.5::synth::obj-152::gain0": [ "Harmonic 2 Gain[94]", "H2 Gain", 0 ],
            "poly.5::synth::obj-152::gain1": [ "Harmonic 3 Gain[97]", "H3 Gain", 0 ],
            "poly.5::synth::obj-152::q0": [ "Harmonic 2 Q[94]", "H2 Q", 0 ],
            "poly.5::synth::obj-152::q1": [ "Harmonic 3 Q[94]", "H3 Q", 0 ],
            "poly.5::synth::orientation-radiation::amount": [ "Orientation Amount[94]", "Orient Amount", 0 ],
            "poly.6::synth::doppler-control::dop-amount": [ "doppler_amount[92]", "doppler_amount", 0 ],
            "poly.6::synth::obj-152::gain0": [ "Harmonic 2 Gain[93]", "H2 Gain", 0 ],
            "poly.6::synth::obj-152::gain1": [ "Harmonic 3 Gain[96]", "H3 Gain", 0 ],
            "poly.6::synth::obj-152::q0": [ "Harmonic 2 Q[93]", "H2 Q", 0 ],
            "poly.6::synth::obj-152::q1": [ "Harmonic 3 Q[93]", "H3 Q", 0 ],
            "poly.6::synth::orientation-radiation::amount": [ "Orientation Amount[93]", "Orient Amount", 0 ],
            "poly.7::synth::doppler-control::dop-amount": [ "doppler_amount[91]", "doppler_amount", 0 ],
            "poly.7::synth::obj-152::gain0": [ "Harmonic 2 Gain[92]", "H2 Gain", 0 ],
            "poly.7::synth::obj-152::gain1": [ "Harmonic 3 Gain[95]", "H3 Gain", 0 ],
            "poly.7::synth::obj-152::q0": [ "Harmonic 2 Q[92]", "H2 Q", 0 ],
            "poly.7::synth::obj-152::q1": [ "Harmonic 3 Q[92]", "H3 Q", 0 ],
            "poly.7::synth::orientation-radiation::amount": [ "Orientation Amount[92]", "Orient Amount", 0 ],
            "poly.8::synth::doppler-control::dop-amount": [ "doppler_amount[90]", "doppler_amount", 0 ],
            "poly.8::synth::obj-152::gain0": [ "Harmonic 2 Gain[91]", "H2 Gain", 0 ],
            "poly.8::synth::obj-152::gain1": [ "Harmonic 3 Gain[94]", "H3 Gain", 0 ],
            "poly.8::synth::obj-152::q0": [ "Harmonic 2 Q[91]", "H2 Q", 0 ],
            "poly.8::synth::obj-152::q1": [ "Harmonic 3 Q[91]", "H3 Q", 0 ],
            "poly.8::synth::orientation-radiation::amount": [ "Orientation Amount[91]", "Orient Amount", 0 ],
            "poly.9::synth::doppler-control::dop-amount": [ "doppler_amount[89]", "doppler_amount", 0 ],
            "poly.9::synth::obj-152::gain0": [ "Harmonic 2 Gain[90]", "H2 Gain", 0 ],
            "poly.9::synth::obj-152::gain1": [ "Harmonic 3 Gain[93]", "H3 Gain", 0 ],
            "poly.9::synth::obj-152::q0": [ "Harmonic 2 Q[90]", "H2 Q", 0 ],
            "poly.9::synth::obj-152::q1": [ "Harmonic 3 Q[90]", "H3 Q", 0 ],
            "poly.9::synth::orientation-radiation::amount": [ "Orientation Amount[90]", "Orient Amount", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "boxgroups": [
            {
                "boxes": [ "meter2", "meter1", "meter3", "meter4" ]
            }
        ]
    }
}