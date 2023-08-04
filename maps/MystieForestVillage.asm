	object_const_def
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_RIVAL

MystieForestVillage_MapScripts:
	def_scene_scripts
	scene_script MystieForestVillageNoop1Scene, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU
	scene_script MystieForestVillageNoop2Scene, SCENE_NEWBARKTOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MystieForestVillageFlypointCallback

MystieForestVillageNoop1Scene:
	end

MystieForestVillageNoop2Scene:
	end

MystieForestVillageFlypointCallback:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

MystieForestVillage_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, MystieForestVillage_TeacherRunsToYouMovement1
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, MystieForestVillage_TeacherBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

MystieForestVillage_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, MystieForestVillage_TeacherRunsToYouMovement2
	turnobject PLAYER, UP
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, MystieForestVillage_TeacherBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

MystieForestVillageTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

MystieForestVillageFisherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon

MystieForestVillageRivalScript:
	opentext
	writetext MystieForestVillageRivalText1
	waitbutton
	closetext
	turnobject NEWBARKTOWN_RIVAL, LEFT
	opentext
	writetext MystieForestVillageRivalText2
	waitbutton
	closetext
	follow PLAYER, NEWBARKTOWN_RIVAL
	applymovement PLAYER, MystieForestVillage_RivalPushesYouAwayMovement
	stopfollow
	pause 5
	turnobject NEWBARKTOWN_RIVAL, DOWN
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, MystieForestVillage_RivalShovesYouOutMovement
	applymovement NEWBARKTOWN_RIVAL, MystieForestVillage_RivalReturnsToTheShadowsMovement
	end

MystieForestVillageSign:
	jumptext MystieForestVillageSignText

MystieForestVillagePlayersHouseSign:
	jumptext MystieForestVillagePlayersHouseSignText

MystieForestVillageElmsLabSign:
	jumptext MystieForestVillageElmsLabSignText

MystieForestVillageElmsHouseSign:
	jumptext MystieForestVillageElmsHouseSignText

MystieForestVillage_TeacherRunsToYouMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

MystieForestVillage_TeacherRunsToYouMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

MystieForestVillage_TeacherBringsYouBackMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

MystieForestVillage_TeacherBringsYouBackMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

MystieForestVillage_RivalPushesYouAwayMovement:
	turn_head UP
	step DOWN
	step_end

MystieForestVillage_RivalShovesYouOutMovement:
	turn_head UP
	fix_facing
	jump_step DOWN
	remove_fixed_facing
	step_end

MystieForestVillage_RivalReturnsToTheShadowsMovement:
	step RIGHT
	step_end

Text_GearIsImpressive:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Wild #MON"
	line "jump out of the"

	para "grass on the way"
	line "to the next town."
	done

Text_YourMonIsAdorable:
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #GEAR to"

	para "let her know how"
	line "you're doing."
	done

Text_ElmDiscoveredNewMon:
	text "Yo, <PLAYER>!"

	para "I hear PROF.ELM"
	line "discovered some"
	cont "new #MON."
	done

MystieForestVillageRivalText1:
	text "<……>"

	para "So this is the"
	line "famous ELM #MON"
	cont "LAB…"
	done

MystieForestVillageRivalText2:
	text "…What are you"
	line "staring at?"
	done

MystieForestVillageSignText:
	text "NEW BARK TOWN"

	para "The Town Where the"
	line "Winds of a New"
	cont "Beginning Blow"
	done

MystieForestVillagePlayersHouseSignText:
	text "<PLAYER>'s House"
	done

MystieForestVillageElmsLabSignText:
	text "ELM #MON LAB"
	done

MystieForestVillageElmsHouseSignText:
	text "ELM'S HOUSE"
	done

MystieForestVillage_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  3, ELMS_LAB, 1
	warp_event 13,  5, PLAYERS_HOUSE_1F, 1
	warp_event  3, 11, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 11, 13, ELMS_HOUSE, 1

	def_coord_events
	coord_event  1,  8, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU, MystieForestVillage_TeacherStopsYouScene1
	coord_event  1,  9, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU, MystieForestVillage_TeacherStopsYouScene2

	def_bg_events
	bg_event  8,  8, BGEVENT_READ, MystieForestVillageSign
	bg_event 11,  5, BGEVENT_READ, MystieForestVillagePlayersHouseSign
	bg_event  3,  3, BGEVENT_READ, MystieForestVillageElmsLabSign
	bg_event  9, 13, BGEVENT_READ, MystieForestVillageElmsHouseSign

	def_object_events
	object_event  6,  8, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MystieForestVillageTeacherScript, -1
	object_event 12,  9, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MystieForestVillageFisherScript, -1
	object_event  3,  2, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MystieForestVillageRivalScript, EVENT_RIVAL_NEW_BARK_TOWN
