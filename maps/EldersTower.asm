	object_const_def

EldersTower_MapScripts:
	def_scene_scripts

	def_callbacks

EldersTower_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, ELDERS_TOWER_INDOOR, 1
	warp_event 12,  5, ELDERS_TOWER_INDOOR, 2

	def_coord_events

	def_bg_events

	def_object_events