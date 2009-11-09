{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 191.0, 46.0, 377.0, 604.0 ],
		"bglocked" : 0,
		"defrect" : [ 191.0, 46.0, 377.0, 604.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 73.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This patch controls the blinking fired clip and the solid playing clip for one track",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 47.0, 50.0, 228.0, 34.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "live.observer fired_slot_index",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"patching_rect" : [ 92.0, 161.0, 152.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"id" : "obj-68",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "live.observer playing_slot_index",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"patching_rect" : [ 46.0, 131.0, 165.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"id" : "obj-65",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "live.path live_set tracks #1",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"patching_rect" : [ 47.0, 102.0, 137.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"id" : "obj-67",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 210.0, 336.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-60",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select -1 -2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 201.0, 288.0, 70.0, 20.0 ],
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-61",
					"outlettype" : [ "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b i",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"patching_rect" : [ 185.0, 463.0, 32.5, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"id" : "obj-58",
					"outlettype" : [ "bang", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "|",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"patching_rect" : [ 105.0, 488.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-55",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p blinker",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"patching_rect" : [ 197.0, 412.0, 52.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-53",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 859.0, 97.0, 419.0, 455.0 ],
						"bglocked" : 0,
						"defrect" : [ 859.0, 97.0, 419.0, 455.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This patch takes an integer as input.\n\nThe output will alternate between the input integer and 0\n\nIf 0 is sent as input, then the blinking will stop",
									"linecount" : 9,
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 225.0, 75.0, 150.0, 131.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "select 0",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 105.0, 105.0, 52.0, 20.0 ],
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-22",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "select 1 0",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 105.0, 225.0, 62.0, 20.0 ],
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-20",
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 105.0, 195.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 100",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 105.0, 165.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-17",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 120.0, 345.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 150.0, 300.0, 32.5, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 75.0, 300.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 105.0, 60.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 147.5, 131.0, 54.0, 131.0, 54.0, 283.0, 115.5, 283.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 114.5, 138.0, 216.0, 138.0, 216.0, 287.0, 159.5, 287.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 114.5, 87.0, 90.0, 87.0, 90.0, 150.0, 114.5, 150.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p row_bitmask",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"patching_rect" : [ 262.0, 339.0, 81.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-51",
					"outlettype" : [ "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 485.0, 125.0, 155.0, 212.0 ],
						"bglocked" : 0,
						"defrect" : [ 485.0, 125.0, 155.0, 212.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 58.0, 144.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontname" : "Arial Bold",
									"numinlets" : 2,
									"patching_rect" : [ 29.0, 66.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-21",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "<<",
									"fontname" : "Arial Bold",
									"numinlets" : 2,
									"patching_rect" : [ 75.0, 82.0, 32.5, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-20",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 53.0, 18.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p row_bitmask",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"patching_rect" : [ 48.0, 399.0, 81.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-50",
					"outlettype" : [ "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 485.0, 125.0, 155.0, 212.0 ],
						"bglocked" : 0,
						"defrect" : [ 485.0, 125.0, 155.0, 212.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 58.0, 144.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontname" : "Arial Bold",
									"numinlets" : 2,
									"patching_rect" : [ 29.0, 66.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-21",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "<<",
									"fontname" : "Arial Bold",
									"numinlets" : 2,
									"patching_rect" : [ 75.0, 82.0, 32.5, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-20",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 53.0, 18.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "Fired clip",
					"annotation" : "Fired clip",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"patching_rect" : [ 92.0, 220.0, 37.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"minimum" : -2,
					"id" : "obj-47",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "Playing clip",
					"annotation" : "Playing clip",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"patching_rect" : [ 46.0, 219.0, 32.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"minimum" : -1,
					"id" : "obj-28",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/launch/led_col #1 $1",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"patching_rect" : [ 104.954102, 531.767151, 111.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-19",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpsend localhost 8080",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"patching_rect" : [ 104.646362, 564.841187, 124.0, 18.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-17"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-68", 1 ],
					"hidden" : 0,
					"midpoints" : [ 115.5, 124.0, 234.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-65", 1 ],
					"hidden" : 0,
					"midpoints" : [ 115.5, 127.0, 201.5, 127.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 1 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 101.5, 273.0, 210.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 2 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 194.5, 481.0, 149.0, 481.0, 149.0, 475.0, 114.5, 475.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-55", 1 ],
					"hidden" : 0,
					"midpoints" : [ 208.0, 489.0, 128.0, 489.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
