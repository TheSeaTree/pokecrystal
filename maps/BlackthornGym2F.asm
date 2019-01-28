	const_def 2 ; object constants
	const BLACKTHORNGYM2F_BOULDER1
	const BLACKTHORNGYM2F_BOULDER2
	const BLACKTHORNGYM2F_BOULDER3
	const BLACKTHORNGYM2F_BOULDER4
	const BLACKTHORNGYM2F_BOULDER5
	const BLACKTHORNGYM2F_BOULDER6

BlackthornGym2F_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_CMDQUEUE, .SetUpStoneTable

.SetUpStoneTable:
	writecmdqueue .CommandQueue
	return

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 5, BLACKTHORNGYM2F_BOULDER1, .Boulder1
	stonetable 3, BLACKTHORNGYM2F_BOULDER2, .Boulder2
	stonetable 4, BLACKTHORNGYM2F_BOULDER3, .Boulder3
	db -1 ; end

.Boulder1:
	disappear BLACKTHORNGYM2F_BOULDER1
	jump .Fall

.Boulder2:
	disappear BLACKTHORNGYM2F_BOULDER2
	jump .Fall

.Boulder3:
	disappear BLACKTHORNGYM2F_BOULDER3
	jump .Fall

.Fall:
	pause 30
	scall .FX
	opentext
	writetext BlackthornGym2FBoulderFellText
	waitbutton
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end

BlackthornGymBoulder:
	jumpstd strengthboulder

BlackthornGym2FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

BlackthornGym2F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  1,  7, BLACKTHORN_GYM_1F, 3
	warp_event  7,  9, BLACKTHORN_GYM_1F, 4
	warp_event  2,  5, BLACKTHORN_GYM_1F, 5 ; hole
	warp_event  8,  7, BLACKTHORN_GYM_1F, 6 ; hole
	warp_event  8,  3, BLACKTHORN_GYM_1F, 7 ; hole

	db 0 ; coord events

	db 0 ; bg events

	db 6 ; object events
	object_event  8,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, EVENT_BOULDER_IN_BLACKTHORN_GYM_1
	object_event  2,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, EVENT_BOULDER_IN_BLACKTHORN_GYM_2
	object_event  6, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, EVENT_BOULDER_IN_BLACKTHORN_GYM_3
	object_event  3,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, -1
	object_event  6,  1, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, -1
	object_event  8, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, -1
