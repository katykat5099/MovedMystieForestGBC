	object_const_def

EldersTowerIndoor_MapScripts:
	def_scene_scripts

	def_callbacks

EldersTowerIndoor_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 21, ELDERS_TOWER, 1
	warp_event  5, 21, ELDERS_TOWER, 2
	warp_event  9, 14, ELDERS_TOWER_INDOOR, 4
	warp_event 21,  2, ELDERS_TOWER_INDOOR, 3

	def_coord_events

	def_bg_events

	def_object_events
