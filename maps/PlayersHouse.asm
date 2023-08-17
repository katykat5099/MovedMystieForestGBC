	object_const_def
    const PLAYERSHOUSE_MOM

PlayersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

;SCRIPTS BELOW
MeetMomScript:
    playmusic MUSIC_MOM
    showemote EMOTE_SHOCK, PLAYERSHOUSE_MOM, 15
    faceplayer
    applymovement PLAYER, FaceNorth
    opentext
    writetext GoToElder
    promptbutton
    closetext
    setscene SCENE_FINISHED
	end

MomScript:
    faceplayer
    opentext
    writetext BetterGetGoing
    promptbutton
    closetext
	end

;TEXT BELOW
GoToElder:
    text "<PLAYER>!!"

    para "Are you going out?"

    para "The Elder came"
    line "over this morning"
    cont "while you were"
    cont "asleep."

    para "He said that it"
    line "is time for you"
    cont "to go and see him."

    para "You should head"
    line "out north and go"
    cont "see what he has"
    cont "to say."
    done

BetterGetGoing:
    text "Better get going!"
    done

;MOVEMENT BELOW
FaceNorth:
    turn_head UP
    step_end

PlayersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, MYSTIE_FOREST_VILLAGE, 2
	warp_event  3,  5, MYSTIE_FOREST_VILLAGE, 2

	def_coord_events
	coord_event  4,  5, SCENE_DEFAULT, MeetMomScript
	coord_event  3,  4, SCENE_DEFAULT, MeetMomScript
	coord_event  2,  4, SCENE_DEFAULT, MeetMomScript
	coord_event  1,  5, SCENE_DEFAULT, MeetMomScript
    
	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
