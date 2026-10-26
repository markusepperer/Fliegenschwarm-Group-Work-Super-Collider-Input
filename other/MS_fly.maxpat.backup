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
			-1886.0,
			170.0,
			2254.0,
			880.0
		],
		"boxes": [
			{
				"box": {
					"id": "obj-44",
					"linecount": 6,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1892.5531779527664,
						1242.1031943559647,
						150.0,
						87.0
					],
					"text": "Koordinaten kommen aus der FLugnahn Abstr. die Speed abstraktion leitet aus den Positionsänderungen die Geschwindigkeit ab"
				}
			},
			{
				"box": {
					"id": "dist-note",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						2290.4255155324936,
						1281.9148844480515,
						223.40425372123718,
						47.0
					],
					"text": "Distance: reale 140 x 200 cm Geometrie, Hoerplatz x=0.5 / y=0.357. Output der Abstraktion = Abstand in cm."
				}
			},
			{
				"box": {
					"id": "turn-routing-note",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						2063.8297724723816,
						1281.9148844480515,
						204.05404043197632,
						47.0
					],
					"text": "Turn: rechtes Outlet = Betrag 0..1 -> N_Turnmapping; linkes Outlet = signed -1..1 -> N_TurnSigned."
				}
			},
			{
				"box": {
					"id": "obj-28",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						2509.0,
						1104.0,
						72.96553945541382,
						72.96553945541382
					]
				}
			},
			{
				"box": {
					"id": "dist-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2225.0,
						1143.3962795734406,
						103.0,
						22.0
					],
					"text": "MS_XY_Distance"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "dist-num-1",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						2225.0,
						1176.3962795734406,
						82.0,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "dist-send-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						2225.0,
						1210.3962795734406,
						151.0,
						22.0
					],
					"text": "send #1_Distancemapping"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-19",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						2099.0,
						1175.3962795734406,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "obj-24",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"patching_rect": [
						2088.0,
						1143.3962795734406,
						80.0,
						22.0
					],
					"text": "MS_XY_Turn"
				}
			},
			{
				"box": {
					"id": "obj-25",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						2149.0,
						1236.3962795734406,
						131.48147928714752,
						22.0
					],
					"text": "send #1_Turnmapping"
				}
			},
			{
				"box": {
					"id": "turn-signed-send-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						2088.0,
						1206.3962795734406,
						119.0,
						22.0
					],
					"text": "send #1_TurnSigned"
				}
			},
			{
				"box": {
					"id": "obj-23",
					"linecount": 4,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1852.6315612792969,
						1081.412715435028,
						50.0,
						62.0
					],
					"text": "0.219807 0.319497"
				}
			},
			{
				"box": {
					"id": "obj-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1925.4717876315117,
						1171.698167681694,
						158.0,
						22.0
					],
					"text": "send #1_Resonanzmapping"
				}
			},
			{
				"box": {
					"id": "obj-21",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1925.4717876315117,
						1143.3962795734406,
						91.0,
						22.0
					],
					"text": "MS_XY_Speed"
				}
			},
			{
				"box": {
					"id": "obj-22",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1925.4717876315117,
						1091.5094847083092,
						446.22643584012985,
						22.0
					],
					"text": "receive #1_Flugkoordinaten"
				}
			},
			{
				"box": {
					"id": "obj-20",
					"linecount": 4,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						525.4881281852722,
						261.0,
						150.0,
						60.0
					],
					"text": "Modulation Grundfrequqnz Fliege\nüber Speed und über Drunk"
				}
			},
			{
				"box": {
					"id": "obj-11",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						445.59923791885376,
						259.0,
						70.0,
						22.0
					],
					"text": "loadmess 1"
				}
			},
			{
				"box": {
					"id": "obj-99",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						445.59923791885376,
						297.0,
						24.0,
						24.0
					]
				}
			},
			{
				"box": {
					"color": [
						0.8470588235294118,
						0.6078431372549019,
						0.0,
						1.0
					],
					"id": "obj-12",
					"linecount": 3,
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						445.59923791885376,
						330.0,
						69.0,
						49.0
					],
					"text": "MS_RandomDrunkRange"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-14",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						445.59923791885376,
						391.0,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-81",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
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
							523.0,
							110.0,
							1344.0,
							897.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-3",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										297.0,
										223.0,
										35.0,
										22.0
									],
									"text": "clear"
								}
							},
							{
								"box": {
									"candicane2": [
										0.145098,
										0.203922,
										0.356863,
										1.0
									],
									"candicane3": [
										0.290196,
										0.411765,
										0.713726,
										1.0
									],
									"candicane4": [
										0.439216,
										0.619608,
										0.070588,
										1.0
									],
									"candicane5": [
										0.584314,
										0.827451,
										0.431373,
										1.0
									],
									"candicane6": [
										0.733333,
										0.035294,
										0.788235,
										1.0
									],
									"candicane7": [
										0.878431,
										0.243137,
										0.145098,
										1.0
									],
									"candicane8": [
										0.027451,
										0.447059,
										0.501961,
										1.0
									],
									"id": "obj-1",
									"maxclass": "multislider",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"parameter_enable": 0,
									"patching_rect": [
										323.7288212776184,
										787.2881543636322,
										333.0,
										92.0
									],
									"peakcolor": [
										0.498039,
										0.498039,
										0.498039,
										1.0
									],
									"setminmax": [
										-30.0,
										6.0
									],
									"setstyle": 3
								}
							},
							{
								"box": {
									"id": "obj-77",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										148.13084036111832,
										274.79608368873596,
										70.0,
										22.0
									],
									"text": "loadmess 1"
								}
							},
							{
								"box": {
									"id": "obj-75",
									"maxclass": "preset",
									"numinlets": 1,
									"numoutlets": 5,
									"outlettype": [
										"preset",
										"int",
										"preset",
										"int",
										""
									],
									"patching_rect": [
										148.13084036111832,
										300.79608368873596,
										100.0,
										40.0
									],
									"preset_data": [
										{
											"number": 1,
											"data": [
												4,
												"obj-65",
												"function",
												"clear",
												7,
												"obj-65",
												"function",
												"add",
												0.0,
												-38.0,
												0,
												7,
												"obj-65",
												"function",
												"add",
												0.31069642550767645,
												-34.66127874898938,
												0,
												7,
												"obj-65",
												"function",
												"add",
												0.6233166638071647,
												-23.965626613555237,
												0,
												7,
												"obj-65",
												"function",
												"add",
												1.0321277446603416,
												-13.899130486087802,
												0,
												7,
												"obj-65",
												"function",
												"add",
												1.4409388255135185,
												-10.96306911557647,
												0,
												7,
												"obj-65",
												"function",
												"add",
												2.330704119135139,
												-9.285319760998565,
												0,
												7,
												"obj-65",
												"function",
												"add",
												6.539053480859019,
												-7.397851737098421,
												0,
												7,
												"obj-65",
												"function",
												"add",
												8.10215467235646,
												-5.51038371319828,
												0,
												7,
												"obj-65",
												"function",
												"add",
												9.256444783000724,
												-3.203478350653654,
												0,
												7,
												"obj-65",
												"function",
												"add",
												9.713351285130745,
												-1.106291657431278,
												0,
												7,
												"obj-65",
												"function",
												"add",
												10.0,
												3.0,
												0,
												5,
												"obj-65",
												"function",
												"domain",
												10.0,
												6,
												"obj-65",
												"function",
												"range",
												-38.0,
												3.0,
												5,
												"obj-65",
												"function",
												"mode",
												0
											]
										}
									]
								}
							},
							{
								"box": {
									"format": 6,
									"id": "obj-70",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										136.44068121910095,
										592.3728954792023,
										69.37499338388443,
										22.0
									]
								}
							},
							{
								"box": {
									"addpoints": [
										0.0,
										-38.0,
										0,
										0.31069642550767645,
										-34.66127874898938,
										0,
										0.6233166638071647,
										-23.965626613555237,
										0,
										1.0321277446603416,
										-13.899130486087802,
										0,
										1.4409388255135185,
										-10.96306911557647,
										0,
										2.330704119135139,
										-9.285319760998565,
										0,
										6.539053480859019,
										-7.397851737098421,
										0,
										8.10215467235646,
										-5.51038371319828,
										0,
										9.256444783000724,
										-3.203478350653654,
										0,
										9.713351285130745,
										-1.106291657431278,
										0,
										10.0,
										3.0,
										0
									],
									"classic_curve": 1,
									"domain": 10.0,
									"id": "obj-65",
									"maxclass": "function",
									"numinlets": 1,
									"numoutlets": 4,
									"outlettype": [
										"float",
										"",
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										203.38983535766602,
										379.66102600097656,
										364.4067883491516,
										190.6779706478119
									],
									"range": [
										-38.0,
										3.0
									]
								}
							},
							{
								"box": {
									"id": "obj-26",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										129.66102004051208,
										714.4067966938019,
										39.0,
										22.0
									],
									"text": "dbtoa"
								}
							},
							{
								"box": {
									"id": "obj-21",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										327.05344557762146,
										85.98130774497986,
										22.0
									],
									"text": "clip 0. 10."
								}
							},
							{
								"box": {
									"candicane2": [
										0.145098,
										0.203922,
										0.356863,
										1.0
									],
									"candicane3": [
										0.290196,
										0.411765,
										0.713726,
										1.0
									],
									"candicane4": [
										0.439216,
										0.619608,
										0.070588,
										1.0
									],
									"candicane5": [
										0.584314,
										0.827451,
										0.431373,
										1.0
									],
									"candicane6": [
										0.733333,
										0.035294,
										0.788235,
										1.0
									],
									"candicane7": [
										0.878431,
										0.243137,
										0.145098,
										1.0
									],
									"candicane8": [
										0.027451,
										0.447059,
										0.501961,
										1.0
									],
									"id": "obj-39",
									"maxclass": "multislider",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"parameter_enable": 0,
									"patching_rect": [
										265.28533655405045,
										274.79608368873596,
										333.0,
										92.0
									],
									"peakcolor": [
										0.498039,
										0.498039,
										0.498039,
										1.0
									],
									"setminmax": [
										0.0,
										10.0
									],
									"setstyle": 3
								}
							},
							{
								"box": {
									"id": "obj-19",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.98130774497986,
										194.999990940094,
										45.0,
										22.0
									],
									"text": "$1 100"
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										50.98130774497986,
										218.7499886751175,
										41.0,
										22.0
									],
									"text": "line 0."
								}
							},
							{
								"box": {
									"id": "obj-12",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.98130774497986,
										166.24999368190765,
										80.0,
										22.0
									],
									"text": "speedlim 100"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "mv-turn-recv-num",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										50.98130774497986,
										247.49998593330383,
										85.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "mv-speed-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.98130774497986,
										100.0,
										205.0,
										22.0
									],
									"text": "receive #1_ManeuverSpeed"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "mv-speed-recv-num",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										50.98130774497986,
										132.49999690055847,
										85.0,
										22.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-79",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										108.47457885742188,
										787.2881543636322,
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
										"mv-speed-recv-num",
										0
									],
									"source": [
										"mv-speed-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-12",
										0
									],
									"source": [
										"mv-speed-recv-num",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-21",
										0
									],
									"order": 1,
									"source": [
										"mv-turn-recv-num",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-39",
										0
									],
									"order": 0,
									"source": [
										"mv-turn-recv-num",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"mv-turn-recv-num",
										0
									],
									"source": [
										"obj-11",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-19",
										0
									],
									"source": [
										"obj-12",
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
										"obj-19",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-65",
										0
									],
									"source": [
										"obj-21",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-79",
										0
									],
									"source": [
										"obj-26",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-65",
										0
									],
									"source": [
										"obj-3",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-1",
										0
									],
									"order": 0,
									"source": [
										"obj-65",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-26",
										0
									],
									"order": 2,
									"source": [
										"obj-65",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-70",
										0
									],
									"order": 1,
									"source": [
										"obj-65",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-65",
										0
									],
									"source": [
										"obj-75",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-75",
										0
									],
									"source": [
										"obj-77",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						894.3968412876129,
						1382.0,
						252.0,
						22.0
					],
					"text": "p Speed an Volume anpassen / Transferkurve"
				}
			},
			{
				"box": {
					"id": "obj-38",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						894.3968412876129,
						1408.0,
						39.0,
						22.0
					],
					"text": "$1 30"
				}
			},
			{
				"box": {
					"id": "obj-35",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"bang"
					],
					"patching_rect": [
						894.3968412876129,
						1438.0,
						34.0,
						22.0
					],
					"text": "line~ 0.0125892541"
				}
			},
			{
				"box": {
					"id": "obj-33",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						713.7930915355682,
						1480.4597454071045,
						34.0,
						22.0
					],
					"text": "*~ 1."
				}
			},
			{
				"box": {
					"id": "obj-31",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 0,
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
							59.0,
							111.0,
							1344.0,
							897.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-25",
									"linecount": 40,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.0,
										100.0,
										780.2469758987427,
										543.0
									],
									"text": "Wir haben jetzt keinen Noise-Generator und keinen zusätzlichen Filter gebaut, sondern eine zweite bewegungsabhängige Kopplung zwischen der realen Flugbahn und Farnells Flügelsynthese.\n\nMS_XY_Turn nimmt jeweils zwei aufeinanderfolgende Bewegungsvektoren der Fliege und berechnet den Winkel zwischen ihnen. Intern geschieht das über atan2(cross, dot) / π. Der Betrag davon ist unsere Wendungsstärke.\n\nDamit bedeutet das rechte Outlet jetzt:\n\n0 → Flugrichtung bleibt praktisch gleich\n0.25 → etwa 45° Richtungsänderung\n0.5 → etwa 90°\n1 → etwa 180° Umkehr\n\nSehr kleine Bewegungen unter 0.0005 werden ignoriert, damit Positionsrauschen nicht als Wendung interpretiert wird.\n\nDieser Turn-Wert geht dann in MS_fly. Dort wird er zu einem Signal gemacht und geglättet. Entscheidend ist aber, wo er eingreift: Er wird zu Farnells bereits vorhandener kleinen Frequenzabweichung von Flügel 2 addiert. Der bestehende Offset kommt aus noise-res → ... → *~ 3; unser Turn-Signal kommt zusätzlich dazu. Danach geht die Summe in freq2-sum, also ausschließlich in die Frequenz von flywing_R.\n\nDas heißt klanglich:\n\nGerade Flugbahn:\nlinker und rechter Flügel bleiben relativ ähnlich gestimmt.\n\nStarke Kurve:\nFlügel 2 wird kurzfristig etwas stärker gegenüber Flügel 1 verstimmt.\n\nDadurch entstehen mehr Schwebungen, Phasenbewegung, spektrale Unruhe und dieses etwas rauere „bsss“. Wir mischen also kein Rauschen hinein. Der Klang wird rauer, weil die zwei bereits vorhandenen synthetischen Flügel kurzfristig weniger synchron zueinander sind.\n\nUnd damit haben wir momentan drei unterschiedliche Informationen aus derselben realen Flugbahn:\n\nPosition → Quadrophonie / Klangort\n\nGeschwindigkeit → Lautstärke + gemeinsame Flügelresonanz\n\nRichtungsänderung → Unterschied zwischen linkem und rechtem Flügel\n\nDas ist eigentlich der interessante Punkt an dem System: Die Parameter sind nicht bloß drei Random-Modulatoren. Unterschiedliche Eigenschaften derselben gemessenen biologischen Bewegung steuern unterschiedliche Eigenschaften des Klangs."
								}
							}
						],
						"lines": []
					},
					"patching_rect": [
						1422.2222442626953,
						1247.619066953659,
						52.0,
						22.0
					],
					"text": "p theory"
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-15",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
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
							59.0,
							111.0,
							1344.0,
							897.0
						],
						"boxes": [
							{
								"box": {
									"candicane2": [
										0.145098,
										0.203922,
										0.356863,
										1.0
									],
									"candicane3": [
										0.290196,
										0.411765,
										0.713726,
										1.0
									],
									"candicane4": [
										0.439216,
										0.619608,
										0.070588,
										1.0
									],
									"candicane5": [
										0.584314,
										0.827451,
										0.431373,
										1.0
									],
									"candicane6": [
										0.733333,
										0.035294,
										0.788235,
										1.0
									],
									"candicane7": [
										0.878431,
										0.243137,
										0.145098,
										1.0
									],
									"candicane8": [
										0.027451,
										0.447059,
										0.501961,
										1.0
									],
									"id": "obj-39",
									"maxclass": "multislider",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"parameter_enable": 0,
									"patching_rect": [
										156.00000315904617,
										176.0000022649765,
										196.0,
										92.0
									],
									"peakcolor": [
										0.498039,
										0.498039,
										0.498039,
										1.0
									],
									"setminmax": [
										0.0,
										6.0
									],
									"setstyle": 3
								}
							},
							{
								"box": {
									"id": "obj-19",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										194.0000028014183,
										45.0,
										22.0
									],
									"text": "$1 100"
								}
							},
							{
								"box": {
									"id": "obj-15",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										50.0,
										219.3333368897438,
										41.0,
										22.0
									],
									"text": "line 0."
								}
							},
							{
								"box": {
									"id": "obj-12",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										166.00000196695328,
										80.0,
										22.0
									],
									"text": "speedlim 100"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "mv-turn-recv-num",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										50.0,
										246.66667103767395,
										85.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "mv-speed-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										100.0,
										205.0,
										22.0
									],
									"text": "receive #1_ManeuverSpeed"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "mv-speed-recv-num",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										50.0,
										132.00000095367432,
										85.0,
										22.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-14",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.00002435486226,
										330.6666837813492,
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
										"mv-speed-recv-num",
										0
									],
									"source": [
										"mv-speed-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-12",
										0
									],
									"source": [
										"mv-speed-recv-num",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-14",
										0
									],
									"order": 1,
									"source": [
										"mv-turn-recv-num",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-39",
										0
									],
									"order": 0,
									"source": [
										"mv-turn-recv-num",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-19",
										0
									],
									"source": [
										"obj-12",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"mv-turn-recv-num",
										0
									],
									"source": [
										"obj-15",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-15",
										0
									],
									"source": [
										"obj-19",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						518.0992379188538,
						332.6269916296005,
						283.0,
						22.0
					],
					"text": "p Modulation der Grundfrequenz über Speed Fliege"
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-13",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							59.0,
							111.0,
							1344.0,
							897.0
						],
						"boxes": [
							{
								"box": {
									"id": "noise-freq",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										100.0,
										54.0,
										22.0
									],
									"text": "noise~"
								}
							},
							{
								"box": {
									"id": "lp4a",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										138.67924708127975,
										84.0,
										22.0
									],
									"text": "onepole~ 4"
								}
							},
							{
								"box": {
									"id": "lp4b",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										175.47170162200928,
										84.0,
										22.0
									],
									"text": "onepole~ 4"
								}
							},
							{
								"box": {
									"id": "freq-depth",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										211.32075989246368,
										58.0,
										22.0
									],
									"text": "*~ 700"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-11",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.000005566806806,
										293.32077759288404,
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
										"obj-11",
										0
									],
									"source": [
										"freq-depth",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lp4b",
										0
									],
									"source": [
										"lp4a",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"freq-depth",
										0
									],
									"source": [
										"lp4b",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lp4a",
										0
									],
									"source": [
										"noise-freq",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						434.09923791885376,
						490.6269916296005,
						110.0,
						22.0
					],
					"text": "p noise+ onepole 4"
				}
			},
			{
				"box": {
					"id": "obj-10",
					"maxclass": "meter~",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						1230.1587492227554,
						1041.2698574066162,
						80.0,
						13.0
					]
				}
			},
			{
				"box": {
					"id": "obj-7",
					"maxclass": "meter~",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						616.883111000061,
						1272.7272605895996,
						80.0,
						13.0
					]
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "meter~",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						798.9512367248535,
						1272.7272605895996,
						80.0,
						13.0
					]
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						721.9512367248535,
						1081.5217185020447,
						58.0,
						22.0
					],
					"text": "loadbang"
				}
			},
			{
				"box": {
					"id": "obj-2",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						721.9512367248535,
						1114.130413532257,
						65.0,
						22.0
					],
					"text": "0 0 1 1 1 1"
				}
			},
			{
				"box": {
					"id": "obj-155",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						474.34923791885376,
						946.0317606925964,
						70.0,
						22.0
					],
					"text": "loadmess 1"
				}
			},
			{
				"box": {
					"id": "obj-154",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						474.34923791885376,
						1047.6190638542175,
						29.5,
						22.0
					],
					"text": "+ 1"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 13.0,
					"id": "obj-6",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						474.34923791885376,
						1084.127000927925,
						50.0,
						23.0
					]
				}
			},
			{
				"box": {
					"disabled": [
						0,
						0
					],
					"flagmode": 1,
					"id": "obj-5",
					"itemtype": 0,
					"maxclass": "radiogroup",
					"numinlets": 1,
					"numoutlets": 1,
					"offset": 29,
					"outlettype": [
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						474.34923791885376,
						973.015888094902,
						19.0,
						60.0
					],
					"size": 2,
					"value": 1
				}
			},
			{
				"box": {
					"id": "obj-153",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						534.6666991710663,
						1084.127000927925,
						68.0,
						22.0
					],
					"text": "selector~ 2"
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-152",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							295.0,
							154.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-12",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										190.0,
										627.0,
										29.5,
										22.0
									],
									"text": "1"
								}
							},
							{
								"box": {
									"id": "obj-10",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"patching_rect": [
										190.0,
										601.0,
										61.0,
										22.0
									],
									"text": "delay 100"
								}
							},
							{
								"box": {
									"id": "obj-9",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"patching_rect": [
										190.0,
										575.0,
										58.0,
										22.0
									],
									"text": "loadbang"
								}
							},
							{
								"box": {
									"id": "obj-8",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										586.0,
										748.0,
										63.0,
										22.0
									],
									"text": "writeagain"
								}
							},
							{
								"box": {
									"id": "obj-6",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										451.0,
										779.0,
										34.0,
										22.0
									],
									"text": "write"
								}
							},
							{
								"box": {
									"id": "obj-3",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										349.0,
										809.0,
										45.0,
										22.0
									],
									"text": "store 1"
								}
							},
							{
								"box": {
									"id": "obj-14",
									"maxclass": "newobj",
									"numinlets": 4,
									"numoutlets": 0,
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
											59.0,
											111.0,
											1344.0,
											900.0
										],
										"boxes": [
											{
												"box": {
													"id": "db-to-linear0",
													"maxclass": "newobj",
													"numinlets": 1,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														50.0,
														102.0,
														140.0,
														22.0
													],
													"text": "expr pow(10.\\, $f1 / 20.)"
												}
											},
											{
												"box": {
													"id": "pak0",
													"maxclass": "newobj",
													"numinlets": 4,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														210.0,
														102.0,
														145.0,
														22.0
													],
													"text": "pak 0 430. 0.707946 5."
												}
											},
											{
												"box": {
													"id": "prepend0",
													"maxclass": "newobj",
													"numinlets": 1,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														210.0,
														132.0,
														96.0,
														22.0
													],
													"text": "prepend params"
												}
											},
											{
												"box": {
													"id": "command-send0",
													"linecount": 2,
													"maxclass": "newobj",
													"numinlets": 1,
													"numoutlets": 0,
													"patching_rect": [
														315.0,
														132.0,
														130.0,
														22.0
													],
													"text": "s #0_filter_commands"
												}
											},
											{
												"box": {
													"id": "db-to-linear1",
													"maxclass": "newobj",
													"numinlets": 1,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														50.0,
														172.0,
														140.0,
														22.0
													],
													"text": "expr pow(10.\\, $f1 / 20.)"
												}
											},
											{
												"box": {
													"id": "pak1",
													"maxclass": "newobj",
													"numinlets": 4,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														210.0,
														172.0,
														145.0,
														22.0
													],
													"text": "pak 1 645. 0.562341 5."
												}
											},
											{
												"box": {
													"id": "prepend1",
													"maxclass": "newobj",
													"numinlets": 1,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														210.0,
														202.0,
														96.0,
														22.0
													],
													"text": "prepend params"
												}
											},
											{
												"box": {
													"id": "command-send1",
													"linecount": 2,
													"maxclass": "newobj",
													"numinlets": 1,
													"numoutlets": 0,
													"patching_rect": [
														315.0,
														202.0,
														130.0,
														22.0
													],
													"text": "s #0_filter_commands"
												}
											},
											{
												"box": {
													"id": "setup",
													"maxclass": "newobj",
													"numinlets": 0,
													"numoutlets": 0,
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
															200.0,
															200.0,
															620.0,
															330.0
														],
														"boxes": [
															{
																"box": {
																	"id": "c",
																	"maxclass": "comment",
																	"numinlets": 1,
																	"numoutlets": 0,
																	"patching_rect": [
																		30.0,
																		20.0,
																		540.0,
																		20.0
																	],
																	"text": "Initialisiert Filtertypen und gibt nach dem pattr-Restore die gespeicherten GUI-Werte aus."
																}
															},
															{
																"box": {
																	"id": "lb",
																	"maxclass": "newobj",
																	"numinlets": 1,
																	"numoutlets": 1,
																	"outlettype": [
																		"bang"
																	],
																	"patching_rect": [
																		30.0,
																		65.0,
																		58.0,
																		22.0
																	],
																	"text": "loadbang"
																}
															},
															{
																"box": {
																	"id": "dl",
																	"maxclass": "newobj",
																	"numinlets": 1,
																	"numoutlets": 1,
																	"outlettype": [
																		""
																	],
																	"patching_rect": [
																		30.0,
																		100.0,
																		55.0,
																		22.0
																	],
																	"text": "deferlow"
																}
															},
															{
																"box": {
																	"id": "t",
																	"maxclass": "newobj",
																	"numinlets": 1,
																	"numoutlets": 3,
																	"outlettype": [
																		"bang",
																		"bang",
																		"bang"
																	],
																	"patching_rect": [
																		30.0,
																		135.0,
																		55.0,
																		22.0
																	],
																	"text": "t b b b"
																}
															},
															{
																"box": {
																	"id": "opts",
																	"maxclass": "message",
																	"numinlets": 2,
																	"numoutlets": 1,
																	"outlettype": [
																		""
																	],
																	"patching_rect": [
																		190.0,
																		135.0,
																		285.0,
																		22.0
																	],
																	"text": "setoptions 0 5 1 0 1, setoptions 1 5 1 0 1"
																}
															},
															{
																"box": {
																	"id": "sc",
																	"linecount": 2,
																	"maxclass": "newobj",
																	"numinlets": 1,
																	"numoutlets": 0,
																	"patching_rect": [
																		190.0,
																		170.0,
																		130.0,
																		22.0
																	],
																	"text": "s #0_filter_commands"
																}
															},
															{
																"box": {
																	"id": "sh2",
																	"linecount": 2,
																	"maxclass": "newobj",
																	"numinlets": 1,
																	"numoutlets": 0,
																	"patching_rect": [
																		30.0,
																		205.0,
																		105.0,
																		22.0
																	],
																	"text": "s #0_refresh_h2"
																}
															},
															{
																"box": {
																	"id": "sh3",
																	"linecount": 2,
																	"maxclass": "newobj",
																	"numinlets": 1,
																	"numoutlets": 0,
																	"patching_rect": [
																		30.0,
																		245.0,
																		105.0,
																		22.0
																	],
																	"text": "s #0_refresh_h3"
																}
															}
														],
														"lines": [
															{
																"patchline": {
																	"destination": [
																		"t",
																		0
																	],
																	"source": [
																		"dl",
																		0
																	]
																}
															},
															{
																"patchline": {
																	"destination": [
																		"dl",
																		0
																	],
																	"source": [
																		"lb",
																		0
																	]
																}
															},
															{
																"patchline": {
																	"destination": [
																		"sc",
																		0
																	],
																	"source": [
																		"opts",
																		0
																	]
																}
															},
															{
																"patchline": {
																	"destination": [
																		"opts",
																		0
																	],
																	"source": [
																		"t",
																		2
																	]
																}
															},
															{
																"patchline": {
																	"destination": [
																		"sh2",
																		0
																	],
																	"source": [
																		"t",
																		1
																	]
																}
															},
															{
																"patchline": {
																	"destination": [
																		"sh3",
																		0
																	],
																	"source": [
																		"t",
																		0
																	]
																}
															}
														]
													},
													"patching_rect": [
														325.0,
														242.0,
														55.0,
														22.0
													],
													"text": "p setup"
												}
											},
											{
												"box": {
													"comment": "",
													"id": "obj-10",
													"index": 1,
													"maxclass": "inlet",
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														50.0,
														40.0,
														30.0,
														30.0
													]
												}
											},
											{
												"box": {
													"comment": "",
													"id": "obj-11",
													"index": 2,
													"maxclass": "inlet",
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														85.0,
														40.0,
														30.0,
														30.0
													]
												}
											},
											{
												"box": {
													"comment": "",
													"id": "obj-12",
													"index": 3,
													"maxclass": "inlet",
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														336.0,
														40.0,
														30.0,
														30.0
													]
												}
											},
											{
												"box": {
													"comment": "",
													"id": "obj-13",
													"index": 4,
													"maxclass": "inlet",
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														371.0,
														40.0,
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
														"pak0",
														2
													],
													"source": [
														"db-to-linear0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"pak1",
														2
													],
													"source": [
														"db-to-linear1",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"db-to-linear0",
														0
													],
													"source": [
														"obj-10",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"db-to-linear1",
														0
													],
													"source": [
														"obj-11",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"pak0",
														3
													],
													"source": [
														"obj-12",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"pak1",
														3
													],
													"source": [
														"obj-13",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"prepend0",
														0
													],
													"source": [
														"pak0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"prepend1",
														0
													],
													"source": [
														"pak1",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"command-send0",
														0
													],
													"source": [
														"prepend0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"command-send1",
														0
													],
													"source": [
														"prepend1",
														0
													]
												}
											}
										]
									},
									"patching_rect": [
										459.0,
										462.0,
										77.0,
										22.0
									],
									"text": "p sendtofilter"
								}
							},
							{
								"box": {
									"id": "obj-4",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										212.0,
										645.0,
										77.0,
										22.0
									],
									"text": "clientwindow"
								}
							},
							{
								"box": {
									"id": "obj-2",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										109.0,
										645.0,
										89.0,
										22.0
									],
									"text": "storagewindow"
								}
							},
							{
								"box": {
									"fontsize": 15.0,
									"id": "title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										20.0,
										280.0,
										23.0
									],
									"text": "FLIEGEN-TEILTONKORREKTUR"
								}
							},
							{
								"box": {
									"id": "subtitle",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										48.0,
										520.0,
										20.0
									],
									"text": "Zwei feste Frequenzen · Gain in dB und Q numerisch einstellbar und speicherbar"
								}
							},
							{
								"box": {
									"id": "audio-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										95.0,
										80.0,
										20.0
									],
									"text": "AUDIO"
								}
							},
							{
								"box": {
									"comment": "Flügelsumme",
									"id": "audio-in",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										125.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "cascade",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										220.0,
										65.0,
										22.0
									],
									"text": "cascade~"
								}
							},
							{
								"box": {
									"comment": "gefilterte Flügelsumme",
									"id": "audio-out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.0,
										275.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "audio-note",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										315.0,
										160.0,
										33.0
									],
									"text": "zwischen sum-wings und dem bisherigen *~ einsetzen"
								}
							},
							{
								"box": {
									"id": "command-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										245.0,
										85.0,
										137.0,
										22.0
									],
									"text": "r #0_filter_commands"
								}
							},
							{
								"box": {
									"domain": [
										20.0,
										12000.0
									],
									"fontface": 0,
									"id": "filtergraph",
									"logmarkers": [
										50.0,
										500.0,
										5000.0
									],
									"maxclass": "filtergraph~",
									"nfilters": 2,
									"numinlets": 8,
									"numoutlets": 7,
									"outlettype": [
										"list",
										"float",
										"float",
										"float",
										"float",
										"list",
										"int"
									],
									"parameter_enable": 0,
									"patching_rect": [
										245.0,
										120.0,
										650.0,
										215.0
									],
									"setfilter": [
										1,
										5,
										1,
										0,
										1,
										645.0,
										0.6728991866111755,
										4.0,
										0.0,
										0.0,
										0.0,
										0.0,
										0.0,
										0.0,
										0,
										5,
										1,
										0,
										1,
										430.0,
										0.6243814826011658,
										4.0,
										0.0,
										0.0,
										0.0,
										0.0,
										0.0,
										0.0
									]
								}
							},
							{
								"box": {
									"id": "graph-note",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										245.0,
										342.0,
										420.0,
										20.0
									],
									"text": "Anzeige und Koeffizientengenerator · nicht mit der Maus bedienen"
								}
							},
							{
								"box": {
									"fontsize": 12.0,
									"id": "headers",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										390.0,
										850.0,
										20.0
									],
									"text": "FILTER                    FREQUENZ                                      GAIN dB                               Q         "
								}
							},
							{
								"box": {
									"fontsize": 13.0,
									"id": "h2-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										425.0,
										100.0,
										21.0
									],
									"text": "2. Teilton"
								}
							},
							{
								"box": {
									"id": "h2-freq",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										185.0,
										427.0,
										100.0,
										20.0
									],
									"text": "430 Hz (fest)"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "gain0",
									"maxclass": "flonum",
									"maximum": 0.0,
									"minimum": -18.0,
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 1,
									"patching_rect": [
										330.0,
										426.0,
										75.0,
										22.0
									],
									"saved_attribute_attributes": {
										"valueof": {
											"parameter_initial": [
												-3.0
											],
											"parameter_initial_enable": 1,
											"parameter_longname": "Harmonic 2 Gain[10]",
											"parameter_mmax": 0.0,
											"parameter_mmin": -18.0,
											"parameter_modmode": 0,
											"parameter_shortname": "H2 Gain",
											"parameter_type": 0
										}
									},
									"varname": "harmonic2_gain"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "q0",
									"maxclass": "flonum",
									"maximum": 20.0,
									"minimum": 0.2,
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 1,
									"patching_rect": [
										455.0,
										425.0,
										75.0,
										22.0
									],
									"saved_attribute_attributes": {
										"valueof": {
											"parameter_initial": [
												5.0
											],
											"parameter_initial_enable": 1,
											"parameter_longname": "Harmonic 2 Q[2]",
											"parameter_mmax": 20.0,
											"parameter_mmin": 0.2,
											"parameter_modmode": 0,
											"parameter_shortname": "H2 Q",
											"parameter_type": 0
										}
									},
									"varname": "harmonic2_q"
								}
							},
							{
								"box": {
									"fontsize": 13.0,
									"id": "h3-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										495.0,
										100.0,
										21.0
									],
									"text": "3. Teilton"
								}
							},
							{
								"box": {
									"id": "h3-freq",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										185.0,
										497.0,
										100.0,
										20.0
									],
									"text": "645 Hz (fest)"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "gain1",
									"maxclass": "flonum",
									"maximum": 0.0,
									"minimum": -18.0,
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 1,
									"patching_rect": [
										330.0,
										495.0,
										75.0,
										22.0
									],
									"saved_attribute_attributes": {
										"valueof": {
											"parameter_initial": [
												-5.0
											],
											"parameter_initial_enable": 1,
											"parameter_longname": "Harmonic 3 Gain[9]",
											"parameter_mmax": 0.0,
											"parameter_mmin": -18.0,
											"parameter_modmode": 0,
											"parameter_shortname": "H3 Gain",
											"parameter_type": 0
										}
									},
									"varname": "harmonic3_gain"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "q1",
									"maxclass": "flonum",
									"maximum": 20.0,
									"minimum": 0.2,
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 1,
									"patching_rect": [
										455.0,
										495.0,
										75.0,
										22.0
									],
									"saved_attribute_attributes": {
										"valueof": {
											"parameter_initial": [
												5.0
											],
											"parameter_initial_enable": 1,
											"parameter_longname": "Harmonic 3 Q[8]",
											"parameter_mmax": 20.0,
											"parameter_mmin": 0.2,
											"parameter_modmode": 0,
											"parameter_shortname": "H3 Q",
											"parameter_type": 0
										}
									},
									"varname": "harmonic3_q"
								}
							},
							{
								"box": {
									"id": "refresh0",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										330.0,
										455.0,
										107.0,
										22.0
									],
									"text": "r #0_refresh_h2"
								}
							},
							{
								"box": {
									"id": "refresh1",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										330.0,
										525.0,
										107.0,
										22.0
									],
									"text": "r #0_refresh_h3"
								}
							},
							{
								"box": {
									"id": "autopattr",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 4,
									"outlettype": [
										"",
										"",
										"",
										""
									],
									"patching_rect": [
										110.0,
										692.0,
										58.0,
										22.0
									],
									"restore": {
										"harmonic2_gain": [
											-6.17
										],
										"harmonic2_q": [
											4.0
										],
										"harmonic3_gain": [
											-6.0
										],
										"harmonic3_q": [
											4.0
										],
										"harmonic_instability_depth": [
											6.0
										],
										"harmonic_instability_on": [
											1
										],
										"harmonic_instability_rate": [
											180
										]
									},
									"text": "autopattr",
									"varname": "u530020016"
								}
							},
							{
								"box": {
									"autorestore": "fly_notches.json",
									"id": "storage",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										185.0,
										692.0,
										337.0,
										22.0
									],
									"saved_object_attributes": {
										"client_rect": [
											100,
											164,
											954,
											850
										],
										"parameter_enable": 0,
										"parameter_mappable": 0,
										"storage_rect": [
											102,
											95,
											1003,
											1038
										]
									},
									"text": "pattrstorage #0_fly_notches @autorestore 1 @savemode 1",
									"varname": "#0_fly_notches"
								}
							},
							{
								"box": {
									"id": "hi-title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										600.0,
										390.0,
										240.0,
										20.0
									],
									"text": "HARMONISCHE INSTABILITÄT"
								}
							},
							{
								"box": {
									"id": "hi-on-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										600.0,
										425.0,
										30.0,
										20.0
									],
									"text": "An"
								}
							},
							{
								"box": {
									"id": "hi-on",
									"maxclass": "toggle",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"parameter_enable": 0,
									"patching_rect": [
										635.0,
										423.0,
										24.0,
										24.0
									],
									"varname": "harmonic_instability_on"
								}
							},
							{
								"box": {
									"id": "hi-depth-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										680.0,
										425.0,
										75.0,
										20.0
									],
									"text": "Tiefe ± dB"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "hi-depth",
									"maxclass": "flonum",
									"maximum": 6.0,
									"minimum": 0.0,
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										755.0,
										423.0,
										65.0,
										22.0
									],
									"varname": "harmonic_instability_depth"
								}
							},
							{
								"box": {
									"id": "hi-rate-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										600.0,
										465.0,
										60.0,
										20.0
									],
									"text": "Rate ms"
								}
							},
							{
								"box": {
									"id": "hi-rate",
									"maxclass": "number",
									"maximum": 2000,
									"minimum": 50,
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										660.0,
										463.0,
										65.0,
										22.0
									],
									"varname": "harmonic_instability_rate"
								}
							},
							{
								"box": {
									"id": "hi-note",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										600.0,
										500.0,
										285.0,
										33.0
									],
									"text": "2. und 3. Teilton bewegen sich unabhängig; 0 dB Tiefe = unverändert."
								}
							},
							{
								"box": {
									"id": "hi-engine",
									"maxclass": "newobj",
									"numinlets": 5,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
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
											820.0,
											520.0
										],
										"boxes": [
											{
												"box": {
													"color": [
														0.168627450980392,
														1.0,
														0.0,
														1.0
													],
													"id": "obj-3",
													"maxclass": "newobj",
													"numinlets": 0,
													"numoutlets": 0,
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
															59.0,
															111.0,
															1344.0,
															897.0
														],
														"boxes": [
															{
																"box": {
																	"id": "obj-2",
																	"linecount": 67,
																	"maxclass": "comment",
																	"numinlets": 1,
																	"numoutlets": 0,
																	"patching_rect": [
																		158.0,
																		-53.0,
																		1037.0,
																		905.0
																	],
																	"text": "echnisch modulieren wir zwei schmale Filterstellen im Spektrum. Wir erzeugen keine neuen Harmonischen und verändern auch nicht die Grundfrequenz der Fliege.\nIn deinem Signalweg passiert Folgendes:\nbeide Flügelsignale\n→ Summierung\n→ Filter Harmonics\n→ weiterer Fliegen-Signalweg\nIm Filter befinden sich zwei schmale Peak/Notch-Filter:\n- ungefähr 430 Hz: Bereich des zweiten Teiltons\n- ungefähr 645 Hz: Bereich des dritten Teiltons\nDiese Frequenzen entsprechen ungefähr:\nGrundton ≈ 215 Hz\n2 × 215 Hz ≈ 430 Hz\n3 × 215 Hz ≈ 645 Hz\nDie Filter hatten bisher feste Gain-Werte. Beispielsweise:\n430 Hz: −3 dB\n645 Hz: −5 dB\nDadurch wurden diese beiden Teiltöne immer gleich stark reduziert. Ihre Position und Stärke blieben langfristig erkennbar.\nJetzt erzeugen zwei voneinander unabhängige drunk-Objekte langsame Zufallsbewegungen:\ndrunk\n→ Normierung auf −1 … +1\n→ Multiplikation mit Tiefe in dB\n→ line\n→ Addition zum gespeicherten Filter-Gain\nBei einer Tiefe von 1.5 dB könnte sich beispielsweise Folgendes ergeben:\n430-Hz-Filter: −3 dB + momentane Abweichung\n               ungefähr −4.5 bis −1.5 dB\n\n645-Hz-Filter: −5 dB + andere Abweichung\n               ungefähr −6.5 bis −3.5 dB\nDie beiden Teiltonbereiche bewegen sich also unabhängig voneinander.\ndrunk erzeugt einen Random Walk. Der nächste Wert liegt in der Nähe des vorherigen Wertes. Dadurch entstehen keine völlig unabhängigen Sprünge wie bei random, sondern eine langsame, unregelmäßige Wanderung.\nline glättet jeden neuen Wert zusätzlich über ungefähr 160 ms. Deshalb werden die Filterkoeffizienten nicht abrupt umgeschaltet:\nneuer Zufallswert\n→ 160-ms-Rampe\n→ kontinuierliche Gain-Veränderung\nDie Einstellung Rate ms bestimmt, wie häufig ein neues Ziel erzeugt wird:\n- 80 ms: nervösere Bewegung\n- 180 ms: mittlere, lebendige Bewegung\n- 500 ms: langsame spektrale Veränderung\n- 1000 ms: kaum wahrnehmbare Langzeitdrift\nTiefe ± dB bestimmt die Stärke der Bewegung:\n- 0 dB: keine Modulation\n- 0.5 dB: sehr subtil\n- 1.5 dB: gut wahrnehmbare, aber moderate Instabilität\n- 3 dB: deutliche Klangfarbenbewegung\nAkustisch funktioniert es, weil eine periodische Wellenform durch ihr Verhältnis der Harmonischen charakterisiert wird. Bleiben Grundton und sämtliche Obertöne dauerhaft in denselben Pegelverhältnissen, erkennt das Ohr nach einiger Zeit eine feste Klangformel.\nWir verändern jetzt fortlaufend das Verhältnis:\nGrundton : zweiter Teilton : dritter Teilton\nBeispielsweise:\nZeitpunkt A: 1.0 : 0.50 : 0.32\nZeitpunkt B: 1.0 : 0.43 : 0.38\nZeitpunkt C: 1.0 : 0.55 : 0.27\nDie Grundfrequenz bleibt dabei gleich. Trotzdem verändert sich die Wellenform geringfügig, weil die Zusammensetzung ihrer Teiltöne variiert. Das Ohr nimmt das als:\n- wechselnde Klangfarbe,\n- leichte Rauigkeit,\n- mechanische Instabilität,\n- weniger statischen Obertonkamm\nwahr.\nDas ist eine Form langsamer subtraktiver Klangfarbenmodulation. Die Filter schneiden zwei vorhandene Spektralbereiche unterschiedlich stark ab. Es handelt sich daher nicht um Frequenzmodulation, Phasenmodulation oder klassische Amplitudenmodulation des gesamten Signals.\nDer entscheidende Unterschied zu einem zusätzlichen Noise-Layer ist: Wir bewegen bereits vorhandene Bestandteile des Fliegenklangs. Dadurch bleibt die Identität der Fliege erhalten. Nur ihre innere spektrale Balance ist nicht mehr dauerhaft identisch.\nEine Einschränkung gibt es: Die Filterfrequenzen sind fest bei 430 und 645 Hz. Wenn sich der Grundton stark von ungefähr 215 Hz entfernt, liegen die tatsächlichen Harmonischen nicht mehr exakt an diesen Stellen. Für deinen aktuellen Bereich von ungefähr 205–223 Hz ist die Abweichung klein genug. Bei einem wesentlich größeren Tonhöhenbereich müssten die Filterfrequenzen dem Grundton folgen."
																}
															}
														],
														"lines": []
													},
													"patching_rect": [
														636.0,
														395.0,
														52.0,
														22.0
													],
													"text": "p theory"
												}
											},
											{
												"box": {
													"comment": "",
													"id": "hb0",
													"index": 1,
													"maxclass": "inlet",
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														40.0,
														30.0,
														30.0,
														30.0
													]
												}
											},
											{
												"box": {
													"comment": "",
													"id": "hb1",
													"index": 2,
													"maxclass": "inlet",
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														130.0,
														30.0,
														30.0,
														30.0
													]
												}
											},
											{
												"box": {
													"comment": "",
													"id": "hon",
													"index": 3,
													"maxclass": "inlet",
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														"int"
													],
													"patching_rect": [
														250.0,
														30.0,
														30.0,
														30.0
													]
												}
											},
											{
												"box": {
													"comment": "",
													"id": "hdepth",
													"index": 4,
													"maxclass": "inlet",
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														380.0,
														30.0,
														30.0,
														30.0
													]
												}
											},
											{
												"box": {
													"comment": "",
													"id": "hrate",
													"index": 5,
													"maxclass": "inlet",
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														500.0,
														30.0,
														30.0,
														30.0
													]
												}
											},
											{
												"box": {
													"comment": "",
													"id": "hout0",
													"index": 1,
													"maxclass": "outlet",
													"numinlets": 1,
													"numoutlets": 0,
													"patching_rect": [
														52.0,
														610.0,
														30.0,
														30.0
													]
												}
											},
											{
												"box": {
													"comment": "",
													"id": "hout1",
													"index": 2,
													"maxclass": "outlet",
													"numinlets": 1,
													"numoutlets": 0,
													"patching_rect": [
														147.0,
														610.0,
														30.0,
														30.0
													]
												}
											},
											{
												"box": {
													"id": "enabletrig",
													"maxclass": "newobj",
													"numinlets": 1,
													"numoutlets": 2,
													"outlettype": [
														"int",
														"int"
													],
													"patching_rect": [
														250.0,
														85.0,
														45.0,
														22.0
													],
													"text": "t i i"
												}
											},
											{
												"box": {
													"id": "metro",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"bang"
													],
													"patching_rect": [
														250.0,
														125.0,
														70.0,
														22.0
													],
													"text": "metro 180"
												}
											},
											{
												"box": {
													"id": "select",
													"maxclass": "newobj",
													"numinlets": 3,
													"numoutlets": 3,
													"outlettype": [
														"bang",
														"bang",
														""
													],
													"patching_rect": [
														330.0,
														125.0,
														55.0,
														22.0
													],
													"text": "sel 0 1"
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
														250.0,
														165.0,
														45.0,
														22.0
													],
													"text": "t b b"
												}
											},
											{
												"box": {
													"id": "rateclip",
													"maxclass": "newobj",
													"numinlets": 3,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														500.0,
														85.0,
														85.0,
														22.0
													],
													"text": "clip 50 2000"
												}
											},
											{
												"box": {
													"id": "zero0",
													"maxclass": "message",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														330.0,
														165.0,
														50.0,
														22.0
													],
													"text": "0. 120"
												}
											},
											{
												"box": {
													"id": "zero1",
													"maxclass": "message",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														390.0,
														165.0,
														50.0,
														22.0
													],
													"text": "0. 120"
												}
											},
											{
												"box": {
													"id": "r0",
													"maxclass": "newobj",
													"numinlets": 3,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														250.0,
														215.0,
														95.0,
														22.0
													],
													"text": "drunk 2001 120"
												}
											},
											{
												"box": {
													"id": "sub0",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"int"
													],
													"patching_rect": [
														250.0,
														250.0,
														55.0,
														22.0
													],
													"text": "- 1000"
												}
											},
											{
												"box": {
													"id": "norm0",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"float"
													],
													"patching_rect": [
														250.0,
														285.0,
														60.0,
														22.0
													],
													"text": "/ 1000."
												}
											},
											{
												"box": {
													"id": "mulpak0",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														250.0,
														320.0,
														75.0,
														22.0
													],
													"text": "pak 0. 1.5"
												}
											},
											{
												"box": {
													"id": "mulexpr0",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														250.0,
														355.0,
														90.0,
														22.0
													],
													"text": "expr $f1*$f2"
												}
											},
											{
												"box": {
													"id": "rampmsg0",
													"maxclass": "message",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														103.0,
														435.0,
														55.0,
														22.0
													],
													"text": "$1 160"
												}
											},
											{
												"box": {
													"id": "line0",
													"maxclass": "newobj",
													"numinlets": 3,
													"numoutlets": 2,
													"outlettype": [
														"",
														"bang"
													],
													"patching_rect": [
														103.0,
														480.0,
														50.0,
														22.0
													],
													"text": "line 0."
												}
											},
											{
												"box": {
													"id": "r1",
													"maxclass": "newobj",
													"numinlets": 3,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														470.0,
														215.0,
														95.0,
														22.0
													],
													"text": "drunk 2001 120"
												}
											},
											{
												"box": {
													"id": "sub1",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"int"
													],
													"patching_rect": [
														470.0,
														250.0,
														55.0,
														22.0
													],
													"text": "- 1000"
												}
											},
											{
												"box": {
													"id": "norm1",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"float"
													],
													"patching_rect": [
														470.0,
														285.0,
														60.0,
														22.0
													],
													"text": "/ 1000."
												}
											},
											{
												"box": {
													"id": "mulpak1",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														470.0,
														320.0,
														75.0,
														22.0
													],
													"text": "pak 0. 1.5"
												}
											},
											{
												"box": {
													"id": "mulexpr1",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														470.0,
														355.0,
														90.0,
														22.0
													],
													"text": "expr $f1*$f2"
												}
											},
											{
												"box": {
													"id": "rampmsg1",
													"maxclass": "message",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														194.0,
														435.0,
														55.0,
														22.0
													],
													"text": "$1 160"
												}
											},
											{
												"box": {
													"id": "line1",
													"maxclass": "newobj",
													"numinlets": 3,
													"numoutlets": 2,
													"outlettype": [
														"",
														"bang"
													],
													"patching_rect": [
														194.0,
														494.0,
														50.0,
														22.0
													],
													"text": "line 0."
												}
											},
											{
												"box": {
													"id": "sum0pak",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														52.0,
														520.0,
														70.0,
														22.0
													],
													"text": "pak 0. 0."
												}
											},
											{
												"box": {
													"id": "sum0",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														52.0,
														565.0,
														90.0,
														22.0
													],
													"text": "expr $f1+$f2"
												}
											},
											{
												"box": {
													"id": "sum1pak",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														147.0,
														520.0,
														70.0,
														22.0
													],
													"text": "pak 0. 0."
												}
											},
											{
												"box": {
													"id": "sum1",
													"maxclass": "newobj",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														147.0,
														565.0,
														90.0,
														22.0
													],
													"text": "expr $f1+$f2"
												}
											}
										],
										"lines": [
											{
												"patchline": {
													"destination": [
														"metro",
														0
													],
													"source": [
														"enabletrig",
														1
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"select",
														0
													],
													"source": [
														"enabletrig",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"sum0pak",
														0
													],
													"source": [
														"hb0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"sum1pak",
														0
													],
													"source": [
														"hb1",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"mulpak0",
														1
													],
													"order": 1,
													"source": [
														"hdepth",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"mulpak1",
														1
													],
													"order": 0,
													"source": [
														"hdepth",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"enabletrig",
														0
													],
													"source": [
														"hon",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"rateclip",
														0
													],
													"source": [
														"hrate",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"sum0pak",
														1
													],
													"source": [
														"line0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"sum1pak",
														1
													],
													"source": [
														"line1",
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
														"metro",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"rampmsg0",
														0
													],
													"source": [
														"mulexpr0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"rampmsg1",
														0
													],
													"source": [
														"mulexpr1",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"mulexpr0",
														0
													],
													"source": [
														"mulpak0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"mulexpr1",
														0
													],
													"source": [
														"mulpak1",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"mulpak0",
														0
													],
													"source": [
														"norm0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"mulpak1",
														0
													],
													"source": [
														"norm1",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"sub0",
														0
													],
													"source": [
														"r0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"sub1",
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
														"line0",
														0
													],
													"source": [
														"rampmsg0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"line1",
														0
													],
													"source": [
														"rampmsg1",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"metro",
														1
													],
													"source": [
														"rateclip",
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
														"select",
														1
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"zero0",
														0
													],
													"order": 1,
													"source": [
														"select",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"zero1",
														0
													],
													"order": 0,
													"source": [
														"select",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"norm0",
														0
													],
													"source": [
														"sub0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"norm1",
														0
													],
													"source": [
														"sub1",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"hout0",
														0
													],
													"source": [
														"sum0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"sum0",
														0
													],
													"source": [
														"sum0pak",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"hout1",
														0
													],
													"source": [
														"sum1",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"sum1",
														0
													],
													"source": [
														"sum1pak",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"r0",
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
														"r1",
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
														"line0",
														0
													],
													"source": [
														"zero0",
														0
													]
												}
											},
											{
												"patchline": {
													"destination": [
														"line1",
														0
													],
													"source": [
														"zero1",
														0
													]
												}
											}
										]
									},
									"patching_rect": [
										600.0,
										545.0,
										140.0,
										22.0
									],
									"text": "p harmonic_instability"
								}
							},
							{
								"box": {
									"id": "hi-default-on",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										635.0,
										367.0,
										70.0,
										22.0
									],
									"text": "loadmess 1"
								}
							},
							{
								"box": {
									"id": "hi-default-depth",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										759.0,
										363.0,
										73.0,
										22.0
									],
									"text": "loadmess 6."
								}
							},
							{
								"box": {
									"id": "hi-default-rate",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										660.0,
										340.0,
										83.0,
										22.0
									],
									"text": "loadmess 180"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"cascade",
										0
									],
									"source": [
										"audio-in",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"audio-out",
										0
									],
									"source": [
										"cascade",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"filtergraph",
										0
									],
									"source": [
										"command-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"cascade",
										1
									],
									"midpoints": [
										254.5,
										365.0,
										150.0,
										365.0,
										150.0,
										210.0,
										105.5,
										210.0
									],
									"source": [
										"filtergraph",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"hi-engine",
										0
									],
									"source": [
										"gain0",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"hi-engine",
										1
									],
									"source": [
										"gain1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"hi-depth",
										0
									],
									"source": [
										"hi-default-depth",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"hi-on",
										0
									],
									"source": [
										"hi-default-on",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"hi-rate",
										0
									],
									"source": [
										"hi-default-rate",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"hi-engine",
										3
									],
									"source": [
										"hi-depth",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-14",
										1
									],
									"source": [
										"hi-engine",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-14",
										0
									],
									"source": [
										"hi-engine",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"hi-engine",
										2
									],
									"source": [
										"hi-on",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"hi-engine",
										4
									],
									"source": [
										"hi-rate",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-12",
										0
									],
									"source": [
										"obj-10",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"storage",
										0
									],
									"source": [
										"obj-12",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"storage",
										0
									],
									"source": [
										"obj-2",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"storage",
										0
									],
									"source": [
										"obj-3",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"storage",
										0
									],
									"source": [
										"obj-4",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"storage",
										0
									],
									"source": [
										"obj-6",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"storage",
										0
									],
									"source": [
										"obj-8",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-10",
										0
									],
									"source": [
										"obj-9",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-14",
										2
									],
									"source": [
										"q0",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-14",
										3
									],
									"source": [
										"q1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"gain0",
										0
									],
									"hidden": 1,
									"order": 1,
									"source": [
										"refresh0",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"q0",
										0
									],
									"hidden": 1,
									"order": 0,
									"source": [
										"refresh0",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"gain1",
										0
									],
									"hidden": 1,
									"order": 1,
									"source": [
										"refresh1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"q1",
										0
									],
									"hidden": 1,
									"order": 0,
									"source": [
										"refresh1",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						645.7778120040894,
						1026.9841428995132,
						106.0,
						22.0
					],
					"text": "p Filter Harmonics",
					"varname": "patcher"
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-151",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "noise-res",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										90.74074399471283,
										100.0,
										54.0,
										22.0
									],
									"text": "noise~"
								}
							},
							{
								"box": {
									"id": "lp5a",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										90.74074399471283,
										138.27160799503326,
										84.0,
										22.0
									],
									"text": "onepole~ 5"
								}
							},
							{
								"box": {
									"id": "lp5b",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										90.74074399471283,
										175.30864799022675,
										84.0,
										22.0
									],
									"text": "onepole~ 5"
								}
							},
							{
								"box": {
									"id": "res-depth",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										217.28395998477936,
										52.0,
										22.0
									],
									"text": "*~ 40"
								}
							},
							{
								"box": {
									"id": "res-base",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										253.08643198013306,
										46.0,
										22.0
									],
									"text": "+~ 5"
								}
							},
							{
								"box": {
									"id": "offset-depth",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										115.43210399150848,
										217.28395998477936,
										46.0,
										22.0
									],
									"text": "*~ 3"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-148",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.00000004694368,
										335.0864350403748,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-149",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										115.43209804694368,
										335.0864350403748,
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
										"lp5b",
										0
									],
									"source": [
										"lp5a",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"offset-depth",
										0
									],
									"order": 0,
									"source": [
										"lp5b",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"res-depth",
										0
									],
									"order": 1,
									"source": [
										"lp5b",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lp5a",
										0
									],
									"source": [
										"noise-res",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-149",
										0
									],
									"source": [
										"offset-depth",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-148",
										0
									],
									"source": [
										"res-base",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"res-base",
										0
									],
									"source": [
										"res-depth",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						563.4881281852722,
						497.0,
						112.0,
						22.0
					],
					"text": "p Noise + onepole5"
				}
			},
			{
				"box": {
					"color": [
						1.0,
						0.717647058823529,
						0.0,
						1.0
					],
					"id": "obj-120",
					"linecount": 3,
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-2",
									"linecount": 154,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										342.0,
										26.0,
										519.0,
										2071.0
									],
									"text": "Es ist **keine klassische Frequenzmodulation** und auch keine normale Amplitudenmodulation. Technisch ist es eine **nichtlineare Wellenformung mit einer veränderlichen Phase innerhalb eines Cosinus-Zweiges**.\n\nDer Begriff „Resonanz“ ist hier irreführend. Es gibt an dieser Stelle keinen Resonanzfilter und keine Resonanzfrequenz.\n\nDer Grundoszillator ist:\n\n```max\nphasor~\n```\n\nEr erzeugt eine ansteigende Rampe von `0` bis `1`. Seine Geschwindigkeit bestimmt die Grundfrequenz der Fliege.\n\nDiese Grundfrequenz wird durch das Resonanzmapping nicht verändert. Daher ist es keine Frequenzmodulation:\n\n```text\nResonanzwert verändert nicht die Frequenz von phasor~\n```\n\nAus der Phasor-Rampe wird anschließend eine spezielle asymmetrische Flügelwellenform geformt. Vereinfacht entsteht ein Signal zwischen ungefähr `−1` und `+1`.\n\nDieses Signal wird geteilt:\n\n```max\n[minimum~ 0]  → negativer Teil\n[maximum~ 0]  → positiver Teil\n```\n\nDer Resonanzwert wirkt nur auf den negativen Teil:\n\n```text\nnegativer Teil × Resonanzwert\n```\n\nDas sieht zunächst wie Amplitudenmodulation aus. Dieser multiplizierte Wert wird aber nicht direkt hörbar ausgegeben. Er dient anschließend als **Phasenwert für `cos~`**:\n\n```max\nnegativer Flügelteil\n        ×\nResonanzwert / 100\n        ↓\n[pong~ 1 0 1]\n        ↓\n[cos~]\n```\n\n`cos~` interpretiert seinen Eingang als Phase:\n\n```text\n0,00 → Anfang des Cosinus\n0,25 → Viertelperiode\n0,50 → halbe Periode\n0,75 → Dreiviertelperiode\n1,00 → vollständige Periode\n```\n\nDer Resonanzwert bestimmt also, welchen Bereich der Cosinuswelle der negative Teil der Flügelbewegung durchläuft.\n\nBei kleinem Resonanzwert wird nur ein sehr kleiner Ausschnitt des Cosinus verwendet. Dieser Ausschnitt ist relativ glatt.\n\nBei größerem Resonanzwert wird ein größerer Abschnitt des Cosinus durchlaufen. Dadurch bekommt dieser Teil der Flügelwellenform mehr Krümmung und Struktur.\n\nDanach wird das Cosinussignal wieder zum negativen Teil der Flügelwellenform addiert. Der positive Teil wird separat hoch vier genommen:\n\n```text\npositiver Teil⁴ × 2\n```\n\nAm Ende werden beide Teile addiert.\n\nDie technisch genaueste Bezeichnung ist daher:\n\n> **zeitvariable nichtlineare Wellenformung**\n\nOder etwas konkreter:\n\n> **Der Resonanzwert skaliert die Phase eines internen Cosinus-Waveshapers.**\n\nEs ist keine klassische Phasenmodulation eines Oszillators, weil die Phase des grundlegenden `phasor~` nicht verändert wird. Aber innerhalb des Waveshapers wird tatsächlich ein Phasenargument verändert.\n\nDie Unterschiede:\n\n| Verfahren | Passiert hier? | Bedeutung |\n|---|---|---|\n| Frequenzmodulation | Nein | Die Grundfrequenz des `phasor~` bleibt gleich |\n| normale Amplitudenmodulation | Nein | Der Resonanzwert multipliziert nicht die fertige Ausgangslautstärke |\n| klassische Phasenmodulation | Nicht am Grundoszillator | Die Phase des `phasor~` bleibt unverändert |\n| Cosinus-Phasenskalierung | Ja | Ein interner Signalabschnitt durchläuft abhängig vom Resonanzwert einen anderen Cosinusbereich |\n| Waveshaping | Ja | Die Form einer Periode wird verändert |\n| Obertonmodulation | Ja | Die veränderte Periodenform erzeugt eine andere Teiltonverteilung |\n\nWarum entstehen dadurch Obertöne?\n\nEin Sinus enthält nur eine Frequenz. Jede Abweichung von einer Sinusform erzeugt zusätzliche harmonische Frequenzen. Je schärfer, asymmetrischer oder stärker gekrümmt eine periodische Wellenform ist, desto mehr Obertöne enthält sie.\n\nDeine Flügelwellenform ist bereits stark asymmetrisch. Der Cosinuszweig verändert zusätzlich die Form ihres negativen Abschnitts. Dadurch ändern sich die relativen Pegel des zweiten, dritten und der weiteren Teiltöne.\n\nDas Resonanzmapping steuert daher nicht:\n\n```text\nWie hoch klingt die Fliege?\n```\n\nund auch nicht direkt:\n\n```text\nWie laut klingt die Fliege?\n```\n\nEs steuert:\n\n```text\nWelche Form hat eine einzelne Flügelschwingung?\n```\n\nUnd daraus folgt:\n\n```text\nWie sind ihre Obertöne zusammengesetzt?\n```\n\nDa das Resonanzmapping aus der Bewegungsgeschwindigkeit kommt, gilt aktuell:\n\n```text\nschnellere Bewegung des gelben Punkts\n→ größerer Resonanzwert\n→ stärkere interne Cosinus-Wellenformung\n→ veränderte beziehungsweise tendenziell reichere Obertonstruktur\n```\n\nGenau deshalb ist dieser Block für deine aktuelle Frage relevant: Wenn dir die Fliege zu harmonisch und synthetisch klingt, kann man entweder nachträglich tiefpassfiltern oder die Stärke dieses Waveshaping-Zweiges reduzieren. Der Grundcharakter der starken Teiltöne entsteht allerdings bereits aus der gesamten Konstruktion von `flywing`, nicht nur aus dem kleinen Bewegungszusatz `0–0,3`."
								}
							},
							{
								"box": {
									"id": "obj-14",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										223.28766226768494,
										142.0,
										22.0
									],
									"text": "rampsmooth~ 2400 3840"
								}
							},
							{
								"box": {
									"id": "obj-13",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										195.89040398597717,
										31.0,
										22.0
									],
									"text": "sig~"
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										164.38355696201324,
										143.0,
										22.0
									],
									"text": "scale 0.0005 0.015 0. 0.3"
								}
							},
							{
								"box": {
									"id": "obj-10",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										132.87670993804932,
										100.0,
										22.0
									],
									"text": "clip 0.0005 0.015"
								}
							},
							{
								"box": {
									"id": "obj-6",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										100.0,
										171.0,
										22.0
									],
									"text": "receive #1_Resonanzmapping"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-118",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.00002530389406,
										305.2876773232803,
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
										"obj-11",
										0
									],
									"source": [
										"obj-10",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-13",
										0
									],
									"source": [
										"obj-11",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-14",
										0
									],
									"source": [
										"obj-13",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-118",
										0
									],
									"source": [
										"obj-14",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-10",
										0
									],
									"source": [
										"obj-6",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						578.9881281852722,
						541.2698496580124,
						101.34228628873825,
						49.0
					],
					"text": "p Waveshaping Unterschiede aus Speed"
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-112",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "turn-comment",
									"linecount": 4,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.0,
										100.0,
										133.0,
										60.0
									],
									"text": " Wendungsstärke 0..1 moduliert nur den kleinen Frequenzoffset von Flügel 2."
								}
							},
							{
								"box": {
									"id": "turn-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										167.7083307504654,
										145.0,
										22.0
									],
									"text": "receive #1_Turnmapping"
								}
							},
							{
								"box": {
									"id": "turn-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										201.04166281223297,
										72.0,
										22.0
									],
									"text": "clip 0. 1."
								}
							},
							{
								"box": {
									"format": 6,
									"id": "turn-num",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										69.7916659116745,
										233.3333282470703,
										72.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "turn-sig",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										269.7916601896286,
										31.0,
										22.0
									],
									"text": "sig~"
								}
							},
							{
								"box": {
									"id": "turn-smooth",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										307.2916587591171,
										142.0,
										22.0
									],
									"text": "rampsmooth~ 1200 2400"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-111",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										49.99999798327633,
										389.29166181935886,
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
										"turn-num",
										0
									],
									"order": 0,
									"source": [
										"turn-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"turn-sig",
										0
									],
									"order": 1,
									"source": [
										"turn-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"turn-clip",
										0
									],
									"source": [
										"turn-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"turn-smooth",
										0
									],
									"source": [
										"turn-sig",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-111",
										0
									],
									"source": [
										"turn-smooth",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						801.0,
						474.0,
						175.0,
						22.0
					],
					"text": "p FReqOffsetFlügel 2 bei Turns"
				}
			},
			{
				"box": {
					"color": [
						0.8470588235294118,
						0.6078431372549019,
						0.0,
						1.0
					],
					"id": "obj-110",
					"linecount": 2,
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "dist-comment",
									"linecount": 17,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										247.53087997436523,
										103.70370399951935,
										116.0,
										234.0
									],
									"text": "Distance -> spektrale Naehe/Ferne: 0 cm = 200 Hz, 146.4 cm = 1500 Hz. Gemeinsam auf beide flywing-onepole~.\n\nALso wenn es nah ist ist der Tiefe Brumm lauter.\n\nPerzeptionell logisch \nakustisch eh nicht so, aber es wirkt !"
								}
							},
							{
								"box": {
									"id": "dist-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										100.0,
										175.0,
										22.0
									],
									"text": "receive #1_Distancemapping"
								}
							},
							{
								"box": {
									"id": "dist-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										129.62963199615479,
										88.0,
										22.0
									],
									"text": "clip 0. 146.4"
								}
							},
							{
								"box": {
									"id": "dist-scale",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										160.49383199214935,
										158.0,
										22.0
									],
									"text": "scale 0. 146.4 200. 1500."
								}
							},
							{
								"box": {
									"format": 6,
									"id": "dist-num",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										125.30864799022675,
										191.35803198814392,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "dist-sig",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										191.35803198814392,
										62.0,
										22.0
									],
									"text": "sig~ 700."
								}
							},
							{
								"box": {
									"id": "dist-smooth",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										220.9876639842987,
										142.0,
										22.0
									],
									"text": "rampsmooth~ 2400 2400"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-109",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										49.99997937679291,
										397.70370800785065,
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
										"dist-scale",
										0
									],
									"source": [
										"dist-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dist-clip",
										0
									],
									"source": [
										"dist-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dist-num",
										0
									],
									"order": 0,
									"source": [
										"dist-scale",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dist-sig",
										0
									],
									"order": 1,
									"source": [
										"dist-scale",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dist-smooth",
										0
									],
									"source": [
										"dist-sig",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-109",
										0
									],
									"source": [
										"dist-smooth",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						809.2698780298233,
						738.0952495336533,
						111.06843942403793,
						35.0
					],
					"text": "p Distanz Tiefpass 200 bis 1500 HZ"
				}
			},
			{
				"box": {
					"id": "obj-108",
					"linecount": 2,
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-163",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										103.43511819839478,
										128.24427676200867,
										125.0,
										22.0
									],
									"text": "receive #1_duckingon"
								}
							},
							{
								"box": {
									"id": "obj-164",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										100.0,
										125.0,
										22.0
									],
									"text": "receive #1_duckingoff"
								}
							},
							{
								"box": {
									"id": "obj-27",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										53.05343532562256,
										191.60305976867676,
										39.0,
										22.0
									],
									"text": "$1 50"
								}
							},
							{
								"box": {
									"id": "obj-23",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										53.05343532562256,
										223.66413068771362,
										34.0,
										22.0
									],
									"text": "line~ 1."
								}
							},
							{
								"box": {
									"id": "obj-22",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										164.88550066947937,
										29.5,
										22.0
									],
									"text": "1"
								}
							},
							{
								"box": {
									"id": "obj-20",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										103.43511819839478,
										164.88550066947937,
										29.5,
										22.0
									],
									"text": "0.4"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-107",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										53.05342843910216,
										305.664114924881,
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
										"obj-20",
										0
									],
									"source": [
										"obj-163",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-22",
										0
									],
									"source": [
										"obj-164",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-27",
										0
									],
									"source": [
										"obj-20",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-27",
										0
									],
									"source": [
										"obj-22",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-107",
										0
									],
									"source": [
										"obj-23",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-23",
										0
									],
									"source": [
										"obj-27",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						622.5319635868073,
						1122.7993581295013,
						68.70229482650757,
						35.0
					],
					"text": "p Ducking wenn Buzz"
				}
			},
			{
				"box": {
					"color": [
						0.7411764705882353,
						0.5803921568627451,
						0.15294117647058825,
						1.0
					],
					"id": "obj-106",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-26",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.0,
										100.0,
										273.97258281707764,
										33.0
									],
									"text": "Turn amount 0..1 bleibt wie bisher: maximal +1 Hz zusätzlicher Detune auf Flügel 2."
								}
							},
							{
								"box": {
									"id": "bal-comment",
									"linecount": 3,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.76335883140564,
										138.16794157028198,
										242.16868364810944,
										47.0
									],
									"text": "signed Turn -1..1 verschiebt die Amplitudenbalance der beiden Flügel gegenläufig"
								}
							},
							{
								"box": {
									"id": "bal-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.76335883140564,
										193.89313626289368,
										145.0,
										22.0
									],
									"text": "receive #1_TurnSigned"
								}
							},
							{
								"box": {
									"id": "bal-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.76335883140564,
										225.1908483505249,
										75.0,
										22.0
									],
									"text": "clip -1. 1."
								}
							},
							{
								"box": {
									"id": "bal-scale-L",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										54.58015298843384,
										259.5419957637787,
										107.0,
										22.0
									],
									"text": "scale -1. 1. 1.4 0.6"
								}
							},
							{
								"box": {
									"id": "bal-scale-R",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										170.61069536209106,
										259.5419957637787,
										107.0,
										22.0
									],
									"text": "scale -1. 1. 0.6 1.4"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "bal-num-L",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										69.08397078514099,
										290.0763490200043,
										65.0,
										22.0
									]
								}
							},
							{
								"box": {
									"format": 6,
									"id": "bal-num-R",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										184.35115432739258,
										289.31299018859863,
										65.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "bal-sig-L",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										53.80004096031189,
										315.8550319671631,
										31.0,
										22.0
									],
									"text": "sig~ 1."
								}
							},
							{
								"box": {
									"id": "bal-sig-R",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										169.58950436115265,
										315.8550319671631,
										31.0,
										22.0
									],
									"text": "sig~ 1."
								}
							},
							{
								"box": {
									"id": "bal-smooth-L",
									"linecount": 2,
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										53.49577617645264,
										345.5575062036514,
										80.06591475009918,
										35.0
									],
									"text": "rampsmooth~ 2400 2400"
								}
							},
							{
								"box": {
									"id": "bal-smooth-R",
									"linecount": 2,
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										169.2852395772934,
										345.5575062036514,
										80.06591475009918,
										35.0
									],
									"text": "rampsmooth~ 2400 2400"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-104",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										53.49580700060267,
										440.5574852618789,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-105",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										169.2852350006027,
										440.5574852618789,
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
										"bal-scale-L",
										0
									],
									"order": 1,
									"source": [
										"bal-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"bal-scale-R",
										0
									],
									"order": 0,
									"source": [
										"bal-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"bal-clip",
										0
									],
									"source": [
										"bal-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"bal-num-L",
										0
									],
									"order": 0,
									"source": [
										"bal-scale-L",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"bal-sig-L",
										0
									],
									"order": 1,
									"source": [
										"bal-scale-L",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"bal-num-R",
										0
									],
									"order": 0,
									"source": [
										"bal-scale-R",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"bal-sig-R",
										0
									],
									"order": 1,
									"source": [
										"bal-scale-R",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"bal-smooth-L",
										0
									],
									"source": [
										"bal-sig-L",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"bal-smooth-R",
										0
									],
									"source": [
										"bal-sig-R",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-104",
										0
									],
									"source": [
										"bal-smooth-L",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-105",
										0
									],
									"source": [
										"bal-smooth-R",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						583.8730491399765,
						855.5555688142776,
						185.06844866275787,
						22.0
					],
					"text": "p Balance Flügel bei Wendungen"
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-101",
					"linecount": 2,
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										70.0,
										55.0,
										530.0,
										20.0
									],
									"text": "ManeuverSpeed -> Equal-Power-Mischung zwischen Pink Noise und White Noise"
								}
							},
							{
								"box": {
									"id": "description",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										70.0,
										80.0,
										560.0,
										33.0
									],
									"text": "Langsam = mehr Pink Noise; schnell = mehr White Noise. Die gekoppelten Gainwerte vermeiden die zufälligen Lautstärkesprünge des bisherigen Randommix."
								}
							},
							{
								"box": {
									"id": "speed-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										70.0,
										140.0,
										160.0,
										22.0
									],
									"text": "receive #1_ManeuverSpeed"
								}
							},
							{
								"box": {
									"id": "speed-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										70.0,
										175.0,
										72.0,
										22.0
									],
									"text": "clip 0. 1.5"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "speed-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										155.0,
										175.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "speed-history",
									"maxclass": "multislider",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"parameter_enable": 0,
									"patching_rect": [
										255.0,
										135.0,
										250.0,
										72.0
									],
									"setminmax": [
										0.0,
										1.5
									],
									"setstyle": 3
								}
							},
							{
								"box": {
									"id": "normalize",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										70.0,
										225.0,
										38.0,
										22.0
									],
									"text": "/ 1.5"
								}
							},
							{
								"box": {
									"id": "ramp-message",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										70.0,
										260.0,
										50.0,
										22.0
									],
									"text": "$1 150"
								}
							},
							{
								"box": {
									"id": "mix-line",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										70.0,
										295.0,
										43.0,
										22.0
									],
									"text": "line 0."
								}
							},
							{
								"box": {
									"format": 6,
									"id": "mix-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										135.0,
										295.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "pink-gain",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										70.0,
										345.0,
										185.0,
										22.0
									],
									"text": "expr cos($f1 * 1.57079632679)"
								}
							},
							{
								"box": {
									"id": "white-gain",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										360.0,
										345.0,
										185.0,
										22.0
									],
									"text": "expr sin($f1 * 1.57079632679)"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "pink-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										93.0,
										384.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "pink-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										183.0,
										386.0,
										90.0,
										20.0
									],
									"text": "Pink Gain"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "white-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										393.0,
										389.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "white-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										483.0,
										391.0,
										130.0,
										20.0
									],
									"text": "White/Noise Gain"
								}
							},
							{
								"box": {
									"comment": "Gain fuer pink~",
									"id": "pink-out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										70.0,
										435.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "Gain fuer noise~",
									"id": "white-out",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										360.0,
										435.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "mix-init-zero",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										255.0,
										260.0,
										78.0,
										22.0
									],
									"text": "loadmess 0."
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"mix-display",
										0
									],
									"order": 1,
									"source": [
										"mix-line",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"pink-gain",
										0
									],
									"order": 2,
									"source": [
										"mix-line",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"white-gain",
										0
									],
									"order": 0,
									"source": [
										"mix-line",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"ramp-message",
										0
									],
									"source": [
										"normalize",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"pink-display",
										0
									],
									"order": 0,
									"source": [
										"pink-gain",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"pink-out",
										0
									],
									"order": 1,
									"source": [
										"pink-gain",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"mix-line",
										0
									],
									"source": [
										"ramp-message",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"normalize",
										0
									],
									"order": 2,
									"source": [
										"speed-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"speed-display",
										0
									],
									"order": 1,
									"source": [
										"speed-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"speed-history",
										0
									],
									"order": 0,
									"source": [
										"speed-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"speed-clip",
										0
									],
									"source": [
										"speed-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"white-display",
										0
									],
									"order": 0,
									"source": [
										"white-gain",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"white-out",
										0
									],
									"order": 1,
									"source": [
										"white-gain",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"mix-init-zero",
										0
									],
									"destination": [
										"mix-line",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						1069.8412864208221,
						484.1269916296005,
						116.66081446409225,
						35.0
					],
					"text": "p ManeuverSpeed -> Mix Pinktowhite"
				}
			},
			{
				"box": {
					"columns": 2,
					"id": "obj-98",
					"maxclass": "matrixctrl",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"list",
						"list"
					],
					"parameter_enable": 0,
					"patching_rect": [
						721.9512367248535,
						1147.5610029697418,
						50.5882374048233,
						51.764708042144775
					],
					"rows": 2
				}
			},
			{
				"box": {
					"id": "obj-97",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 3,
					"outlettype": [
						"signal",
						"signal",
						""
					],
					"patching_rect": [
						721.9512367248535,
						1220.731736421585,
						157.0,
						22.0
					],
					"text": "matrix~ 2 2 @ramptime 100"
				}
			},
			{
				"box": {
					"id": "obj-96",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-28",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										123.80952310562134,
										234.5238082408905,
										117.0,
										20.0
									],
									"style": "helpfile_label",
									"text": "elapsed time (ms)"
								}
							},
							{
								"box": {
									"bubble": 1,
									"fontname": "Arial",
									"fontsize": 13.0,
									"id": "obj-1",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										104.76190423965454,
										151.19047570228577,
										142.0,
										25.0
									],
									"text": "start/stop recording"
								}
							},
							{
								"box": {
									"fontname": "Arial",
									"fontsize": 13.0,
									"id": "obj-4",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										188.09523725509644,
										225.0,
										23.0
									],
									"text": "sfrecord~ 1 @bitdepth 24 @nchans 1"
								}
							},
							{
								"box": {
									"fontface": 0,
									"fontname": "Arial",
									"fontsize": 13.0,
									"id": "obj-5",
									"maxclass": "number~",
									"mode": 2,
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"float"
									],
									"patching_rect": [
										50.0,
										233.33333206176758,
										72.8476881980896,
										23.0
									],
									"sig": 0.0
								}
							},
							{
								"box": {
									"fontname": "Arial",
									"fontsize": 13.0,
									"id": "obj-24",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										74.99999976158142,
										100.0,
										73.0,
										23.0
									],
									"text": "open wave"
								}
							},
							{
								"box": {
									"id": "obj-7",
									"maxclass": "toggle",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"parameter_enable": 0,
									"patching_rect": [
										74.99999976158142,
										151.19047570228577,
										24.0,
										24.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-95",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.00003082415003,
										40.00001001358032,
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
										"obj-4",
										0
									],
									"midpoints": [
										84.49999976158142,
										123.03016704320908,
										59.5,
										123.03016704320908
									],
									"source": [
										"obj-24",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										0
									],
									"source": [
										"obj-4",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-4",
										0
									],
									"source": [
										"obj-7",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-4",
										0
									],
									"source": [
										"obj-95",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						601.1592713296413,
						1429.0,
						57.0,
						22.0
					],
					"text": "p Record"
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-94",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										60.0,
										45.0,
										520.0,
										20.0
									],
									"text": "ManeuverAccel -> kontinuierliche Modulation des Flutter-Filter-Lowcuts"
								}
							},
							{
								"box": {
									"id": "description",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										60.0,
										70.0,
										571.0,
										33.0
									],
									"text": "Kein Sample-and-Hold: Jede Beschleunigungsänderung bewegt den vorhandenen Butterworth-Filter. 100 ms Glättung verhindert harte Parametersprünge."
								}
							},
							{
								"box": {
									"id": "accel-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										60.0,
										130.0,
										160.0,
										22.0
									],
									"text": "receive #1_ManeuverAccel"
								}
							},
							{
								"box": {
									"id": "accel-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										60.0,
										165.0,
										82.0,
										22.0
									],
									"text": "clip -3.5 3.5"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "accel-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										60.0,
										200.0,
										82.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "accel-history",
									"maxclass": "multislider",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"parameter_enable": 0,
									"patching_rect": [
										165.0,
										160.0,
										250.0,
										72.0
									],
									"setminmax": [
										-3.5,
										3.5
									],
									"setstyle": 3
								}
							},
							{
								"box": {
									"id": "freq-map",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										60.0,
										260.0,
										235.0,
										22.0
									],
									"text": "expr 500. * pow(10.\\, (($f1 + 3.5) / 7.))"
								}
							},
							{
								"box": {
									"id": "ramp-message",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										60.0,
										295.0,
										45.0,
										22.0
									],
									"text": "$1 250"
								}
							},
							{
								"box": {
									"id": "freq-line",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										60.0,
										330.0,
										58.0,
										22.0
									],
									"text": "line 500."
								}
							},
							{
								"box": {
									"format": 6,
									"id": "freq-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										140.0,
										330.0,
										88.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "freq-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										240.0,
										332.0,
										165.0,
										20.0
									],
									"text": "Lowcut Hz (500-5000)"
								}
							},
							{
								"box": {
									"id": "init",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										435.0,
										295.0,
										91.0,
										22.0
									],
									"text": "loadmess 500."
								}
							},
							{
								"box": {
									"comment": "Lowcut-Frequenz fuer MS_Filterdesign",
									"id": "out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										60.0,
										380.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "range-note",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										125.0,
										385.0,
										550.0,
										20.0
									],
									"text": "Capture-kalibriert: -3.5 m/s2 -> 500 Hz | 0 -> ca. 1581 Hz | +3.5 m/s2 -> 5000 Hz"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"accel-display",
										0
									],
									"source": [
										"accel-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"accel-history",
										0
									],
									"order": 0,
									"source": [
										"accel-display",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"freq-map",
										0
									],
									"order": 1,
									"source": [
										"accel-display",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"accel-clip",
										0
									],
									"source": [
										"accel-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"freq-display",
										0
									],
									"order": 0,
									"source": [
										"freq-line",
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
									"order": 1,
									"source": [
										"freq-line",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"ramp-message",
										0
									],
									"source": [
										"freq-map",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"freq-line",
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
										"freq-line",
										0
									],
									"source": [
										"ramp-message",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						1869.8412988185883,
						531.7460399866104,
						156.0,
						22.0
					],
					"text": "p Acell_Maneuver ->Lowcut"
				}
			},
			{
				"box": {
					"id": "speed-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1198.4127169847488,
						1138.0952557325363,
						190.0,
						20.0
					],
					"text": "ManeuverSpeed · 0–6 m/s"
				}
			},
			{
				"box": {
					"id": "speed-recv",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1198.4127169847488,
						1169.841287970543,
						160.0,
						22.0
					],
					"text": "receive #1_ManeuverSpeed"
				}
			},
			{
				"box": {
					"id": "speed-view",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						1198.4127169847488,
						1203.1746218204498,
						196.0,
						92.0
					],
					"setminmax": [
						0.0,
						6.0
					],
					"setstyle": 3
				}
			},
			{
				"box": {
					"id": "accel-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1415.873037815094,
						1138.0952557325363,
						220.0,
						20.0
					],
					"text": "ManeuverAccel · −30 bis +30 m/s²"
				}
			},
			{
				"box": {
					"id": "accel-recv",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1643.75,
						1354.6875,
						155.0,
						22.0
					],
					"text": "receive #1_ManeuverAccel"
				}
			},
			{
				"box": {
					"id": "accel-view",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						1643.75,
						1381.25,
						196.0,
						92.0
					],
					"setminmax": [
						-30.0,
						30.0
					],
					"setstyle": 3
				}
			},
			{
				"box": {
					"id": "maneuver-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1628.5714538097382,
						1138.0952557325363,
						150.0,
						20.0
					],
					"text": "Maneuver · 0–1"
				}
			},
			{
				"box": {
					"id": "maneuver-recv",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1628.5714538097382,
						1169.841287970543,
						125.0,
						22.0
					],
					"text": "receive #1_Maneuver"
				}
			},
			{
				"box": {
					"id": "maneuver-view",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						1628.5714538097382,
						1203.1746218204498,
						196.0,
						92.0
					],
					"setminmax": [
						0.0,
						1.0
					],
					"setstyle": 3
				}
			},
			{
				"box": {
					"id": "turn-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1198.4127169847488,
						1323.8095443248749,
						160.0,
						20.0
					],
					"text": "ManeuverTurn · 0–1"
				}
			},
			{
				"box": {
					"id": "obj-69",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1198.4127169847488,
						1352.3809733390808,
						150.0,
						22.0
					],
					"text": "receive #1_ManeuverTurn"
				}
			},
			{
				"box": {
					"id": "turn-view",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						1198.4127169847488,
						1388.8889104127884,
						196.0,
						92.0
					],
					"setminmax": [
						0.0,
						1.0
					],
					"setstyle": 3
				}
			},
			{
				"box": {
					"id": "intensity-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1415.873037815094,
						1323.8095443248749,
						210.0,
						20.0
					],
					"text": "ManeuverAccelIntensity · 0–1"
				}
			},
			{
				"box": {
					"id": "intensity-recv",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1415.873037815094,
						1352.3809733390808,
						200.0,
						22.0
					],
					"text": "receive #1_ManeuverAccelIntensity"
				}
			},
			{
				"box": {
					"id": "intensity-view",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						1415.873037815094,
						1388.8889104127884,
						196.0,
						92.0
					],
					"setminmax": [
						0.0,
						1.0
					],
					"setstyle": 3
				}
			},
			{
				"box": {
					"id": "note",
					"linecount": 6,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1643.75,
						1475.0,
						279.0,
						87.0
					],
					"text": "\nAccel: negative Werte = Abbremsen, positive Werte = Beschleunigen.\nWenn Accel häufig oben oder unten anschlägt, den symmetrischen Bereich gemeinsam vergrößern."
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-45",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1319.047639489174,
						541.2698496580124,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-43",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										55.0,
										40.0,
										470.0,
										20.0
									],
									"text": "ManeuverAccel: Betrag beim Flatter-Trigger abtasten und als Pulsbreite halten"
								}
							},
							{
								"box": {
									"id": "accel-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										55.0,
										80.0,
										160.0,
										22.0
									],
									"text": "receive #1_ManeuverAccel"
								}
							},
							{
								"box": {
									"id": "abs",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										55.0,
										115.0,
										45.0,
										22.0
									],
									"text": "abs 0."
								}
							},
							{
								"box": {
									"id": "clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										55.0,
										150.0,
										75.0,
										22.0
									],
									"text": "clip 3. 30."
								}
							},
							{
								"box": {
									"format": 6,
									"id": "accel-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										55.0,
										185.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "accel-history",
									"maxclass": "multislider",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"parameter_enable": 0,
									"patching_rect": [
										160.0,
										150.0,
										250.0,
										82.0
									],
									"setminmax": [
										0.0,
										30.0
									],
									"setstyle": 3
								}
							},
							{
								"box": {
									"id": "accel-store",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										55.0,
										260.0,
										38.0,
										22.0
									],
									"text": "f 3."
								}
							},
							{
								"box": {
									"id": "trigger-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										160.0,
										260.0,
										140.0,
										22.0
									],
									"text": "receive #1_duckingon"
								}
							},
							{
								"box": {
									"id": "trigger-display",
									"maxclass": "button",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										315.0,
										259.0,
										24.0,
										24.0
									]
								}
							},
							{
								"box": {
									"id": "width-scale",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										55.0,
										300.0,
										120.0,
										22.0
									],
									"text": "scale 3. 30. 0.5 0.1"
								}
							},
							{
								"box": {
									"id": "ramp-message",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										55.0,
										330.0,
										43.0,
										22.0
									],
									"text": "$1 30"
								}
							},
							{
								"box": {
									"id": "width-line",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										55.0,
										360.0,
										52.0,
										22.0
									],
									"text": "line 0.5"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "held-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										127.0,
										360.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "init",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230.0,
										330.0,
										87.0,
										22.0
									],
									"text": "loadmess 0.5"
								}
							},
							{
								"box": {
									"comment": "gehaltene Pulsbreite 0.5–0.1",
									"id": "out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										55.0,
										405.0,
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
										"accel-display",
										0
									],
									"source": [
										"abs",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"accel-history",
										0
									],
									"order": 0,
									"source": [
										"accel-display",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"clip",
										0
									],
									"order": 1,
									"source": [
										"accel-display",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"abs",
										0
									],
									"source": [
										"accel-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"width-scale",
										0
									],
									"source": [
										"accel-store",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"accel-store",
										1
									],
									"source": [
										"clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"width-line",
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
										"width-line",
										0
									],
									"source": [
										"ramp-message",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"accel-store",
										0
									],
									"source": [
										"trigger-display",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"trigger-display",
										0
									],
									"source": [
										"trigger-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"held-display",
										0
									],
									"order": 0,
									"source": [
										"width-line",
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
									"order": 1,
									"source": [
										"width-line",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"ramp-message",
										0
									],
									"source": [
										"width-scale",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						1319.047639489174,
						477.7777851819992,
						138.0,
						22.0
					],
					"text": "p Maneuver Acell -> PW"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-32",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						466.09923791885376,
						459.6269916296005,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "obj-30",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						466.09923791885376,
						430.6269916296005,
						29.5,
						22.0
					],
					"text": "+ 1."
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-29",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						518.0992379188538,
						398.6269916296005,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "obj-16",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						518.0992379188538,
						370.6269916296005,
						29.5,
						22.0
					],
					"text": "* 6."
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-42",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1223.8095427751541,
						541.2698496580124,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-40",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
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
							542.0,
							171.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										85.0,
										70.0,
										460.0,
										20.0
									],
									"text": "ManeuverTurn: laufende Kurvenstaerke als stabile Flutter-Pulsfrequenz"
								}
							},
							{
								"box": {
									"id": "explanation",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										85.0,
										95.0,
										470.0,
										33.0
									],
									"text": "Kein Trigger-Sampling: slide erzeugt aus den kurzen Turn-Spitzen einen schnellen Anstieg und einen langsameren Ruecklauf. Dadurch entstehen echte Zwischenwerte."
								}
							},
							{
								"box": {
									"id": "turn-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										85.0,
										150.0,
										160.0,
										22.0
									],
									"text": "receive #1_ManeuverTurn"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "raw-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										85.0,
										185.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "raw-history",
									"maxclass": "multislider",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"parameter_enable": 0,
									"patching_rect": [
										190.0,
										175.0,
										250.0,
										65.0
									],
									"setminmax": [
										0.0,
										1.0
									],
									"setstyle": 3
								}
							},
							{
								"box": {
									"id": "turn-smooth",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										85.0,
										255.0,
										70.0,
										22.0
									],
									"text": "slide 3 30"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "smooth-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										175.0,
										255.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "smooth-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270.0,
										257.0,
										180.0,
										20.0
									],
									"text": "geglättete Kurvenstärke"
								}
							},
							{
								"box": {
									"id": "turn-scale",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										85.0,
										300.0,
										104.0,
										22.0
									],
									"text": "scale 0. 1. 15. 90."
								}
							},
							{
								"box": {
									"id": "ramp-message",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										85.0,
										335.0,
										43.0,
										22.0
									],
									"text": "$1 30"
								}
							},
							{
								"box": {
									"id": "turn-line",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										85.0,
										370.0,
										50.0,
										22.0
									],
									"text": "line 15."
								}
							},
							{
								"box": {
									"format": 6,
									"id": "freq-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										155.0,
										370.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "freq-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										250.0,
										372.0,
										220.0,
										20.0
									],
									"text": "Flutter-Pulsfrequenz 15–90 Hz"
								}
							},
							{
								"box": {
									"id": "init",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										345.0,
										335.0,
										82.0,
										22.0
									],
									"text": "loadmess 15."
								}
							},
							{
								"box": {
									"comment": "kontinuierliche Pulsfrequenz 15–90 Hz",
									"id": "out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										85.0,
										420.0,
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
										"turn-line",
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
										"turn-line",
										0
									],
									"source": [
										"ramp-message",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"raw-history",
										0
									],
									"order": 0,
									"source": [
										"raw-display",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"turn-smooth",
										0
									],
									"order": 1,
									"source": [
										"raw-display",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"freq-display",
										0
									],
									"order": 0,
									"source": [
										"turn-line",
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
									"order": 1,
									"source": [
										"turn-line",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"raw-display",
										0
									],
									"source": [
										"turn-recv",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"ramp-message",
										0
									],
									"source": [
										"turn-scale",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"smooth-display",
										0
									],
									"order": 0,
									"source": [
										"turn-smooth",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"turn-scale",
										0
									],
									"order": 1,
									"source": [
										"turn-smooth",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						1223.8095427751541,
						511.1111190319061,
						165.0,
						22.0
					],
					"text": "p Manöver Turn -> FreqPulse"
				}
			},
			{
				"box": {
					"id": "obj-162",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1353.9682749509811,
						614.2857238054276,
						113.0,
						22.0
					],
					"text": "send #1_duckingon"
				}
			},
			{
				"box": {
					"id": "obj-161",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1487.3016103506088,
						847.619060754776,
						112.0,
						22.0
					],
					"text": "send #1_duckingoff"
				}
			},
			{
				"box": {
					"id": "obj-160",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1223.8095427751541,
						484.1269916296005,
						81.03448700904846,
						20.0
					],
					"text": "FLUTTER"
				}
			},
			{
				"box": {
					"id": "obj-137",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1473.0158958435059,
						250.79365468025208,
						150.0,
						20.0
					],
					"text": "ENVELOPE"
				}
			},
			{
				"box": {
					"id": "obj-136",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1060.3174767494202,
						528.5714367628098,
						123.75301092863083,
						20.0
					],
					"text": "SOUND"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-133",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1676.190502166748,
						774.6031866073608,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"bgmode": 0,
					"border": 0,
					"clickthrough": 0,
					"enablehscroll": 0,
					"enablevscroll": 0,
					"id": "obj-131",
					"lockeddragscroll": 0,
					"lockedsize": 0,
					"maxclass": "bpatcher",
					"name": "MS_RandomEnvelopes.maxpat",
					"numinlets": 1,
					"numoutlets": 2,
					"offset": [
						0.0,
						0.0
					],
					"outlettype": [
						"",
						""
					],
					"patching_rect": [
						1476.1904990673065,
						630.1587399244308,
						218.91891878843307,
						136.93693685531616
					],
					"viewvisibility": 1
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "obj-130",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
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
							59.0,
							111.0,
							1344.0,
							900.0
						],
						"boxes": [
							{
								"box": {
									"id": "title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										40.0,
										25.0,
										500.0,
										20.0
									],
									"text": "ManeuverSpeed -> bewegungsabhängige Lautstärke des Flutter-Klangs"
								}
							},
							{
								"box": {
									"id": "description",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										40.0,
										50.0,
										550.0,
										33.0
									],
									"text": "Ersetzt die zufällige Transferkurve. Langsame Bewegung = leiseres Flutter; schnelle Bewegung = lauteres Flutter. Die vorhandene Flutter-Hüllkurve bleibt erhalten."
								}
							},
							{
								"box": {
									"id": "speed-recv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										40.0,
										110.0,
										160.0,
										22.0
									],
									"text": "receive #1_ManeuverSpeed"
								}
							},
							{
								"box": {
									"id": "speed-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										40.0,
										145.0,
										72.0,
										22.0
									],
									"text": "clip 0. 1.5"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "speed-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										130.0,
										145.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "speed-history",
									"maxclass": "multislider",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"parameter_enable": 0,
									"patching_rect": [
										230.0,
										105.0,
										250.0,
										72.0
									],
									"setminmax": [
										0.0,
										1.5
									],
									"setstyle": 3
								}
							},
							{
								"box": {
									"id": "amp-map",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										40.0,
										205.0,
										204.0,
										22.0
									],
									"text": "expr 0.18 + 0.72 * pow($f1 / 1.5\\, 0.7)"
								}
							},
							{
								"box": {
									"id": "ramp-message",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										40.0,
										245.0,
										50.0,
										22.0
									],
									"text": "$1 150"
								}
							},
							{
								"box": {
									"id": "amp-line",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										40.0,
										280.0,
										54.0,
										22.0
									],
									"text": "line 0.18"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "amp-display",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										71.0,
										315.0,
										80.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "amp-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										215.0,
										282.0,
										180.0,
										20.0
									],
									"text": "Flutter-Gain 0,18–0,9"
								}
							},
							{
								"box": {
									"id": "init",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										410.0,
										245.0,
										87.0,
										22.0
									],
									"text": "loadmess 0.18"
								}
							},
							{
								"box": {
									"comment": "Gain für vorhandenes *~ im Flutter-Zweig",
									"id": "out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										40.0,
										345.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "connection-note",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										90.0,
										350.0,
										509.0,
										20.0
									],
									"text": "Ausgang an den rechten Eingang des vorhandenen *~ nach der Noise-Mischung anschließen."
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"amp-display",
										0
									],
									"order": 0,
									"source": [
										"amp-line",
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
									"order": 1,
									"source": [
										"amp-line",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"ramp-message",
										0
									],
									"source": [
										"amp-map",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"amp-line",
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
										"amp-line",
										0
									],
									"source": [
										"ramp-message",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"amp-map",
										0
									],
									"order": 2,
									"source": [
										"speed-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"speed-display",
										0
									],
									"order": 1,
									"source": [
										"speed-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"speed-history",
										0
									],
									"order": 0,
									"source": [
										"speed-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"speed-clip",
										0
									],
									"source": [
										"speed-recv",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						1230.1587492227554,
						688.888899564743,
						149.0,
						22.0
					],
					"text": "p maneuverspeed -> Ampl"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-125",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1230.1587492227554,
						725.3968366384506,
						59.54198884963989,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "obj-90",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"bang",
						""
					],
					"patching_rect": [
						1476.1904990673065,
						549.206357717514,
						34.0,
						22.0
					],
					"text": "sel 1"
				}
			},
			{
				"box": {
					"id": "obj-89",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						1476.1904990673065,
						519.0476270914078,
						32.0,
						22.0
					],
					"text": "< 50"
				}
			},
			{
				"box": {
					"id": "obj-88",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1476.1904990673065,
						490.47619807720184,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "obj-86",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1476.1904990673065,
						466.6666738986969,
						129.0,
						22.0
					],
					"text": "random @range 0 101"
				}
			},
			{
				"box": {
					"id": "obj-57",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1211.1111298799515,
						998.4127138853073,
						60.0,
						22.0
					],
					"text": "cascade~"
				}
			},
			{
				"box": {
					"id": "obj-59",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"int",
						"int"
					],
					"patching_rect": [
						1749.2063763141632,
						560.3174690008163,
						59.0,
						22.0
					],
					"text": "unpack i i"
				}
			},
			{
				"box": {
					"id": "obj-61",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1749.2063763141632,
						531.7460399866104,
						113.0,
						22.0
					],
					"text": "loadmess 20 10000"
				}
			},
			{
				"box": {
					"id": "obj-63",
					"maxclass": "number",
					"maximum": 10000,
					"minimum": 100,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1804.7619327306747,
						596.8254060745239,
						50.0,
						22.0
					],
					"presentation": 1,
					"presentation_rect": [
						1093.4409071207047,
						189.13979196548462,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-64",
					"maxclass": "flonum",
					"maximum": 5000.0,
					"minimum": 20.0,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1749.2063763141632,
						596.8254060745239,
						50.0,
						22.0
					],
					"presentation": 1,
					"presentation_rect": [
						1036.451657295227,
						189.13979196548462,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "obj-66",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1749.2063763141632,
						630.1587399244308,
						40.0,
						22.0
					],
					"text": "pak i i"
				}
			},
			{
				"box": {
					"bgmode": 0,
					"border": 0,
					"clickthrough": 0,
					"enablehscroll": 0,
					"enablevscroll": 0,
					"id": "obj-68",
					"lockeddragscroll": 0,
					"lockedsize": 0,
					"maxclass": "bpatcher",
					"name": "MS_Filterdesign.maxpat",
					"numinlets": 1,
					"numoutlets": 1,
					"offset": [
						0.0,
						0.0
					],
					"outlettype": [
						"dictionary"
					],
					"patching_rect": [
						1752.3809795379639,
						663.4920737743378,
						350.5882499217987,
						321.1764839887619
					],
					"presentation": 1,
					"presentation_rect": [
						1035.3763884305954,
						213.87097585201263,
						350.5882499217987,
						321.1764839887619
					],
					"viewvisibility": 1
				}
			},
			{
				"box": {
					"id": "obj-34",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1214.2857331037521,
						760.3174721002579,
						34.0,
						22.0
					],
					"text": "*~ 1."
				}
			},
			{
				"box": {
					"id": "obj-18",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1487.3016103506088,
						811.1111236810684,
						24.0,
						24.0
					]
				}
			},
			{
				"box": {
					"id": "obj-9",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						536.5853786468506,
						1135.7993581295013,
						29.5,
						22.0
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "obj-8",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1476.1904990673065,
						306.3492110967636,
						80.0,
						22.0
					],
					"text": "speedlim 100"
				}
			},
			{
				"box": {
					"id": "obj-80",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1103.174620270729,
						641.2698512077332,
						36.0,
						22.0
					],
					"text": "+~ 1."
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-78",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1069.8412864208221,
						560.3174690008163,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-76",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1166.6666847467422,
						560.3174690008163,
						50.0,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "obj-74",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1122.222239613533,
						601.5873109102249,
						40.0,
						22.0
					],
					"text": "*~ 0.5"
				}
			},
			{
				"box": {
					"id": "obj-73",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1071.4285880327225,
						601.5873109102249,
						40.0,
						22.0
					],
					"text": "*~ 1.3"
				}
			},
			{
				"box": {
					"id": "obj-62",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"bang"
					],
					"patching_rect": [
						1471.4285942316055,
						779.3650914430618,
						34.0,
						22.0
					],
					"text": "line~"
				}
			},
			{
				"box": {
					"id": "obj-60",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1214.2857331037521,
						842.857155919075,
						29.5,
						22.0
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "obj-58",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						718.2927000522614,
						1286.585396528244,
						29.5,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-53",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1223.8095427751541,
						604.7619141340256,
						43.0,
						22.0
					],
					"text": "+~ 0.5"
				}
			},
			{
				"box": {
					"id": "obj-50",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1223.8095427751541,
						573.015881896019,
						76.0,
						22.0
					],
					"text": "rect~ 20. 0.5"
				}
			},
			{
				"box": {
					"id": "obj-49",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1103.174620270729,
						674.6031850576401,
						34.0,
						22.0
					],
					"text": "*~ 1."
				}
			},
			{
				"box": {
					"id": "obj-48",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1122.222239613533,
						560.3174690008163,
						44.0,
						22.0
					],
					"text": "noise~"
				}
			},
			{
				"box": {
					"id": "obj-47",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						1025.396841287613,
						560.3174690008163,
						38.0,
						22.0
					],
					"text": "pink~"
				}
			},
			{
				"box": {
					"id": "mv-recv",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1476.1904990673065,
						274.603178858757,
						205.0,
						22.0
					],
					"text": "receive #1_Maneuver"
				}
			},
			{
				"box": {
					"id": "high-thresh",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						1476.1904990673065,
						338.0952433347702,
						36.0,
						22.0
					],
					"text": "> 0.9"
				}
			},
			{
				"box": {
					"id": "high-change",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						1476.1904990673065,
						373.01587879657745,
						48.0,
						22.0
					],
					"text": "change"
				}
			},
			{
				"box": {
					"id": "high-sel",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"bang",
						""
					],
					"patching_rect": [
						1476.1904990673065,
						406.3492126464844,
						34.0,
						22.0
					],
					"text": "sel 1"
				}
			},
			{
				"box": {
					"id": "low-thresh",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						1539.6825635433197,
						338.0952433347702,
						42.0,
						22.0
					],
					"text": "< 0.15"
				}
			},
			{
				"box": {
					"id": "low-change",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						1539.6825635433197,
						373.01587879657745,
						48.0,
						22.0
					],
					"text": "change"
				}
			},
			{
				"box": {
					"id": "low-sel",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"bang",
						""
					],
					"patching_rect": [
						1539.6825635433197,
						406.3492126464844,
						34.0,
						22.0
					],
					"text": "sel 1"
				}
			},
			{
				"box": {
					"id": "onebang",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"bang",
						"bang"
					],
					"patching_rect": [
						1476.1904990673065,
						434.9206416606903,
						70.0,
						22.0
					],
					"text": "onebang 1"
				}
			},
			{
				"box": {
					"id": "out-button",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1476.1904990673065,
						580.9523899555206,
						24.0,
						24.0
					]
				}
			},
			{
				"box": {
					"fontsize": 19.095570882156682,
					"id": "mv-title",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1404.7619265317917,
						1098.412715435028,
						300.0,
						28.0
					],
					"text": "MANEUVER DATA / CONTROL"
				}
			},
			{
				"box": {
					"id": "obj-37",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						713.7930915355682,
						1429.0,
						40.0,
						22.0
					],
					"text": "*~ 0.5"
				}
			},
			{
				"box": {
					"id": "obj-17",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						563.4881281852722,
						714.0,
						29.5,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "freq-base",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						434.09923791885376,
						546.6269916296005,
						49.0,
						22.0
					],
					"text": "+~ 220."
				}
			},
			{
				"box": {
					"id": "freq2-sum",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						766.4127345085144,
						703.174614071846,
						40.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "wing1",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							59.0,
							104.0,
							600.0,
							930.0
						],
						"description": "Farnell housefly wing",
						"digest": "Max translation of Designing Sound Fig. 50.13",
						"tags": "fly insect Farnell",
						"boxes": [
							{
								"box": {
									"fontsize": 13.0,
									"id": "fw-title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										12.0,
										430.0,
										21.0
									],
									"text": "Farnell fly wing — Max translation of Designing Sound Fig. 50.13"
								}
							},
							{
								"box": {
									"comment": "wing resonance 0..100",
									"id": "fw-res-in",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										55.0,
										55.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "wing frequency Hz",
									"id": "fw-freq-in",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										325.0,
										55.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "fw-div100",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										55.0,
										110.0,
										54.0,
										22.0
									],
									"text": "/~ 100."
								}
							},
							{
								"box": {
									"id": "fw-phasor",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										325.0,
										110.0,
										76.0,
										22.0
									],
									"text": "phasor~ 756"
								}
							},
							{
								"box": {
									"id": "fw-mul02",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										235.0,
										155.0,
										52.0,
										22.0
									],
									"text": "*~ 0.2"
								}
							},
							{
								"box": {
									"id": "fw-mulneg1",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										350.0,
										155.0,
										48.0,
										22.0
									],
									"text": "*~ -1"
								}
							},
							{
								"box": {
									"id": "fw-add1",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										350.0,
										190.0,
										42.0,
										22.0
									],
									"text": "+~ 1"
								}
							},
							{
								"box": {
									"id": "fw-minA",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										220.0,
										225.0,
										76.0,
										22.0
									],
									"text": "minimum~"
								}
							},
							{
								"box": {
									"id": "fw-minB",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										340.0,
										225.0,
										76.0,
										22.0
									],
									"text": "minimum~"
								}
							},
							{
								"box": {
									"id": "fw-minC",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										280.0,
										265.0,
										76.0,
										22.0
									],
									"text": "minimum~"
								}
							},
							{
								"box": {
									"id": "fw-mul6",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										290.0,
										300.0,
										46.0,
										22.0
									],
									"text": "*~ 6"
								}
							},
							{
								"box": {
									"id": "fw-sub05",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										288.0,
										335.0,
										54.0,
										22.0
									],
									"text": "-~ 0.5"
								}
							},
							{
								"box": {
									"id": "fw-mul2shape",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										292.0,
										370.0,
										46.0,
										22.0
									],
									"text": "*~ 2"
								}
							},
							{
								"box": {
									"id": "fw-down",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										190.0,
										415.0,
										86.0,
										22.0
									],
									"text": "minimum~ 0"
								}
							},
							{
								"box": {
									"id": "fw-up",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										330.0,
										415.0,
										90.0,
										22.0
									],
									"text": "maximum~ 0"
								}
							},
							{
								"box": {
									"id": "fw-resmul",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										160.0,
										465.0,
										40.0,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "fw-wrap",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										160.0,
										500.0,
										82.0,
										22.0
									],
									"text": "pong~ 1 0 1"
								}
							},
							{
								"box": {
									"id": "fw-cos",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										160.0,
										535.0,
										42.0,
										22.0
									],
									"text": "cos~"
								}
							},
							{
								"box": {
									"id": "fw-ovscale",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										160.0,
										570.0,
										52.0,
										22.0
									],
									"text": "*~ 0.5"
								}
							},
							{
								"box": {
									"id": "fw-downsum",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										205.0,
										610.0,
										40.0,
										22.0
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fw-upsquare",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										345.0,
										465.0,
										40.0,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "fw-upquartic",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										345.0,
										500.0,
										40.0,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "fw-upscale",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										345.0,
										535.0,
										46.0,
										22.0
									],
									"text": "*~ 2"
								}
							},
							{
								"box": {
									"id": "fw-sum",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										275.0,
										655.0,
										40.0,
										22.0
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fw-onepole",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										300.0,
										700.0,
										90.0,
										22.0
									],
									"text": "onepole~ 700"
								}
							},
							{
								"box": {
									"id": "fw-highpass-sub",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										255.0,
										740.0,
										40.0,
										22.0
									],
									"text": "-~"
								}
							},
							{
								"box": {
									"id": "fw-outscale",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										255.0,
										775.0,
										52.0,
										22.0
									],
									"text": "*~ 0.5"
								}
							},
							{
								"box": {
									"comment": "mono fly-wing signal",
									"id": "fw-out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										260.0,
										825.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "fw-note",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										865.0,
										520.0,
										33.0
									],
									"text": "High-pass stage follows the established Max translation: original signal minus onepole~ 700 low-pass."
								}
							},
							{
								"box": {
									"comment": "spectral distance control Hz",
									"id": "fw-tone-in",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										470.0,
										55.0,
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
										"fw-minA",
										1
									],
									"order": 1,
									"source": [
										"fw-add1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-minB",
										1
									],
									"order": 0,
									"source": [
										"fw-add1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-ovscale",
										0
									],
									"source": [
										"fw-cos",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-resmul",
										0
									],
									"source": [
										"fw-div100",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-downsum",
										0
									],
									"order": 0,
									"source": [
										"fw-down",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-resmul",
										1
									],
									"order": 1,
									"source": [
										"fw-down",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-sum",
										0
									],
									"source": [
										"fw-downsum",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-phasor",
										0
									],
									"source": [
										"fw-freq-in",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-outscale",
										0
									],
									"source": [
										"fw-highpass-sub",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-minC",
										0
									],
									"source": [
										"fw-minA",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-minC",
										1
									],
									"source": [
										"fw-minB",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-mul6",
										0
									],
									"source": [
										"fw-minC",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-minA",
										0
									],
									"source": [
										"fw-mul02",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-down",
										0
									],
									"order": 1,
									"source": [
										"fw-mul2shape",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-up",
										0
									],
									"order": 0,
									"source": [
										"fw-mul2shape",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-sub05",
										0
									],
									"source": [
										"fw-mul6",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-add1",
										0
									],
									"source": [
										"fw-mulneg1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-highpass-sub",
										1
									],
									"source": [
										"fw-onepole",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-out",
										0
									],
									"source": [
										"fw-outscale",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-downsum",
										1
									],
									"source": [
										"fw-ovscale",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-minB",
										0
									],
									"order": 1,
									"source": [
										"fw-phasor",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-mul02",
										0
									],
									"order": 2,
									"source": [
										"fw-phasor",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-mulneg1",
										0
									],
									"order": 0,
									"source": [
										"fw-phasor",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-div100",
										0
									],
									"source": [
										"fw-res-in",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-wrap",
										0
									],
									"source": [
										"fw-resmul",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-mul2shape",
										0
									],
									"source": [
										"fw-sub05",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-highpass-sub",
										0
									],
									"order": 1,
									"source": [
										"fw-sum",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-onepole",
										0
									],
									"order": 0,
									"source": [
										"fw-sum",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-onepole",
										1
									],
									"source": [
										"fw-tone-in",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-upsquare",
										1
									],
									"order": 0,
									"source": [
										"fw-up",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-upsquare",
										0
									],
									"order": 1,
									"source": [
										"fw-up",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-upscale",
										0
									],
									"source": [
										"fw-upquartic",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-sum",
										1
									],
									"source": [
										"fw-upscale",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-upquartic",
										1
									],
									"order": 0,
									"source": [
										"fw-upsquare",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-upquartic",
										0
									],
									"order": 1,
									"source": [
										"fw-upsquare",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-cos",
										0
									],
									"source": [
										"fw-wrap",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						563.2381281852722,
						809.5238220691681,
						88.0,
						22.0
					],
					"saved_object_attributes": {
						"description": "Farnell housefly wing",
						"digest": "Max translation of Designing Sound Fig. 50.13",
						"tags": "fly insect Farnell"
					},
					"text": "p flywing_L"
				}
			},
			{
				"box": {
					"id": "wing2",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							539.0,
							188.0,
							600.0,
							930.0
						],
						"description": "Farnell housefly wing",
						"digest": "Max translation of Designing Sound Fig. 50.13",
						"tags": "fly insect Farnell",
						"boxes": [
							{
								"box": {
									"fontsize": 13.0,
									"id": "fw-title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										12.0,
										430.0,
										21.0
									],
									"text": "Farnell fly wing — Max translation of Designing Sound Fig. 50.13"
								}
							},
							{
								"box": {
									"comment": "wing resonance 0..100",
									"id": "fw-res-in",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										55.0,
										55.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "wing frequency Hz",
									"id": "fw-freq-in",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										325.0,
										55.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "fw-div100",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										55.0,
										110.0,
										54.0,
										22.0
									],
									"text": "/~ 100."
								}
							},
							{
								"box": {
									"id": "fw-phasor",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										325.0,
										110.0,
										76.0,
										22.0
									],
									"text": "phasor~ 756"
								}
							},
							{
								"box": {
									"id": "fw-mul02",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										235.0,
										155.0,
										52.0,
										22.0
									],
									"text": "*~ 0.2"
								}
							},
							{
								"box": {
									"id": "fw-mulneg1",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										350.0,
										155.0,
										48.0,
										22.0
									],
									"text": "*~ -1"
								}
							},
							{
								"box": {
									"id": "fw-add1",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										350.0,
										190.0,
										42.0,
										22.0
									],
									"text": "+~ 1"
								}
							},
							{
								"box": {
									"id": "fw-minA",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										220.0,
										225.0,
										76.0,
										22.0
									],
									"text": "minimum~"
								}
							},
							{
								"box": {
									"id": "fw-minB",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										340.0,
										225.0,
										76.0,
										22.0
									],
									"text": "minimum~"
								}
							},
							{
								"box": {
									"id": "fw-minC",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										280.0,
										265.0,
										76.0,
										22.0
									],
									"text": "minimum~"
								}
							},
							{
								"box": {
									"id": "fw-mul6",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										290.0,
										300.0,
										46.0,
										22.0
									],
									"text": "*~ 6"
								}
							},
							{
								"box": {
									"id": "fw-sub05",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										288.0,
										335.0,
										54.0,
										22.0
									],
									"text": "-~ 0.5"
								}
							},
							{
								"box": {
									"id": "fw-mul2shape",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										292.0,
										370.0,
										46.0,
										22.0
									],
									"text": "*~ 2"
								}
							},
							{
								"box": {
									"id": "fw-down",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										190.0,
										415.0,
										86.0,
										22.0
									],
									"text": "minimum~ 0"
								}
							},
							{
								"box": {
									"id": "fw-up",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										330.0,
										415.0,
										90.0,
										22.0
									],
									"text": "maximum~ 0"
								}
							},
							{
								"box": {
									"id": "fw-resmul",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										160.0,
										465.0,
										40.0,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "fw-wrap",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										160.0,
										500.0,
										82.0,
										22.0
									],
									"text": "pong~ 1 0 1"
								}
							},
							{
								"box": {
									"id": "fw-cos",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										160.0,
										535.0,
										42.0,
										22.0
									],
									"text": "cos~"
								}
							},
							{
								"box": {
									"id": "fw-ovscale",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										160.0,
										570.0,
										52.0,
										22.0
									],
									"text": "*~ 0.5"
								}
							},
							{
								"box": {
									"id": "fw-downsum",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										205.0,
										610.0,
										40.0,
										22.0
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fw-upsquare",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										345.0,
										465.0,
										40.0,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "fw-upquartic",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										345.0,
										500.0,
										40.0,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "fw-upscale",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										345.0,
										535.0,
										46.0,
										22.0
									],
									"text": "*~ 2"
								}
							},
							{
								"box": {
									"id": "fw-sum",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										275.0,
										655.0,
										40.0,
										22.0
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fw-onepole",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										300.0,
										700.0,
										90.0,
										22.0
									],
									"text": "onepole~ 700"
								}
							},
							{
								"box": {
									"id": "fw-highpass-sub",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										255.0,
										740.0,
										40.0,
										22.0
									],
									"text": "-~"
								}
							},
							{
								"box": {
									"id": "fw-outscale",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										255.0,
										775.0,
										52.0,
										22.0
									],
									"text": "*~ 0.5"
								}
							},
							{
								"box": {
									"comment": "mono fly-wing signal",
									"id": "fw-out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										260.0,
										825.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "fw-note",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										865.0,
										520.0,
										33.0
									],
									"text": "High-pass stage follows the established Max translation: original signal minus onepole~ 700 low-pass."
								}
							},
							{
								"box": {
									"comment": "spectral distance control Hz",
									"id": "fw-tone-in",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										470.0,
										55.0,
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
										"fw-minA",
										1
									],
									"order": 1,
									"source": [
										"fw-add1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-minB",
										1
									],
									"order": 0,
									"source": [
										"fw-add1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-ovscale",
										0
									],
									"source": [
										"fw-cos",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-resmul",
										0
									],
									"source": [
										"fw-div100",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-downsum",
										0
									],
									"order": 0,
									"source": [
										"fw-down",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-resmul",
										1
									],
									"order": 1,
									"source": [
										"fw-down",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-sum",
										0
									],
									"source": [
										"fw-downsum",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-phasor",
										0
									],
									"source": [
										"fw-freq-in",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-outscale",
										0
									],
									"source": [
										"fw-highpass-sub",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-minC",
										0
									],
									"source": [
										"fw-minA",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-minC",
										1
									],
									"source": [
										"fw-minB",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-mul6",
										0
									],
									"source": [
										"fw-minC",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-minA",
										0
									],
									"source": [
										"fw-mul02",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-down",
										0
									],
									"order": 1,
									"source": [
										"fw-mul2shape",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-up",
										0
									],
									"order": 0,
									"source": [
										"fw-mul2shape",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-sub05",
										0
									],
									"source": [
										"fw-mul6",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-add1",
										0
									],
									"source": [
										"fw-mulneg1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-highpass-sub",
										1
									],
									"source": [
										"fw-onepole",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-out",
										0
									],
									"source": [
										"fw-outscale",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-downsum",
										1
									],
									"source": [
										"fw-ovscale",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-minB",
										0
									],
									"order": 1,
									"source": [
										"fw-phasor",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-mul02",
										0
									],
									"order": 2,
									"source": [
										"fw-phasor",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-mulneg1",
										0
									],
									"order": 0,
									"source": [
										"fw-phasor",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-div100",
										0
									],
									"source": [
										"fw-res-in",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-wrap",
										0
									],
									"source": [
										"fw-resmul",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-mul2shape",
										0
									],
									"source": [
										"fw-sub05",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-highpass-sub",
										0
									],
									"order": 1,
									"source": [
										"fw-sum",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-onepole",
										0
									],
									"order": 0,
									"source": [
										"fw-sum",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-onepole",
										1
									],
									"source": [
										"fw-tone-in",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-upsquare",
										1
									],
									"order": 0,
									"source": [
										"fw-up",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-upsquare",
										0
									],
									"order": 1,
									"source": [
										"fw-up",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-upscale",
										0
									],
									"source": [
										"fw-upquartic",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-sum",
										1
									],
									"source": [
										"fw-upscale",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-upquartic",
										1
									],
									"order": 0,
									"source": [
										"fw-upsquare",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-upquartic",
										0
									],
									"order": 1,
									"source": [
										"fw-upsquare",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"fw-cos",
										0
									],
									"source": [
										"fw-wrap",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						729.9047974348068,
						814.2857269048691,
						88.0,
						22.0
					],
					"saved_object_attributes": {
						"description": "Farnell housefly wing",
						"digest": "Max translation of Designing Sound Fig. 50.13",
						"tags": "fly insect Farnell"
					},
					"text": "p flywing_R"
				}
			},
			{
				"box": {
					"id": "wing1-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						509.269873380661,
						814.2857269048691,
						47.78761446475983,
						20.0
					],
					"text": "wing 1"
				}
			},
			{
				"box": {
					"id": "wing2-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						831.4921005964279,
						814.2857269048691,
						138.9380642771721,
						20.0
					],
					"text": "wing 2 (+ slight detune)"
				}
			},
			{
				"box": {
					"id": "sum-wings",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						645.7778120040894,
						946.0317606925964,
						40.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"comment": "",
					"id": "obj-119",
					"index": 1,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						713.7930915355682,
						1532.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"id": "turn-add",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						780.1971878409386,
						511.2698496580124,
						40.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "wing-gain-L",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						563.2381281852722,
						900.0000139474869,
						40.0,
						22.0
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "wing-gain-R",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						729.9047974348068,
						900.0000139474869,
						40.0,
						22.0
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "aero-bed",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							119.0,
							216.0,
							822.0,
							650.0
						],
						"boxes": [
							{
								"box": {
									"id": "title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										35.0,
										20.0,
										300.0,
										20.0
									],
									"text": "AERODYNAMISCHER GRUNDANTEIL"
								}
							},
							{
								"box": {
									"id": "desc",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										35.0,
										48.0,
										581.0,
										33.0
									],
									"text": "Leiser kontinuierlicher Luftanteil aus der vorhandenen Pink/White-Mischung. Speed setzt das Grundniveau; AccelIntensity gibt kurzfristig mehr Energie."
								}
							},
							{
								"box": {
									"comment": "",
									"id": "audioin",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										45.0,
										105.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "lp-high",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										45.0,
										155.0,
										92.0,
										22.0
									],
									"text": "onepole~ 4500"
								}
							},
							{
								"box": {
									"id": "lp-low",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										165.0,
										155.0,
										86.0,
										22.0
									],
									"text": "onepole~ 300"
								}
							},
							{
								"box": {
									"id": "band",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										95.0,
										200.0,
										36.0,
										22.0
									],
									"text": "-~"
								}
							},
							{
								"box": {
									"id": "speed",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										285.0,
										101.0,
										160.0,
										22.0
									],
									"text": "receive #1_ManeuverSpeed"
								}
							},
							{
								"box": {
									"id": "speedclip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										285.0,
										136.0,
										72.0,
										22.0
									],
									"text": "clip 0. 1.5"
								}
							},
							{
								"box": {
									"id": "speedmap",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										285.0,
										171.0,
										204.0,
										22.0
									],
									"text": "expr 0.004 + 0.026*pow($f1/1.5\\, 1.0)"
								}
							},
							{
								"box": {
									"id": "intensity",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										376.0,
										224.0,
										200.0,
										22.0
									],
									"text": "receive #1_ManeuverAccelIntensity"
								}
							},
							{
								"box": {
									"id": "intclip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										376.0,
										259.0,
										65.0,
										22.0
									],
									"text": "clip 0. 1."
								}
							},
							{
								"box": {
									"id": "intmap",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										376.0,
										294.0,
										47.0,
										22.0
									],
									"text": "* 0.012"
								}
							},
							{
								"box": {
									"id": "sumctl",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										310.0,
										330.0,
										86.0,
										22.0
									],
									"text": "pak 0.005 0."
								}
							},
							{
								"box": {
									"id": "sumexpr",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										310.0,
										365.0,
										90.0,
										22.0
									],
									"text": "expr $f1+$f2"
								}
							},
							{
								"box": {
									"id": "gainclip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										310.0,
										400.0,
										93.0,
										22.0
									],
									"text": "clip 0.004 0.042"
								}
							},
							{
								"box": {
									"id": "amount-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										399.0,
										436.0,
										90.0,
										20.0
									],
									"text": "Menge 0–2"
								}
							},
							{
								"box": {
									"id": "amountpak",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										310.0,
										435.0,
										75.0,
										22.0
									],
									"text": "pak 0.004 2."
								}
							},
							{
								"box": {
									"id": "amountexpr",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										310.0,
										470.0,
										90.0,
										22.0
									],
									"text": "expr $f1*$f2"
								}
							},
							{
								"box": {
									"id": "rampmsg",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										305.0,
										504.0,
										55.0,
										22.0
									],
									"text": "$1 250"
								}
							},
							{
								"box": {
									"id": "line",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										305.0,
										534.0,
										55.0,
										22.0
									],
									"text": "line~ 0."
								}
							},
							{
								"box": {
									"id": "gain",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										157.73194992542267,
										606.1855330467224,
										36.0,
										22.0
									],
									"text": "*~"
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
									"patching_rect": [
										157.73194992542267,
										661.855633020401,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "note",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										97.9381388425827,
										706.1855274438858,
										251.0,
										33.0
									],
									"text": "Menge 1 = kalibrierter Bereich 0.005–0.08. Menge 0 schaltet nur diesen Grundanteil aus."
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"rampmsg",
										0
									],
									"source": [
										"amountexpr",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"amountexpr",
										0
									],
									"source": [
										"amountpak",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lp-high",
										0
									],
									"order": 1,
									"source": [
										"audioin",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lp-low",
										0
									],
									"order": 0,
									"source": [
										"audioin",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"gain",
										0
									],
									"source": [
										"band",
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
									"source": [
										"gain",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"amountpak",
										0
									],
									"source": [
										"gainclip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"intmap",
										0
									],
									"source": [
										"intclip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"intclip",
										0
									],
									"source": [
										"intensity",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"sumctl",
										1
									],
									"source": [
										"intmap",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"gain",
										1
									],
									"source": [
										"line",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"band",
										0
									],
									"source": [
										"lp-high",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"band",
										1
									],
									"source": [
										"lp-low",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"line",
										0
									],
									"source": [
										"rampmsg",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"speedclip",
										0
									],
									"source": [
										"speed",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"speedmap",
										0
									],
									"source": [
										"speedclip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"sumctl",
										0
									],
									"source": [
										"speedmap",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"sumexpr",
										0
									],
									"source": [
										"sumctl",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"gainclip",
										0
									],
									"source": [
										"sumexpr",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						969.8412848711014,
						958.7301735877991,
						124.0,
						22.0
					],
					"text": "p Aerodynamic Bed"
				}
			},
			{
				"box": {
					"id": "flutter-aero-sum",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						953.9682687520981,
						1015.8730316162109,
						36.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "orientation-radiation",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							1108.0,
							579.0
						],
						"boxes": [
							{
								"box": {
									"id": "title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										20.0,
										430.0,
										20.0
									],
									"text": "Orientation Radiation · räumlich begründete spektrale Neigung"
								}
							},
							{
								"box": {
									"id": "desc",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										45.0,
										650.0,
										33.0
									],
									"text": "Axial zur Hörposition: mehr Grundton. Seitlich: relativ mehr zweite/höhere Harmonische. Gesamtpegel bleibt annähernd konstant."
								}
							},
							{
								"box": {
									"comment": "vollständiger Fliegenklang",
									"id": "in",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										30.0,
										105.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "lp",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										30.0,
										155.0,
										83.0,
										22.0
									],
									"text": "onepole~ 300"
								}
							},
							{
								"box": {
									"id": "hp",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										145.0,
										155.0,
										29.0,
										22.0
									],
									"text": "-~"
								}
							},
							{
								"box": {
									"id": "lowmul",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										156.0,
										538.0,
										29.0,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "highmul",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										271.0,
										538.0,
										29.0,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "sum",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										208.0,
										588.0,
										29.0,
										22.0
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"comment": "orientation-gefilterter Fliegenklang",
									"id": "out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										208.0,
										645.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "xyrecv",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										310.0,
										105.0,
										190.0,
										22.0
									],
									"text": "receive #1_Flugkoordinaten"
								}
							},
							{
								"box": {
									"id": "engine",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										310.0,
										140.0,
										171.0,
										22.0
									],
									"saved_object_attributes": {
										"filename": "orientation_radiation.js",
										"parameter_enable": 0
									},
									"text": "js orientation_radiation.js"
								}
							},
							{
								"box": {
									"id": "axisclip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										310.0,
										175.0,
										68.0,
										22.0
									],
									"text": "clip 0. 1."
								}
							},
							{
								"box": {
									"format": 6,
									"id": "axisnum",
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
										333.5,
										206.5420544743538,
										72.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "axislabel",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										392.52336144447327,
										182.24298924207687,
										156.47663855552673,
										20.0
									],
									"text": "Axialität 0=seitlich / 1=axial"
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
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 1,
									"patching_rect": [
										557.0093414783478,
										233.64485800266266,
										62.0,
										22.0
									],
									"saved_attribute_attributes": {
										"valueof": {
											"parameter_initial": [
												1.0
											],
											"parameter_longname": "Orientation Amount[8]",
											"parameter_mmax": 1.0,
											"parameter_modmode": 0,
											"parameter_shortname": "Orient Amount",
											"parameter_type": 0
										}
									},
									"varname": "orientation_amount"
								}
							},
							{
								"box": {
									"id": "amountlabel",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										637.3831726312637,
										233.64485800266266,
										150.0,
										20.0
									],
									"text": "Amount 0–1"
								}
							},
							{
								"box": {
									"id": "loadamount",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										563.5513975024223,
										211.21495163440704,
										73.0,
										22.0
									],
									"text": "loadmess 1."
								}
							},
							{
								"box": {
									"id": "pak",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										310.0,
										260.0,
										78.0,
										22.0
									],
									"text": "pak 0.5 1."
								}
							},
							{
								"box": {
									"id": "lowexpr",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										260.0,
										300.0,
										219.0,
										22.0
									],
									"text": "expr pow(10.\\, (((($f1*2.)-1.)*3*$f2)/20.))"
								}
							},
							{
								"box": {
									"id": "highexpr",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										501.0,
										300.0,
										223.0,
										22.0
									],
									"text": "expr pow(10.\\, (-((($f1*2.)-1.)*3*$f2)/20.))"
								}
							},
							{
								"box": {
									"id": "lowmsg",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										260.0,
										335.0,
										48.0,
										22.0
									],
									"text": "$1 80"
								}
							},
							{
								"box": {
									"id": "highmsg",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										501.0,
										335.0,
										48.0,
										22.0
									],
									"text": "$1 80"
								}
							},
							{
								"box": {
									"id": "lowline",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										260.0,
										370.0,
										48.0,
										22.0
									],
									"text": "line~ 1."
								}
							},
							{
								"box": {
									"id": "highline",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										501.0,
										370.0,
										48.0,
										22.0
									],
									"text": "line~ 1."
								}
							},
							{
								"box": {
									"id": "note",
									"linecount": 3,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										260.0,
										415.0,
										418.0,
										47.0
									],
									"text": "Pivot ca. 300 Hz · maximale Neigung ±1.5 dB · 80 ms Glättung. Bei Stillstand bleibt die letzte Orientierung erhalten; nahe der Mitte wird neutral gefiltert."
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"pak",
										1
									],
									"source": [
										"amount",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"axisnum",
										0
									],
									"order": 0,
									"source": [
										"axisclip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"pak",
										0
									],
									"order": 1,
									"source": [
										"axisclip",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"axisclip",
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
										"highmsg",
										0
									],
									"source": [
										"highexpr",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"highmul",
										1
									],
									"source": [
										"highline",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"highline",
										0
									],
									"source": [
										"highmsg",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"sum",
										1
									],
									"source": [
										"highmul",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"highmul",
										0
									],
									"source": [
										"hp",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"hp",
										0
									],
									"order": 0,
									"source": [
										"in",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lp",
										0
									],
									"order": 1,
									"source": [
										"in",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"amount",
										0
									],
									"source": [
										"loadamount",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lowmsg",
										0
									],
									"source": [
										"lowexpr",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lowmul",
										1
									],
									"source": [
										"lowline",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lowline",
										0
									],
									"source": [
										"lowmsg",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"sum",
										0
									],
									"source": [
										"lowmul",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"hp",
										1
									],
									"order": 0,
									"source": [
										"lp",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lowmul",
										0
									],
									"order": 1,
									"source": [
										"lp",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"highexpr",
										0
									],
									"order": 0,
									"source": [
										"pak",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"lowexpr",
										0
									],
									"order": 1,
									"source": [
										"pak",
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
									"source": [
										"sum",
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
										"xyrecv",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						714.5,
						1331.0344605445862,
						142.0,
						22.0
					],
					"text": "p Orientation Radiation"
				}
			},
			{
				"box": {
					"color": [
						0.6941176470588235,
						0.4980392156862745,
						0.0,
						1.0
					],
					"id": "doppler-control",
					"linecount": 2,
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
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
							134.0,
							164.0,
							720.0,
							390.0
						],
						"boxes": [
							{
								"box": {
									"id": "dop-title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										116.01205015182495,
										3.6144579648971558,
										500.0,
										20.0
									],
									"text": "Doppler · Live-Flugrichtung × reale Bewegungsgeschwindigkeit"
								}
							},
							{
								"box": {
									"id": "dop-desc",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										116.01205015182495,
										31.325302362442017,
										620.0,
										20.0
									],
									"text": "Annäherung erhöht, Entfernung senkt die gemeinsame Flügelfrequenz. Amount 1 = physikalische Stärke."
								}
							},
							{
								"box": {
									"id": "dop-xy",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										116.01205015182495,
										68.67470133304596,
										180.0,
										22.0
									],
									"text": "receive #1_Flugkoordinaten"
								}
							},
							{
								"box": {
									"id": "dop-speed",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										178.66265487670898,
										102.40964233875275,
										190.0,
										22.0
									],
									"text": "receive #1_ManeuverSpeed"
								}
							},
							{
								"box": {
									"id": "dop-js",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										115.66265487670898,
										163.8554277420044,
										145.0,
										22.0
									],
									"saved_object_attributes": {
										"filename": "doppler_shift.js",
										"parameter_enable": 0
									},
									"text": "js doppler_shift.js"
								}
							},
							{
								"box": {
									"id": "dop-load",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										378.31326699256897,
										102.40964233875275,
										73.0,
										22.0
									],
									"text": "loadmess 2."
								}
							},
							{
								"box": {
									"format": 6,
									"id": "dop-amount",
									"maxclass": "flonum",
									"maximum": 2.0,
									"minimum": 0.0,
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 1,
									"patching_rect": [
										378.31326699256897,
										131.32530605793,
										70.0,
										22.0
									],
									"saved_attribute_attributes": {
										"valueof": {
											"parameter_longname": "doppler_amount[3]",
											"parameter_mmax": 2.0,
											"parameter_modmode": 0,
											"parameter_shortname": "doppler_amount",
											"parameter_type": 0
										}
									},
									"varname": "doppler_amount"
								}
							},
							{
								"box": {
									"id": "dop-amount-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										620.4819506406784,
										163.8554277420044,
										115.0,
										20.0
									],
									"text": "Amount 0–2"
								}
							},
							{
								"box": {
									"format": 6,
									"id": "dop-radial",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										320.4819395542145,
										218.07229721546173,
										90.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "dop-radial-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										420.48194324970245,
										218.07229721546173,
										235.0,
										20.0
									],
									"text": "Radialtempo m/s (+ näher / − weg)"
								}
							},
							{
								"box": {
									"id": "dop-msg",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										138.5542219877243,
										249.39759957790375,
										55.0,
										22.0
									],
									"text": "$1 60"
								}
							},
							{
								"box": {
									"id": "dop-line",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										138.5542219877243,
										281.92772126197815,
										52.0,
										22.0
									],
									"text": "line~ 1."
								}
							},
							{
								"box": {
									"comment": "Doppler frequency ratio signal",
									"id": "dop-out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										115.66265487670898,
										363.85543513298035,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "dop-note",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										195.1807301044464,
										283.13254058361053,
										510.0,
										20.0
									],
									"text": "60 ms Glättung. Nahe der Raummitte neutral. Bei Stillstand ist das Verhältnis 1.0."
								}
							},
							{
								"box": {
									"comment": "common wing frequency signal",
									"id": "dop-audio-in",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										40.9638569355011,
										28.734941005706787,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "dop-internal-mul",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										115.66265487670898,
										318.0723009109497,
										42.0,
										22.0
									],
									"text": "*~"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"dop-js",
										2
									],
									"source": [
										"dop-amount",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dop-internal-mul",
										0
									],
									"source": [
										"dop-audio-in",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dop-out",
										0
									],
									"source": [
										"dop-internal-mul",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dop-msg",
										0
									],
									"source": [
										"dop-js",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dop-radial",
										0
									],
									"source": [
										"dop-js",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dop-internal-mul",
										1
									],
									"source": [
										"dop-line",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dop-amount",
										0
									],
									"source": [
										"dop-load",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dop-line",
										0
									],
									"source": [
										"dop-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dop-js",
										1
									],
									"source": [
										"dop-speed",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"dop-js",
										0
									],
									"source": [
										"dop-xy",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						597.7381281852722,
						634.7698512077332,
						129.0,
						35.0
					],
					"text": "p Doppler · Live XY + Speed"
				}
			},
			{
				"box": {
					"id": "distance-air-filter",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						714.5,
						1382.0,
						153.0,
						22.0
					],
					"text": "MS_Distance_Air_Filter #1"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": [
						"accel-view",
						0
					],
					"source": [
						"accel-recv",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"flutter-aero-sum",
						1
					],
					"source": [
						"aero-bed",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"dist-num-1",
						0
					],
					"order": 1,
					"source": [
						"dist-1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"dist-send-1",
						0
					],
					"order": 0,
					"source": [
						"dist-1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-37",
						0
					],
					"source": [
						"distance-air-filter",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"freq2-sum",
						0
					],
					"order": 0,
					"source": [
						"doppler-control",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"wing1",
						1
					],
					"order": 1,
					"source": [
						"doppler-control",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-97",
						1
					],
					"source": [
						"flutter-aero-sum",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"doppler-control",
						0
					],
					"source": [
						"freq-base",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"wing2",
						1
					],
					"source": [
						"freq2-sum",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"high-sel",
						0
					],
					"source": [
						"high-change",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"onebang",
						0
					],
					"source": [
						"high-sel",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"high-change",
						0
					],
					"source": [
						"high-thresh",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"intensity-view",
						0
					],
					"source": [
						"intensity-recv",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"low-sel",
						0
					],
					"source": [
						"low-change",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"onebang",
						1
					],
					"source": [
						"low-sel",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"low-change",
						0
					],
					"source": [
						"low-thresh",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"maneuver-view",
						0
					],
					"source": [
						"maneuver-recv",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-8",
						0
					],
					"source": [
						"mv-recv",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-76",
						0
					],
					"source": [
						"obj-101",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-78",
						0
					],
					"source": [
						"obj-101",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"wing-gain-L",
						1
					],
					"source": [
						"obj-106",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"wing-gain-R",
						1
					],
					"source": [
						"obj-106",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-9",
						1
					],
					"source": [
						"obj-108",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-99",
						0
					],
					"source": [
						"obj-11",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"wing1",
						2
					],
					"order": 1,
					"source": [
						"obj-110",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"wing2",
						2
					],
					"order": 0,
					"source": [
						"obj-110",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"turn-add",
						1
					],
					"source": [
						"obj-112",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-14",
						0
					],
					"source": [
						"obj-12",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-17",
						1
					],
					"source": [
						"obj-120",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-34",
						1
					],
					"source": [
						"obj-125",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"freq-base",
						0
					],
					"source": [
						"obj-13",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-125",
						0
					],
					"source": [
						"obj-130",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-133",
						0
					],
					"source": [
						"obj-131",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-62",
						0
					],
					"source": [
						"obj-131",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-30",
						0
					],
					"source": [
						"obj-14",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-16",
						0
					],
					"source": [
						"obj-15",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-17",
						0
					],
					"source": [
						"obj-151",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"turn-add",
						0
					],
					"source": [
						"obj-151",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-153",
						2
					],
					"source": [
						"obj-152",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-9",
						0
					],
					"source": [
						"obj-153",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-6",
						0
					],
					"source": [
						"obj-154",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-5",
						0
					],
					"source": [
						"obj-155",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-29",
						0
					],
					"source": [
						"obj-16",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"wing1",
						0
					],
					"order": 1,
					"source": [
						"obj-17",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"wing2",
						0
					],
					"order": 0,
					"source": [
						"obj-17",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-161",
						0
					],
					"source": [
						"obj-18",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-98",
						0
					],
					"source": [
						"obj-2",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-3",
						0
					],
					"source": [
						"obj-21",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"dist-1",
						0
					],
					"order": 0,
					"source": [
						"obj-22",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-21",
						0
					],
					"order": 2,
					"source": [
						"obj-22",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-23",
						1
					],
					"order": 3,
					"source": [
						"obj-22",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-24",
						0
					],
					"order": 1,
					"source": [
						"obj-22",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-19",
						0
					],
					"order": 0,
					"source": [
						"obj-24",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-25",
						0
					],
					"source": [
						"obj-24",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"turn-signed-send-1",
						0
					],
					"order": 1,
					"source": [
						"obj-24",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-30",
						1
					],
					"source": [
						"obj-29",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-32",
						0
					],
					"source": [
						"obj-30",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"freq-base",
						1
					],
					"source": [
						"obj-32",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-119",
						0
					],
					"source": [
						"obj-33",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-60",
						0
					],
					"source": [
						"obj-34",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-33",
						1
					],
					"source": [
						"obj-35",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-33",
						0
					],
					"order": 0,
					"source": [
						"obj-37",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-96",
						0
					],
					"order": 1,
					"source": [
						"obj-37",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-35",
						0
					],
					"source": [
						"obj-38",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-2",
						0
					],
					"source": [
						"obj-4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-42",
						0
					],
					"source": [
						"obj-40",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-50",
						0
					],
					"source": [
						"obj-42",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-45",
						0
					],
					"source": [
						"obj-43",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-50",
						2
					],
					"source": [
						"obj-45",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-73",
						0
					],
					"source": [
						"obj-47",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-74",
						0
					],
					"source": [
						"obj-48",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-34",
						0
					],
					"source": [
						"obj-49",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-154",
						0
					],
					"source": [
						"obj-5",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-53",
						0
					],
					"source": [
						"obj-50",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-49",
						1
					],
					"source": [
						"obj-53",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"flutter-aero-sum",
						0
					],
					"order": 1,
					"source": [
						"obj-57",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-10",
						0
					],
					"order": 0,
					"source": [
						"obj-57",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"orientation-radiation",
						0
					],
					"source": [
						"obj-58",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-63",
						0
					],
					"source": [
						"obj-59",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-64",
						0
					],
					"source": [
						"obj-59",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-153",
						0
					],
					"source": [
						"obj-6",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-57",
						0
					],
					"source": [
						"obj-60",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-59",
						0
					],
					"source": [
						"obj-61",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-18",
						0
					],
					"source": [
						"obj-62",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-60",
						1
					],
					"source": [
						"obj-62",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-66",
						1
					],
					"source": [
						"obj-63",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-66",
						0
					],
					"source": [
						"obj-64",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-68",
						0
					],
					"source": [
						"obj-66",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-57",
						1
					],
					"source": [
						"obj-68",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"turn-view",
						0
					],
					"source": [
						"obj-69",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-80",
						0
					],
					"source": [
						"obj-73",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-80",
						1
					],
					"source": [
						"obj-74",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-74",
						1
					],
					"source": [
						"obj-76",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-73",
						1
					],
					"source": [
						"obj-78",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"high-thresh",
						0
					],
					"order": 1,
					"source": [
						"obj-8",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"low-thresh",
						0
					],
					"order": 0,
					"source": [
						"obj-8",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"aero-bed",
						0
					],
					"order": 1,
					"source": [
						"obj-80",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-49",
						0
					],
					"order": 0,
					"source": [
						"obj-80",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-38",
						0
					],
					"source": [
						"obj-81",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-88",
						0
					],
					"source": [
						"obj-86",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-89",
						0
					],
					"source": [
						"obj-88",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-90",
						0
					],
					"source": [
						"obj-89",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-97",
						0
					],
					"source": [
						"obj-9",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"out-button",
						0
					],
					"source": [
						"obj-90",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-64",
						0
					],
					"source": [
						"obj-94",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-1",
						0
					],
					"order": 0,
					"source": [
						"obj-97",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-58",
						1
					],
					"order": 1,
					"source": [
						"obj-97",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-58",
						0
					],
					"order": 0,
					"source": [
						"obj-97",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-7",
						0
					],
					"order": 1,
					"source": [
						"obj-97",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-97",
						0
					],
					"source": [
						"obj-98",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-12",
						0
					],
					"source": [
						"obj-99",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-86",
						0
					],
					"source": [
						"onebang",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"distance-air-filter",
						0
					],
					"source": [
						"orientation-radiation",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-131",
						0
					],
					"order": 1,
					"source": [
						"out-button",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-162",
						0
					],
					"order": 0,
					"source": [
						"out-button",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"speed-view",
						0
					],
					"source": [
						"speed-recv",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-152",
						0
					],
					"order": 0,
					"source": [
						"sum-wings",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-153",
						1
					],
					"order": 1,
					"source": [
						"sum-wings",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"freq2-sum",
						1
					],
					"source": [
						"turn-add",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"sum-wings",
						0
					],
					"source": [
						"wing-gain-L",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"sum-wings",
						1
					],
					"source": [
						"wing-gain-R",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"wing-gain-L",
						0
					],
					"source": [
						"wing1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"wing-gain-R",
						0
					],
					"source": [
						"wing2",
						0
					]
				}
			}
		]
	}
}