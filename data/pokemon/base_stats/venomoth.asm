	db VENOMOTH ; 049

	db  70,  65,  60,  90,  90,  75
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/venomoth/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, DOUBLE_TEAM, ENDURE, GIGA_DRAIN, HIDDEN_POWER, HURRICANE, HYPER_BEAM, LEECH_LIFE, PROTECT, PSYCHIC_M, REFLECT, REST, RETURN, SLEEP_TALK, SLUDGE_BOMB, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, TELEPORT, THUNDERBOLT, THUNDER_WAVE, TOXIC, DREAM_EATER
	; end
