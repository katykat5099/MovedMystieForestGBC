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
    checkevent START_TOWERS_CHALLENGE
    iftrue MomGiveHeirloom
    faceplayer
    opentext
    writetext BetterGetGoing
    promptbutton
    closetext
	end

MomGiveHeirloom:
    checkevent EVENT_MOM_HEIRLOOM_GIVEN
    iftrue MomScript2
    opentext
    writetext TakeHeirloom
    promptbutton
    waitsfx
    verbosegiveitem HEIRLOOM
    iffalse BugCheatCheck
    writetext HeirloomGiveTextFinish
    promptbutton
    closetext
    setevent EVENT_MOM_HEIRLOOM_GIVEN
    end

MomScript2:
    faceplayer
    opentext
    writetext BetterGetGoing
    promptbutton
    closetext
	end

BugCheatCheck:
    writetext BugCheatCheckItemText
    promptbutton
    closetext
    end

;TEXT BELOW
GoToElder:
    text "Mom: <PLAYER>!!"

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
    text "Mom: Better get"
    line "going!"
    done

TakeHeirloom:
    text "Mom: <PLAYER>!!"

    para "So, you started"
    line "your research yet?"

    para "I think it's"
    line "about time I give"
    cont "you this…"
    done

HeirloomGiveTextFinish:
    text "Stay safe out"
    line "there!"
    done

BugCheatCheckItemText:
    text "Bag is full"

    para "You're most"
    line "likely cheating, or"
    cont "this is a bug."
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
