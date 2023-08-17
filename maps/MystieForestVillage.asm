	object_const_def
	const MYSTIEFORESTVILLAGE_PINELAKS

MystieForestVillage_MapScripts:
	def_scene_scripts

	def_callbacks

PinelakInTheWay:
    opentext
    writetext DontStepOnPinelak
    promptbutton
    closetext
	end

;TEXT BELOW
DontStepOnPinelak:
    text "There are a ton"
    line "of Pinelaks here…"

    para "Better not step"
    line "here…"
    done

MystieForestVillage_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  7, PLAYERS_HOUSE, 1
	warp_event 14,  7, PLAYERS_HOUSE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0, 15, SPRITE_MOM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PinelakInTheWay, START_TOWERS_CHALLENGE
