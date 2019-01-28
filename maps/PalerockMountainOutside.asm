	const_def 2 ; object constants
	const PALEROCKOUTSIDE_ROCKER1
	const PALEROCKOUTSIDE_ROCKER2
	const PALEROCKOUTSIDE_ROCKER3
	const PALEROCKOUTSIDE_ROCKER4
	const PALEROCKOUTSIDE_ROCKER5
	
PalerockMountainOutside_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PalerockOutsideRocker:
	faceplayer
	opentext
	writetext SorryLittleDude
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement PALEROCKOUTSIDE_ROCKER5, PalerockOutsidePushAway
	applymovement PLAYER, PalerockOutsidePlayerMovement
	end
	
TrainerGuitaristTomas:
	trainer GUITARIST, TOMAS, EVENT_BEAT_GUITARIST_TOMAS, GuitaristTomasText, GuitaristTomasWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristTomasAfterText
	waitbutton
	closetext
	end	
	
TrainerGuitaristPaul:
	trainer GUITARIST, PAUL, EVENT_BEAT_GUITARIST_PAUL, GuitaristPaulText, GuitaristPaulWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristPaulAfterText
	waitbutton
	closetext
	end	
	
TrainerGuitaristFredrik:
	trainer GUITARIST, FREDRIK, EVENT_BEAT_GUITARIST_FREDRIK, GuitaristFredrikText, GuitaristFredrikWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristFredrikAfterText
	waitbutton
	closetext
	end	
	
TrainerGuitaristBrendon:
	trainer GUITARIST, BRENDON, EVENT_BEAT_GUITARIST_BRENDON, GuitaristBrendonText, GuitaristBrendonWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristBrendonAfterText
	waitbutton
	closetext
	end	
	
PalerockOutsidePushAway:
	turn_step LEFT
	step_end
	
PalerockOutsidePlayerMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end
	
SorryLittleDude:
	text "Sorry, little"
	line "dude."
	
	para "We don't let any"
	line "posers up here."
	
	para "Maybe if you had"
	line "someone to vouch"
	cont "for you, you could"
	cont "hang with us."
	done
	
GuitaristTomasText:
	text "I am a"
	line "#MON trainer!"
	done

GuitaristTomasWinText:
	text "I lost."
	done
	
GuitaristTomasAfterText:
	text "I lost."
	done
	
GuitaristPaulText:
	text "I am a"
	line "#MON trainer!"
	done

GuitaristPaulWinText:
	text "I lost."
	done
	
GuitaristPaulAfterText:
	text "I lost."
	done

GuitaristFredrikText:
	text "I am a"
	line "#MON trainer!"
	done

GuitaristFredrikWinText:
	text "I lost."
	done
	
GuitaristFredrikAfterText:
	text "I lost."
	done
	
GuitaristBrendonText:
	text "I am a"
	line "#MON trainer!"
	done

GuitaristBrendonWinText:
	text "I lost."
	done
	
GuitaristBrendonAfterText:
	text "I lost."
	done
	
PalerockMountainOutside_MapEvents:
	db 0, 0 ; filler
	
	
	db 2 ; warp events
	warp_event   9,  9, PALEROCK_MOUNTAIN_2F, 2
	warp_event  23,  5, PALEROCK_MOUNTAIN_2F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event 21, 17, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGuitaristTomas, -1
	object_event 22, 19, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGuitaristPaul, -1
	object_event 26,  9, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGuitaristFredrik, -1
	object_event 25, 16, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGuitaristBrendon, -1
	object_event 15, 16, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PalerockOutsideRocker, EVENT_SAVED_PALEROCK_ROCKER
	