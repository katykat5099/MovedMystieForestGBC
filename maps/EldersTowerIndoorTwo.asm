	object_const_def
    const ELDERSTOWERINDOORTWO_RESEARCHER
    const ELDERSTOWERINDOORTWO_ELDER
    const ELDERSTOWERINDOORTWO_GEKKOU

EldersTowerIndoorTwo_MapScripts:
	def_scene_scripts
    scene_script StartSceneGekkou, SCENE_RECEIVE_GEKKOU

	def_callbacks

StartSceneGekkou:
    sdefer PhaseOneGekkou
    end

PhaseOneGekkou:
    follow ELDERSTOWERINDOORTWO_RESEARCHER, PLAYER
    applymovement ELDERSTOWERINDOORTWO_RESEARCHER, GoToElder2
    stopfollow
    applymovement ELDERSTOWERINDOORTWO_RESEARCHER, MoveTFOutOfTheWay
    disappear ELDERSTOWERINDOORTWO_RESEARCHER
    applymovement PLAYER, SeeElder
    opentext
    writetext ElderTaskGiven
    promptbutton
    closetext
    opentext
    writetext ElderSayHello
    promptbutton
    cry GEKKOU
    playsound SFX_CAUGHT_MON
    waitsfx
    givepoke GEKKOU, 5, BERRY
    writetext ElderGoDoTask
    promptbutton
    closetext
    applymovement ELDERSTOWERINDOORTWO_GEKKOU, PartyWithPlayer
    disappear ELDERSTOWERINDOORTWO_GEKKOU
    setevent START_TOWERS_CHALLENGE
    setscene SCENE_FINISHED
    end

Temp:
    faceplayer
    end

;MOVEMENT BELOW
GoToElder2:
    step DOWN
    step LEFT
    step LEFT
    step LEFT
    step LEFT
    step LEFT
    step LEFT
    step_end

MoveTFOutOfTheWay:
    step DOWN
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step_end

SeeElder:
    step LEFT
    step LEFT
    turn_head UP
    step_end

PartyWithPlayer:
    step RIGHT
    step_end

;TEXT BELOW
ElderTaskGiven:
    text "<PLAYER>."
    line "This here is a"
    cont "Gekkou."

    para "From now on, they"
    line "will be your very"
    cont "own researching"
    cont "partner."

    para "But! In order to"
    line "be officially"
    cont "recognized as a"
    cont "researcher, you"
    cont "must complete"
    cont "the challenges"
    cont "in the 3 towers"
    cont "south-west of our"
    cont "home."
    done

ElderSayHello:
    text "Alright, go on,"
    line "say hello!"
    done

ElderGoDoTask:
    text "Your challenge"
    line "run starts now."

    para "Get going!"
    done

EldersTowerIndoorTwo_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  3, ELDERS_TOWER_INDOOR, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Temp, START_TOWERS_CHALLENGE
	object_event  1,  3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Temp, -1
	object_event  0,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Temp, START_TOWERS_CHALLENGE
