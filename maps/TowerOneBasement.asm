	object_const_def

TowerOneBasement_MapScripts:
	def_scene_scripts

	def_callbacks

SecretButtonPress:
    setevent EVENT_SECRET_WARP_IN_BASEMENT
    playsound SFX_ENTER_DOOR
    end

SecretWarpTile:
    checkevent EVENT_SECRET_WARP_IN_BASEMENT
    iffalse .somethingDoesntSeemRight
    warp TOWER_ONE_BASEMENT, 0, 15
    playsound SFX_WARP_TO
    end

.somethingDoesntSeemRight
    opentext
    writetext SomethingDoesntSeemRightAboutThisMaze
    promptbutton
    closetext
    end


WarpTileBack:
    warp TOWER_ONE_BASEMENT, 16, 4
    playsound SFX_WARP_FROM
    end

;TEXT BELOW
SomethingDoesntSeemRightAboutThisMaze:
    text "Something doesn't"
    line "seem right about"
    cont "this maze…"
    done

TowerOneBasement_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, TOWER_ONE_INDOOR_F1, 3
	warp_event  2,  3, TOWER_ONE_INDOOR_F1, 4
	warp_event  17,  9, TOWER_ONE_INDOOR_F1, 5
	warp_event  18,  9, TOWER_ONE_INDOOR_F1, 6

	def_coord_events
	coord_event 12, 13, SCENE_DEFAULT, SecretButtonPress
	coord_event 16,  4, SCENE_DEFAULT, SecretWarpTile
	coord_event  0, 15, SCENE_DEFAULT, WarpTileBack

	def_bg_events

	def_object_events