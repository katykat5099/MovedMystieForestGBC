	object_const_def

TowerOneIndoorF1_MapScripts:
	def_scene_scripts

	def_callbacks

TowerOneIndoorF1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  19, TOWER_ONE, 1
	warp_event  4,  19, TOWER_ONE, 2
	;warp_event  3,  15, TOWER_ONE_INDOOR_F2, 1
	;warp_event  4,  15, TOWER_ONE_INDOOR_F2, 2
	warp_event  17,  15, TOWER_ONE_INDOOR_F1, 7
	warp_event  18,  15, TOWER_ONE_INDOOR_F1, 8
	warp_event  17,  3, TOWER_ONE_INDOOR_F1, 5
	warp_event  18,  3, TOWER_ONE_INDOOR_F1, 6

	def_coord_events

	def_bg_events

	def_object_events