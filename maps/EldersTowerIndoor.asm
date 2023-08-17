	object_const_def
    const ELDERSTOWERINDOOR_RESEARCHER
    const ELDERSTOWERINDOOR_ELDER

EldersTowerIndoor_MapScripts:
	def_scene_scripts

	def_callbacks

MeetResearcherScript1:
    applymovement ELDERSTOWERINDOOR_RESEARCHER, FaceDown
    showemote EMOTE_SHOCK, ELDERSTOWERINDOOR_RESEARCHER, 15
    opentext
    writetext PlayerComeQuick
    promptbutton
    closetext
    applymovement ELDERSTOWERINDOOR_RESEARCHER, GoTowardPlayer1
    follow ELDERSTOWERINDOOR_RESEARCHER, PLAYER
    applymovement ELDERSTOWERINDOOR_RESEARCHER, GoUpstairs1
    disappear ELDERSTOWERINDOOR_RESEARCHER
    stopfollow
    setscene SCENE_FINISHED
    applymovement PLAYER, StepUp
    warp ELDERS_TOWER_INDOOR_TWO, 9, 3
    warpsound
    end

MeetResearcherScript2:
    applymovement ELDERSTOWERINDOOR_RESEARCHER, FaceDown
    showemote EMOTE_SHOCK, ELDERSTOWERINDOOR_RESEARCHER, 15
    opentext
    writetext PlayerComeQuick
    promptbutton
    closetext
    applymovement ELDERSTOWERINDOOR_RESEARCHER, GoTowardPlayer2
    follow ELDERSTOWERINDOOR_RESEARCHER, PLAYER
    applymovement ELDERSTOWERINDOOR_RESEARCHER, GoUpstairs2
    disappear ELDERSTOWERINDOOR_RESEARCHER
    stopfollow
    setscene SCENE_FINISHED
    applymovement PLAYER, StepUp
    warp ELDERS_TOWER_INDOOR_TWO, 9, 3
    warpsound
    end

ResearcherTalkToOthers:
    faceplayer
    opentext
    writetext TalkToOthersText
    promptbutton
    closetext
	end

;TEXT BELOW
PlayerComeQuick:
    text "<PLAYER>!! Come"
    line "quick!"
    done

TalkToOthersText:
    text "Make sure to talk"
    line "to the others"
    cont "here to get some"
    cont "hints!"

    para "Don't tell the"
    line "elder I told you"
    cont "that!…"
    done

;MOVEMENT BELOW
GoTowardPlayer1:
    step LEFT
    step LEFT
    step LEFT
    step DOWN
    step DOWN
    step_end

GoUpstairs1:
    step UP
    step UP
    step UP
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step UP
    step_end

GoTowardPlayer2:
    step LEFT
    step LEFT
    step DOWN
    step DOWN
    step_end

GoUpstairs2:
    step UP
    step UP
    step UP
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step UP
    step_end

StepUp:
    step UP
    step_end

FaceDown:
    turn_head DOWN
    step_end

EldersTowerIndoor_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, ELDERS_TOWER, 1
	warp_event  5,  9, ELDERS_TOWER, 2
	warp_event  9,  3, ELDERS_TOWER_INDOOR_TWO, 1

	def_coord_events
	coord_event  4,  8, SCENE_DEFAULT, MeetResearcherScript1
	coord_event  5,  8, SCENE_DEFAULT, MeetResearcherScript2

	def_bg_events

	def_object_events
	object_event  7,  5, SPRITE_MOM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ResearcherTalkToOthers, -1
