	object_const_def
    const ELDERSTOWERINDOORTWO_RESEARCHER
    const ELDERSTOWERINDOORTWO_ELDER
    const ELDERSTOWERINDOORTWO_GEKKOU

EldersTowerIndoorTwo_MapScripts:
	def_scene_scripts

	def_callbacks

Temp:
    faceplayer
    end

EldersTowerIndoorTwo_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  3, ELDERS_TOWER_INDOOR, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Temp, -1
	object_event  1,  3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Temp, -1
	object_event  0,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Temp, -1
