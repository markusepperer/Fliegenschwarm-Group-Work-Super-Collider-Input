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
        "rect": [ 100.0, 100.0, 760.0, 880.0 ],
        "description": "Direction-change metric from XY trajectories",
        "boxes": [
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 18.0, 560.0, 21.0 ],
                    "text": "MS_XY_Turn — Richtungsänderung aus aufeinanderfolgenden XY-Bewegungsvektoren"
                }
            },
            {
                "box": {
                    "id": "sub",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 42.0, 640.0, 33.0 ],
                    "text": "Outlet 1: Betrag 0..1 (0 = gerade, 1 = 180°). Outlet 2: vorzeichenbehaftet -1..1. Bewegungen < 0.0005 werden ignoriert."
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
                    "outlettype": [ "" ],
                    "patching_rect": [ 45.0, 95.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "trig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 45.0, 140.0, 45.0, 22.0 ],
                    "text": "t l"
                }
            },
            {
                "box": {
                    "id": "unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 110.0, 140.0, 88.0, 22.0 ],
                    "text": "unpack 0. 0."
                }
            },
            {
                "box": {
                    "id": "tx",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 85.0, 190.0, 42.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "bx",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 145.0, 190.0, 58.0, 22.0 ],
                    "text": "bucket 1"
                }
            },
            {
                "box": {
                    "id": "subx",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 85.0, 235.0, 48.0, 22.0 ],
                    "text": "- 0."
                }
            },
            {
                "box": {
                    "id": "ty",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 280.0, 190.0, 42.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "by",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 340.0, 190.0, 58.0, 22.0 ],
                    "text": "bucket 1"
                }
            },
            {
                "box": {
                    "id": "suby",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 280.0, 235.0, 48.0, 22.0 ],
                    "text": "- 0."
                }
            },
            {
                "box": {
                    "id": "tdx",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 85.0, 280.0, 42.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "bdx",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 145.0, 280.0, 58.0, 22.0 ],
                    "text": "bucket 1"
                }
            },
            {
                "box": {
                    "id": "tdy",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 280.0, 280.0, 42.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "bdy",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 340.0, 280.0, 58.0, 22.0 ],
                    "text": "bucket 1"
                }
            },
            {
                "box": {
                    "id": "buddy4",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 175.0, 330.0, 72.0, 22.0 ],
                    "text": "buddy 4"
                }
            },
            {
                "box": {
                    "id": "pack4",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 175.0, 370.0, 116.0, 22.0 ],
                    "text": "pack 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "tlists",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 175.0, 410.0, 55.0, 22.0 ],
                    "text": "t l l l"
                }
            },
            {
                "box": {
                    "id": "magprev",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 484.0, 480.0, 215.0, 22.0 ],
                    "text": "expr sqrt($f3*$f3+$f4*$f4) > 0.0005"
                }
            },
            {
                "box": {
                    "id": "magcur",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 484.0, 515.0, 215.0, 22.0 ],
                    "text": "expr sqrt($f1*$f1+$f2*$f2) > 0.0005"
                }
            },
            {
                "box": {
                    "id": "buddyvalid",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 412.0, 548.0, 58.0, 22.0 ],
                    "text": "buddy 2"
                }
            },
            {
                "box": {
                    "id": "packvalid",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 412.0, 583.0, 62.0, 22.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "id": "andexpr",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 412.0, 618.0, 82.0, 22.0 ],
                    "text": "expr $i1*$i2"
                }
            },
            {
                "box": {
                    "id": "angle",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 175.0, 445.0, 356.0, 22.0 ],
                    "text": "expr atan2($f3*$f2-$f4*$f1\\, $f3*$f1+$f4*$f2)/3.141592653589793"
                }
            },
            {
                "box": {
                    "id": "gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 175.0, 625.0, 42.0, 22.0 ],
                    "text": "gate 1"
                }
            },
            {
                "box": {
                    "id": "tf",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 175.0, 665.0, 42.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "abs",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 280.0, 665.0, 85.0, 22.0 ],
                    "text": "expr abs($f1)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "signednum",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 110.0, 705.0, 72.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "amountnum",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 705.0, 72.0, 22.0 ]
                }
            },
            {
                "box": {
                    "comment": "Turn amount 0..1",
                    "id": "outamount",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 280.0, 755.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Signed turn -1..1",
                    "id": "outsigned",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 110.0, 755.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "note",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 805.0, 550.0, 47.0 ],
                    "text": "Berechnung: atan2(cross(prev,current), dot(prev,current)) / pi. Das liefert den kleinsten vorzeichenbehafteten Winkel zwischen zwei Bewegungsvektoren. Der Betrag ist die Wendungsstärke."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "amountnum", 0 ],
                    "source": [ "abs", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "outamount", 0 ],
                    "source": [ "amountnum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gate", 0 ],
                    "source": [ "andexpr", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gate", 1 ],
                    "source": [ "angle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buddy4", 2 ],
                    "source": [ "bdx", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buddy4", 3 ],
                    "source": [ "bdy", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack4", 3 ],
                    "source": [ "buddy4", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack4", 2 ],
                    "source": [ "buddy4", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack4", 1 ],
                    "source": [ "buddy4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack4", 0 ],
                    "source": [ "buddy4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "packvalid", 1 ],
                    "source": [ "buddyvalid", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "packvalid", 0 ],
                    "source": [ "buddyvalid", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subx", 1 ],
                    "source": [ "bx", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "suby", 1 ],
                    "source": [ "by", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tf", 0 ],
                    "source": [ "gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "trig", 0 ],
                    "source": [ "in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buddyvalid", 0 ],
                    "source": [ "magcur", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buddyvalid", 1 ],
                    "source": [ "magprev", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tlists", 0 ],
                    "source": [ "pack4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "andexpr", 0 ],
                    "source": [ "packvalid", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "outsigned", 0 ],
                    "source": [ "signednum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tdx", 0 ],
                    "source": [ "subx", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tdy", 0 ],
                    "source": [ "suby", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bdx", 0 ],
                    "source": [ "tdx", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buddy4", 0 ],
                    "source": [ "tdx", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bdy", 0 ],
                    "source": [ "tdy", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "buddy4", 1 ],
                    "source": [ "tdy", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "abs", 0 ],
                    "source": [ "tf", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "signednum", 0 ],
                    "source": [ "tf", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "angle", 0 ],
                    "source": [ "tlists", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "magcur", 0 ],
                    "source": [ "tlists", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "magprev", 0 ],
                    "source": [ "tlists", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "unpack", 0 ],
                    "source": [ "trig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bx", 0 ],
                    "source": [ "tx", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subx", 0 ],
                    "source": [ "tx", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "by", 0 ],
                    "source": [ "ty", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "suby", 0 ],
                    "source": [ "ty", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tx", 0 ],
                    "source": [ "unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ty", 0 ],
                    "source": [ "unpack", 1 ]
                }
            }
        ]
    }
}