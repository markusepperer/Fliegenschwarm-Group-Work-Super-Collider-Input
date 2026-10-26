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
			-21.0,
			104.0,
			1344.0,
			900.0
		],
		"openinpresentation": 1,
		"boxes": [
			{
				"box": {
					"fontsize": 16.0,
					"id": "title",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						20.0,
						520.0,
						24.0
					],
					"text": "RULE-BASED RANDOM ENVELOPE GENERATOR"
				}
			},
			{
				"box": {
					"comment": "bang = generate new envelope",
					"id": "in",
					"index": 1,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						79.0,
						38.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"id": "test",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						82.0,
						75.0,
						24.0,
						24.0
					]
				}
			},
			{
				"box": {
					"id": "testlabel",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						115.0,
						76.0,
						120.0,
						20.0
					],
					"text": "TEST / neuer Verlauf"
				}
			},
			{
				"box": {
					"id": "load",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						35.0,
						120.0,
						100.0,
						22.0
					],
					"presentation": 1,
					"presentation_rect": [
						0.0,
						0.0,
						100.0,
						22.0
					],
					"text": "loadmess 60 500"
				}
			},
			{
				"box": {
					"id": "unpack",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"int",
						"int"
					],
					"patching_rect": [
						35.0,
						152.0,
						67.0,
						22.0
					],
					"text": "unpack i i"
				}
			},
			{
				"box": {
					"id": "minnum",
					"maxclass": "number",
					"minimum": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						35.0,
						190.0,
						58.0,
						22.0
					],
					"presentation": 1,
					"presentation_rect": [
						101.0,
						0.0,
						58.0,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "maxnum",
					"maxclass": "number",
					"minimum": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						115.0,
						190.0,
						58.0,
						22.0
					],
					"presentation": 1,
					"presentation_rect": [
						160.0,
						0.0,
						58.0,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "minlabel",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						35.0,
						214.0,
						65.0,
						20.0
					],
					"text": "min ms"
				}
			},
			{
				"box": {
					"id": "maxlabel",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						115.0,
						214.0,
						65.0,
						20.0
					],
					"text": "max ms"
				}
			},
			{
				"box": {
					"id": "minmsg",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						205.0,
						190.0,
						54.0,
						22.0
					],
					"text": "min $1"
				}
			},
			{
				"box": {
					"id": "maxmsg",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						205.0,
						222.0,
						56.0,
						22.0
					],
					"text": "max $1"
				}
			},
			{
				"box": {
					"id": "js",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"patching_rect": [
						320.0,
						115.0,
						190.0,
						22.0
					],
					"saved_object_attributes": {
						"filename": "random_envelope_rules.js",
						"parameter_enable": 0
					},
					"text": "js random_envelope_rules.js"
				}
			},
			{
				"box": {
					"addpoints": [
						0.0,
						0.0,
						0,
						45.31231559108819,
						0.41492061666436136,
						0,
						88.67763866101828,
						0.32928757312219764,
						0,
						165.18125009725594,
						0.7837405169621658,
						0,
						253.93148268785217,
						0.3655845619863871,
						0,
						304.8101620203436,
						0.45774628132906703,
						0,
						352.31409283819363,
						0.09589380544726189,
						0,
						383.04961221778655,
						0.0,
						0
					],
					"classic_curve": 1,
					"domain": 383.04962158203125,
					"id": "func",
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
						320.0,
						180.0,
						460.0,
						220.0
					],
					"presentation": 1,
					"presentation_rect": [
						0.0,
						23.0,
						218.0,
						114.0
					]
				}
			},
			{
				"box": {
					"format": 6,
					"id": "domainnum",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						540.0,
						115.0,
						80.0,
						22.0
					]
				}
			},
			{
				"box": {
					"id": "domainlabel",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						630.0,
						116.0,
						110.0,
						20.0
					],
					"text": "gewürfelte Domain"
				}
			},
			{
				"box": {
					"comment": "function list for line~",
					"id": "envout",
					"index": 1,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						370.0,
						455.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"comment": "domain ms",
					"id": "domout",
					"index": 2,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						540.0,
						455.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"id": "note1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						525.0,
						780.0,
						20.0
					],
					"text": "Regeln: Start/Ende immer 0; X-Punkte in nicht überlappenden Zeitfenstern; daher bleibt ihre Reihenfolge erhalten."
				}
			},
			{
				"box": {
					"id": "note2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						550.0,
						780.0,
						20.0
					],
					"text": "P1 0.30–0.60; P2 bewegt sich nur begrenzt davon weg; P3 muss Hauptpeak 0.65–1.00 werden."
				}
			},
			{
				"box": {
					"id": "note3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						575.0,
						780.0,
						20.0
					],
					"text": "P4 fällt; P5 darf kleiner Nachimpuls sein; P6 fällt auf maximal 0.20. Domain standardmäßig 60–140 ms."
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": [
						"envout",
						0
					],
					"source": [
						"func",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"test",
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
						"domainnum",
						0
					],
					"order": 1,
					"source": [
						"js",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"domout",
						0
					],
					"order": 0,
					"source": [
						"js",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"func",
						0
					],
					"source": [
						"js",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"unpack",
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
						"js",
						0
					],
					"source": [
						"maxmsg",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"maxmsg",
						0
					],
					"source": [
						"maxnum",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"js",
						0
					],
					"source": [
						"minmsg",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"minmsg",
						0
					],
					"source": [
						"minnum",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"js",
						0
					],
					"source": [
						"test",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"maxnum",
						0
					],
					"source": [
						"unpack",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"minnum",
						0
					],
					"source": [
						"unpack",
						0
					]
				}
			}
		]
	}
}