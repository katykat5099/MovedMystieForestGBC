	object_const_def

TowerOneBasement_MapScripts:
	def_scene_scripts

	def_callbacks

TowerOneBasement_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, TOWER_ONE_INDOOR_F1, 3
	warp_event  2,  3, TOWER_ONE_INDOOR_F1, 4
	warp_event  17,  9, TOWER_ONE_INDOOR_F1, 5
	warp_event  18,  9, TOWER_ONE_INDOOR_F1, 6

	def_coord_events

	def_bg_events

	def_object_events