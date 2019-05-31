INCLUDE "data/trainers/party_pointers.asm"

Trainers:
; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

BugsyGroup:
	; BUGSY (1)
	db "BUGSY@", TRAINERTYPE_MOVES
	db 12, MACHOP,    FORESIGHT, ROCK_SMASH, FOCUS_ENERGY, LEER
	db 13, TEDDIURSA, ROCK_SMASH, LICK, LEER, FURY_SWIPES
	db 15, MANKEY,    FURY_SWIPES, LEER, KARATE_CHOP, ROCK_SMASH
	db -1 ; end

	; BUGSY (2)
	db "BUGSY@", TRAINERTYPE_MOVES
	db 15, TEDDIURSA,  ROCK_SMASH, LICK, LEER, FURY_SWIPES
	db 16, MACHOP,     KARATE_CHOP, ROCK_SMASH, SEISMIC_TOSS, FOCUS_ENERGY
	db 17, HERACROSS,  ROCK_SMASH, ENDURE, HORN_ATTACK, LEER
	db 19, MANKEY,     ROCK_SMASH, LEER, PURSUIT, SWAGGER
	db -1 ; end
	
	; BUGSY (3)
	db "BUGSY@", TRAINERTYPE_MOVES
	db 19, MACHOP,      ROCK_SMASH, KARATE_CHOP, SEISMIC_TOSS, FOCUS_ENERGY
	db 20, TEDDIURSA,   FURY_SWIPES, LICK, LEER, ROCK_SMASH
	db 20, HERACROSS,   LEER, ENDURE, FURY_ATTACK, ROCK_SMASH
	db 22, MANKEY,      FAINT_ATTACK, SWAGGER, CROSS_CHOP, ROCK_SMASH
	db -1

FalknerGroup:
	; FALKNER (1)
	db "CECIL@", TRAINERTYPE_MOVES
	db 16, REMORAID,   WATER_GUN, LOCK_ON, WHIRLPOOL, NO_MOVE
	db 16, SHELLDER,   WHIRLPOOL, HARDEN, WATER_GUN, ICY_WIND
	db 17, WOOPER,     BODY_SLAM, TAIL_WHIP, MUD_SLAP, WHIRLPOOL
	db 18, SEARION,    EMBER, GROWL, WHIRLPOOL, WATER_GUN
	db -1 ; end
	
	; FALKNER (2)
	db "CECIL@", TRAINERTYPE_MOVES
	db 19, SHELLDER, WHIRLPOOL, HARDEN, WATER_GUN, ICY_WIND
	db 19, REMORAID, WHIRLPOOL, WATER_GUN, NO_MOVE, NO_MOVE
	db 20, CHINCHOU, THUNDERSHOCK, BUBBLEBEAM, WHIRLPOOL, CONFUSE_RAY
	db 20, QUAGSIRE, WHIRLPOOL, BODY_SLAM, MUD_SLAP, TAIL_WHIP
	db 21, SEARION,  FLAME_WHEEL, WATER_GUN, WHIRLPOOL, GROWL
	db -1

WhitneyGroup:
	; WHITNEY (1)
	db "WHITNEY@", TRAINERTYPE_MOVES
	db 19, KADABRA,    CONFUSION, TELEPORT, NO_MOVE, NO_MOVE
	db 18, MR__MIME,   CONFUSION, DOUBLESLAP, CALM_MIND, TELEPORT
	db 19, STARMIE,    BUBBLEBEAM, RECOVER, PSYWAVE, TELEPORT
	db 21, CLEFAIRY,   DOUBLESLAP, SING, SOFTBOILED, TELEPORT
	db 21, XATU,       ANCIENTPOWER, CONFUSION, TELEPORT, NIGHT_SHADE
	db -1 ; end
	
MortyGroup:
	; MORTY (1)
	db "MORTY@", TRAINERTYPE_MOVES
	db 25, NYANELL,   FAINT_ATTACK, FURY_SWIPES, GROWL, SWAGGER
	db 25, MURKROW,   NIGHT_SHADE, PURSUIT, WING_ATTACK, SWAGGER
	db 25, HAUNTER,	  CONFUSE_RAY, CURSE, NIGHT_SHADE, SWAGGER
	db 27, HOUNDOOM,  BITE, SMOG, FLAME_WHEEL, SWAGGER
	db -1 ; end

PryceGroup:
	; PRYCE (1)
	db "PRYCE@", TRAINERTYPE_MOVES
	db 27, BELLOSSOM,       HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	db 27, TANGELA,       HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	db 29, PINSIR,    HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	db 32, VENUSAUR,  ICY_WIND, FURY_ATTACK, MIST, BLIZZARD
	db -1 ; end

JasmineGroup:
	; JASMINE (1)
	db "JASMINE@", TRAINERTYPE_MOVES
	db 30, SANDSLASH,	EARTHQUAKE, ROCK_SLIDE, SWORDS_DANCE, SANDSTORM
	db 30, RHYDON,		EARTHQUAKE, ROCK_SLIDE, COUNTER, SURF
	db 30, KANGASKHAN,	EARTHQUAKE, ROCK_SLIDE, STRENGTH, CRUNCH
	db 30, NIDOKING,	EARTHQUAKE, FLAMETHROWER, ICE_BEAM, THUNDERBOLT
	db 30, STEELIX,		EARTHQUAKE, IRON_TAIL, COIL, SUBSTITUTE
	db -1 ; end

ChuckGroup:
	; CHUCK (1)
	db "CHUCK@", TRAINERTYPE_MOVES
	db 27, PRIMEAPE,   LEER, RAGE, KARATE_CHOP, FURY_SWIPES
	db 30, POLIWRATH,  HYPNOSIS, MIND_READER, SURF, DYNAMICPUNCH
	db -1 ; end

ClairGroup:
	; CLAIR (1)
	db "CLAIR@", TRAINERTYPE_ITEM_MOVES
	db 37, ARCANINE,	X_SP_ATK,		FLAMETHROWER, SUNNY_DAY, SOLARBEAM, PLAY_ROUGH
	db 37, MAGMAR,		HEAT_ROCK,		FLAMETHROWER, THUNDERBOLT, EARTHQUAKE, SUNNY_DAY
	db 37, DRAGONAIR,	NO_ITEM,		FLAMETHROWER, DRAGONBREATH, THUNDER_WAVE, ICE_BEAM
	db 37, TYPHLOSION,	HEAT_ROCK,		FLAMETHROWER, THUNDERPUNCH, SOLARBEAM, SUNNY_DAY
	db 37, DRAGONAIR,	NO_ITEM,		FLAMETHROWER, DRAGONBREATH, THUNDER_WAVE, ICE_BEAM
	db 40, CHARIZARD,	X_ATTACK,		FLAMETHROWER, FLY, DRAGONBREATH, EARTHQUAKE
	db -1 ; end

Rival1Group:
	; RIVAL1 (1)
	db "MIKE@", TRAINERTYPE_ITEM
	db  9, TEDDIURSA, NO_ITEM
	db  9, NIDORAN_M, NO_ITEM
	db 12, CHIKORITA, BERRY
	db -1 ; end

	; RIVAL1 (2)
	db "MIKE@", TRAINERTYPE_ITEM
	db  9, TEDDIURSA, NO_ITEM
	db  9, NIDORAN_M, NO_ITEM
	db 12, CYNDAQUIL, BERRY
	db -1 ; end

	; RIVAL1 (3)
	db "MIKE@", TRAINERTYPE_ITEM
	db  9, TEDDIURSA, NO_ITEM
	db  9, NIDORAN_M, NO_ITEM
	db 12, TOTODILE, BERRY
	db -1 ; end

	; RIVAL1 (4)
	db "?@", TRAINERTYPE_ITEM
	db 12, NIDORAN_M, NO_ITEM
	db 11, TEDDIURSA, NO_ITEM
	db 11, SLOWPOKE, NO_ITEM
	db 11, HOUNDOUR, NO_ITEM
	db 14, CHIKORITA, MIRACLEBERRY
	db -1 ; end

	; RIVAL1 (5)
	db "?@", TRAINERTYPE_ITEM
	db 12, NIDORAN_M, NO_ITEM
	db 11, TEDDIURSA, NO_ITEM
	db 11, SLOWPOKE, NO_ITEM
	db 11, ODDISH, NO_ITEM
	db 14, CYNDAQUIL, MIRACLEBERRY
	db -1 ; end

	; RIVAL1 (6)
	db "?@", TRAINERTYPE_ITEM
	db 12, NIDORAN_M, NO_ITEM
	db 11, TEDDIURSA, NO_ITEM
	db 11, HOUNDOUR, NO_ITEM
	db 11, ODDISH, NO_ITEM
	db 14, TOTODILE, MIRACLEBERRY
	db -1 ; end

	; RIVAL1 (7)
	db "?@", TRAINERTYPE_ITEM
	db 20, NIDORINO, NO_ITEM
	db 18, TEDDIURSA, NO_ITEM
	db 18, GASTLY, NO_ITEM
	db 20, SHELLDER, NO_ITEM
	db 22, BAYLEEF, NO_ITEM
	db -1 ; end

	; RIVAL1 (8)
	db "?@", TRAINERTYPE_ITEM
	db 20, NIDORINO, NO_ITEM
	db 18, TEDDIURSA, NO_ITEM
	db 18, GASTLY, NO_ITEM
	db 20, SHELLDER, NO_ITEM
	db 22, QUILAVA, NO_ITEM
	db -1 ; end

	; RIVAL1 (9)
	db "?@", TRAINERTYPE_ITEM
	db 20, NIDORINO, NO_ITEM
	db 18, TEDDIURSA, NO_ITEM
	db 18, GASTLY, NO_ITEM
	db 20, FARFETCH_D, NO_ITEM
	db 22, CROCONAW, NO_ITEM
	db -1 ; end

	; RIVAL1 (10)
	db "?@", TRAINERTYPE_MOVES
	db 30, GOLBAT,     LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28, MAGNEMITE,  TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30, HAUNTER,    LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32, TUNGTYED,    LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32, MEGANIUM,   REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	db -1 ; end

	; RIVAL1 (11)
	db "?@", TRAINERTYPE_MOVES
	db 30, GOLBAT,     LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28, MAGNEMITE,  TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30, HAUNTER,    LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32, TUNGTYED,    LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32, QUILAVA,    SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	; RIVAL1 (12)
	db "?@", TRAINERTYPE_MOVES
	db 30, GOLBAT,     LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28, MAGNEMITE,  TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30, HAUNTER,    LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32, TUNGTYED,    LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32, FERALIGATR, RAGE, WATER_GUN, BITE, SCARY_FACE
	db -1 ; end

	; RIVAL1 (13)
	db "?@", TRAINERTYPE_MOVES
	db 34, TUNGTYED,    QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36, GOLBAT,     LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 35, MAGNETON,   THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35, HAUNTER,    MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35, KADABRA,    DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38, MEGANIUM,   REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	db -1 ; end

	; RIVAL1 (14)
	db "?@", TRAINERTYPE_MOVES
	db 34, TUNGTYED,    QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36, GOLBAT,     LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 35, MAGNETON,   THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35, HAUNTER,    MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35, KADABRA,    DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38, TYPHLOSION, SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	; RIVAL1 (15)
	db "?@", TRAINERTYPE_MOVES
	db 34, TUNGTYED,    QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36, GOLBAT,     LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 34, MAGNETON,   THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35, HAUNTER,    MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35, KADABRA,    DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38, FERALIGATR, RAGE, WATER_GUN, SCARY_FACE, CUT
	db -1 ; end

PokemonProfGroup:

WillGroup:
	; WILL (1)
	db "WILL@", TRAINERTYPE_MOVES
	db 40, XATU,       QUICK_ATTACK, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
	db 41, JYNX,       DOUBLESLAP, LOVELY_KISS, ICE_PUNCH, PSYCHIC_M
	db 41, EXEGGUTOR,  REFLECT, LEECH_SEED, EGG_BOMB, PSYCHIC_M
	db 41, SLOWBRO,    CURSE, AMNESIA, BODY_SLAM, PSYCHIC_M
	db 42, XATU,       QUICK_ATTACK, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
	db -1 ; end

PKMNTrainerGroup:
	; CAL (1)
	db "CAL@", TRAINERTYPE_NORMAL
	db 10, CHIKORITA
	db 10, CYNDAQUIL
	db 10, TOTODILE
	db -1 ; end

	; CAL (2)
	db "CAL@", TRAINERTYPE_NORMAL
	db 30, BAYLEEF
	db 30, QUILAVA
	db 30, CROCONAW
	db -1 ; end

	; CAL (3)
	db "CAL@", TRAINERTYPE_NORMAL
	db 50, MEGANIUM
	db 50, TYPHLOSION
	db 50, FERALIGATR
	db -1 ; end

BrunoGroup:
	; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_MOVES
	db 43, ONIX,       BIND, EARTHQUAKE, SANDSTORM, ROCK_SLIDE
	db 46, MACHAMP,    ROCK_SLIDE, FORESIGHT, VITAL_THROW, CROSS_CHOP
	db -1 ; end

KarenGroup:
	; KAREN (1)
	db "KAREN@", TRAINERTYPE_MOVES
	db 42, UMBREON,    SAND_ATTACK, CONFUSE_RAY, FAINT_ATTACK, MEAN_LOOK
	db 42, VILEPLUME,  STUN_SPORE, ACID, MOONLIGHT, PETAL_DANCE
	db 45, GENGAR,     LICK, SPITE, CURSE, DESTINY_BOND
	db 44, MURKROW,    QUICK_ATTACK, WHIRLWIND, PURSUIT, FAINT_ATTACK
	db 47, HOUNDOOM,   ROAR, PURSUIT, FLAMETHROWER, CRUNCH
	db -1 ; end

KogaGroup:
	; KOGA (1)
	db "KOGA@", TRAINERTYPE_MOVES
	db 40, ARIADOS,    DOUBLE_TEAM, MEAN_LOOK, BATON_PASS, GIGA_DRAIN
	db 41, VENOMOTH,   SUPERSONIC, GUST, PSYCHIC_M, TOXIC
	db 43, FORRETRESS, PROTECT, SWIFT, EXPLOSION, SPIKES
	db 42, MUK,        MINIMIZE, ACID_ARMOR, SLUDGE_BOMB, TOXIC
	db 44, CROBAT,     DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, TOXIC
	db -1 ; end

ChampionGroup:
	; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_MOVES
	db 44, GYARADOS,   FLAIL, RAIN_DANCE, SURF, HYPER_BEAM
	db 47, DRAGONITE,  THUNDER_WAVE, TWISTER, THUNDER, HYPER_BEAM
	db 47, DRAGONITE,  THUNDER_WAVE, TWISTER, BLIZZARD, HYPER_BEAM
	db 46, AERODACTYL, WING_ATTACK, ANCIENTPOWER, ROCK_SLIDE, HYPER_BEAM
	db 46, CHARIZARD,  FLAMETHROWER, WING_ATTACK, CUT, HYPER_BEAM
	db 50, DRAGONITE,  FIRE_BLAST, SAFEGUARD, OUTRAGE, HYPER_BEAM
	db -1 ; end

BrockGroup:
	; BROCK (1)
	db "BROCK@", TRAINERTYPE_MOVES
	db 41, GRAVELER,   DEFENSE_CURL, ROCK_SLIDE, ROLLOUT, EARTHQUAKE
	db 41, RHYHORN,    FURY_ATTACK, SCARY_FACE, EARTHQUAKE, HORN_DRILL
	db 42, OMASTAR,    BITE, SURF, PROTECT, SPIKE_CANNON
	db 44, ONIX,       BIND, ROCK_SLIDE, BIDE, SANDSTORM
	db 42, KABUTOPS,   CUT, SURF, ENDURE, GIGA_DRAIN
	db -1 ; end

MistyGroup:
	; MISTY (1)
	db "MISTY@", TRAINERTYPE_MOVES
	db 42, QUAGSIRE,   SURF, AMNESIA, EARTHQUAKE, RAIN_DANCE
	db 44, LAPRAS,     SURF, PERISH_SONG, BLIZZARD, RAIN_DANCE
	db 47, STARMIE,    SURF, CONFUSE_RAY, RECOVER, ICE_BEAM
	db -1 ; end

LtSurgeGroup:
	; LT_SURGE (1)
	db "LT.SURGE@", TRAINERTYPE_MOVES
	db 44, RAICHU,     THUNDER_WAVE, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 40, ELECTRODE,  SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
	db 40, MAGNETON,   LOCK_ON, DOUBLE_TEAM, SWIFT, ZAP_CANNON
	db 40, ELECTRODE,  SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
	db 46, ELECTABUZZ, QUICK_ATTACK, THUNDERPUNCH, LIGHT_SCREEN, THUNDER
	db -1 ; end

ScientistGroup:
	; SCIENTIST (1)
	db "ADRIAN@", TRAINERTYPE_NORMAL
	db 18, DROWZEE
	db 19, DROWZEE
	db -1
	
	; SCIENTIST (2)
	db "MELVIN@", TRAINERTYPE_NORMAL
	db 17, KADABRA
	db 17, KADABRA
	db -1
	
ErikaGroup:
	; ERIKA (1)
	db "ERIKA@", TRAINERTYPE_MOVES
	db 42, TANGELA,    VINE_WHIP, BIND, GIGA_DRAIN, SLEEP_POWDER
	db 41, JUMPLUFF,   MEGA_DRAIN, LEECH_SEED, COTTON_SPORE, GIGA_DRAIN
	db 46, VICTREEBEL, SUNNY_DAY, SYNTHESIS, ACID, RAZOR_LEAF
	db 46, BELLOSSOM,  SUNNY_DAY, SYNTHESIS, PETAL_DANCE, SOLARBEAM
	db -1 ; end

YoungsterGroup:
	; YOUNGSTER (1)
	db "JACK@", TRAINERTYPE_NORMAL
	db 11, GROWLITHE
	db 11, HOPPIP
	db 11, WOOPER
	db -1 ; end
	
	;YOUNGSTER (2)
	db "BEN@", TRAINERTYPE_NORMAL
	db 14, EKANS
	db 16, SENTRET
	db 17, SNUBBULL
	db -1 ; end
	
SchoolboyGroup:
	; SCHOOLBOY (1)
	db "TIMMY@", TRAINERTYPE_NORMAL
	db 10, SENTRET
	db -1 ; end
	
	; SCHOOLBOY (2)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 25, FURRET
	db -1
	
	; SCHOOLBOY (3)
	db "JOHNNY@", TRAINERTYPE_NORMAL
	db 25, GROWLITHE
	db -1
	
	; SCHOOLBOY (4)
	db "GUS@", TRAINERTYPE_ITEM
	db 23, SANDSHREW, GOLD_BERRY
	db 23, CUBBOLT, GOLD_BERRY
	db 23, DROWZEE, GOLD_BERRY
	db -1
	
BirdKeeperGroup:
	; BIRD_KEEPER (1)
	db "PHIL@", TRAINERTYPE_MOVES
	db 26, NOCTOWL, WING_ATTACK, PSYBEAM, HYPNOSIS, NO_MOVE
	db -1 ; end
	
	; BIRD_KEEPER (2)
	db "ALEX@", TRAINERTYPE_NORMAL
	db 17, MURKROW
	db 19, PIDGEOTTO
	db -1 ; end
	
	; BIRD_KEEPER (3)
	db "ELLIS@", TRAINERTYPE_ITEM
	db 27, FEAROW,		NO_ITEM
	db 30, PIDGEOTTO,	NO_ITEM
	db 27, FARFETCH_D,	STICK
	db -1 ; end
	
LassGroup:
	; LASS (1)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 9, SENTRET
	db 9, RINRING
	db -1 ; end
	
	; LASS (2)
	db "MELISSA@", TRAINERTYPE_NORMAL
	db 12, HOUNDOUR
	db 12, GROWLITHE
	db -1 ; end
	
	; LASS (3)
	db "ELIZABETH@", TRAINERTYPE_NORMAL
	db 13, HOPPIP
	db 12, TEDDIURSA
	db 14, WOOPER
	db -1 ; end
	
	; LASS (4)
	db "AMANDA@", TRAINERTYPE_NORMAL
	db 20, HOUNDOUR
	db 20, HOUNDOUR
	db 21, FLAREON
	db 22, ARCANINE
	db -1 ; end
	
	; LASS (5)
	db "STEPHANIE@", TRAINERTYPE_NORMAL
	db 17, JIGGLYPUFF
	db 20, CUBBOLT
	db -1
	
	; LASS (6)
	db "HOLLY@", TRAINERTYPE_ITEM
	db 23, SKIPLOOM, NO_ITEM
	db 23, JIGGLYPUFF, NO_ITEM
	db 24, GRANBULL, GOLD_BERRY
	db -1
	
	; LASS (7)
	db "VICKY@", TRAINERTYPE_NORMAL
	db 23, PARAS
	db 25, SANDSHREW
	db 25, CLEFAIRY
	db 26, PARASECT
	db -1
	
JanineGroup:
	; JANINE (1)
	db "JANINE@", TRAINERTYPE_MOVES
	db 36, CROBAT,     SCREECH, SUPERSONIC, CONFUSE_RAY, WING_ATTACK
	db 36, WEEZING,    SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 36, WEEZING,    SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 33, ARIADOS,    SCARY_FACE, GIGA_DRAIN, STRING_SHOT, NIGHT_SHADE
	db 39, VENOMOTH,   FORESIGHT, DOUBLE_TEAM, GUST, PSYCHIC_M
	db -1 ; end

CooltrainerFGroup:	
	; COOLTRAINER_F (1)
	db "REGGIE@", TRAINERTYPE_NORMAL
	db 22, TEDDIURSA
	db 22, MANKEY
	db 23, CLEFAIRY
	db -1 ; end
	
	; COOLTRAINER_F (2)
	db "ANYA@", TRAINERTYPE_MOVES
	db 23, CUBONE, ANCIENTPOWER, BONEMERANG, HEADBUTT, NO_MOVE
	db 23, NIDORINO, POISON_STING, ROCK_SMASH, BITE, COUNTER
	db 23, CHARMELEON, ANCIENTPOWER, FIRE_PUNCH, BITE, ROCK_SMASH
	db 24, KANGASKHAN, HEADBUTT, COUNTER, BITE, DOUBLESLAP
	db 24, CROCONAW, AQUA_JET, ANCIENTPOWER, BITE, ICE_PUNCH
	db -1 

CooltrainerMGroup:
	; COOLTRAINER_M (1)
	db "LEON@", TRAINERTYPE_MOVES
	db 23, MACHOKE, HEADBUTT, PURSUIT, KARATE_CHOP, LEER
	db 23, ARBOK, HEADBUTT, ACID, SCREECH, GLARE
	db 23, GRANBULL, HEADBUTT, CHARM, LICK, BITE
	db 23, SANDSLASH, HEADBUTT, BULLDOZE, POISON_STING, SAND_ATTACK
	db 24, HYPNO, HEADBUTT, CONFUSION, POISON_GAS, CALM_MIND
	db -1 

BeautyGroup:
	; BEAUTY (1)
	db "LILY@", TRAINERTYPE_NORMAL
	db 14, ODDISH
	db 15, SUNFLORA
	db 17, BAYLEEF
	db -1 ; end
	
	; BEAUTY (2)
	db "BLAZE@", TRAINERTYPE_MOVES
	db 24, TEDDIURSA,  ROCK_SMASH, FAINT_ATTACK, LEER, FURY_SWIPES
	db 24, SANDSHREW,  ROCK_SMASH, ROLLOUT, BULLDOZE, SAND_ATTACK
	db -1 ; end

	; BEAUTY (3)
	db "JILL@", TRAINERTYPE_NORMAL
	db 23, CLEFAIRY
	db 23, JIGGLYPUFF
	db 23, SNUBBULL
	db 24, EXEGGCUTE
	db -1 ; end

	; BEAUTY (4)
	db "TRACEY@", TRAINERTYPE_NORMAL
	db 22, AIPOM
	db 23, PIDGEOTTO
	db 23, PIKACHU
	db 23, MARILL
	db -1 ; end
	
PokemaniacGroup:
	; POKEMANIAC (1)
	db "CHARLIE@", TRAINERTYPE_NORMAL
	db 25, UMBREON
	db 25, NYANELL
	db 25, CROBAT
	db -1

	; POKEMANIAC (2)
	db "SCOTT@", TRAINERTYPE_NORMAL
	db 23, CUBONE
	db 23, SANDSHREW
	db 23, KANGASKHAN
	db 23, NIDORINO
	db -1
	
	; POKEMANIAC (3)
	db "DYLAN@", TRAINERTYPE_NORMAL
	db 23, SLOWPOKE
	db 23, SLOWPOKE
	db 23, NIDORINO
	db 23, CHARMELEON
	db -1
	
	; POKEMANIAC (4)
	db "TRENT@", TRAINERTYPE_NORMAL
	db 23, CUBONE
	db 25, NIDORINO
	db 25, NIDORINA
	db 27, CUBONE
	db 28, KANGASKHAN
	db -1

GruntMGroup:

GentlemanGroup:

SkierGroup:

TeacherGroup:
	; TEACHER (1)
	db "ANDREA@", TRAINERTYPE_NORMAL
	db 23, RINRING
	db 23, FEAROW
	db 23, ARBOK
	db -1

SabrinaGroup:
	; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_MOVES
	db 46, ESPEON,     SAND_ATTACK, QUICK_ATTACK, SWIFT, PSYCHIC_M
	db 46, MR__MIME,   BARRIER, REFLECT, BATON_PASS, PSYCHIC_M
	db 48, ALAKAZAM,   RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db -1 ; end

BugCatcherGroup:
	; BUG_CATCHER (1)
	db "LIAM@", TRAINERTYPE_NORMAL
	db  9, VENONAT
	db 11, SPINARAK
	db -1 ; end
	
	; BUG_CATCHER (2)
	db "EDDIE@", TRAINERTYPE_NORMAL
	db 18, YANMA
	db -1 ; end
	
	; BUG_CATCHER (3)
	db "OWEN@", TRAINERTYPE_NORMAL
	db 23, HERACROSS
	db 24, ARIADOS
	db 24, VENONAT
	db -1
	
	; BUG_CATCHER (4)
	db "LONNIE@", TRAINERTYPE_NORMAL
	db 23, PINSIR
	db 24, ARIADOS
	db 24, PARASECT
	db -1
	
FisherGroup:
	; FISHER (1)
	db "BRADY@", TRAINERTYPE_NORMAL
	db 17, REMORAID
	db 19, SHELLDER
	db -1
	
	; FISHER (2)
	db "NELSON@", TRAINERTYPE_NORMAL
	db 17, MAGIKARP
	db 17, MAGIKARP
	db 19, GOLDEEN
	db -1
	
	; FISHER (3)
	db "LEO@", TRAINERTYPE_NORMAL
	db 20, GOLDEEN
	db 20, REMORAID
	db -1
	
	; FISHER (4)
	db "MARSHALL@", TRAINERTYPE_NORMAL
	db 21, SLOWPOKE
	db 20, MAGIKARP
	db 20, MAGIKARP
	db 20, GYARADOS
	db -1
	
SwimmerMGroup:
	; SWIMMERM (1)
	db "VINNY@", TRAINERTYPE_NORMAL
	db 16, KRABBY
	db -1 ; end
	
	; SWIMMERM (2)
	db "JIMMY@", TRAINERTYPE_NORMAL
	db 18, WOOPER
	db -1 ; end

	; SWIMMERM (3)
	db "RONNIE@", TRAINERTYPE_NORMAL
	db 17, TENTACOOL
	db -1 ; end

SwimmerFGroup:
	; SWIMMERF (1)
	db "VIVIAN@", TRAINERTYPE_NORMAL
	db 15, POLIWAG
	db 15, SHELLDER
	db -1 ; end

	; SWIMMERF (2)
	db "KAIT@", TRAINERTYPE_NORMAL
	db 18, CROCONAW
	db 20, QUAGSIRE
	db -1

SailorGroup:
	; SAILOR (1)
	db "CALVIN@", TRAINERTYPE_NORMAL
	db 17, HORSEA
	db 17, CHINCHOU
	db 19, SMOLA
	db -1
	
	; SAILOR (2)
	db "JEREMY@", TRAINERTYPE_NORMAL
	db 18, KRABBY
	db 18, HORSEA
	db 18, MACHOP
	db -1
	
	; SAILOR (3)
	db "MILES@", TRAINERTYPE_NORMAL
	db 18, TENTACOOL
	db 20, SHUCKLE
	db -1
	
	; SAILOR (4)
	db "ROLAND@", TRAINERTYPE_NORMAL
	db 18, POLIWAG
	db 18, STARYU
	db -1

SuperNerdGroup:
	; SUPER_NERD (1)
	db "SHANE@", TRAINERTYPE_NORMAL
	db 22, GRIMER
	db 23, NIDORINA
	db 22, BEEDRILL
	db -1

	; SUPER_NERD (1)
	db "STEVEN@", TRAINERTYPE_NORMAL
	db 20, NOCTOWL
	db 22, GROWLITHE
	db 23, CUBBOLT
	db -1
	
	; SUPER_NERD (3)
	db "PETER@", TRAINERTYPE_NORMAL
	db 30, MUK
	db 30, WEEZING
	db 30, ELECTRODE
	db 30, SEAKING
	db 32, PORYGON
	db -1
	
Rival2Group:
	; RIVAL2 (1)
	db "?@", TRAINERTYPE_MOVES
	db 41, TUNGTYED,    QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42, GOLBAT,     LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41, MAGNETON,   THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43, GENGAR,     MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43, ALAKAZAM,   DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45, MEGANIUM,   RAZOR_LEAF, POISONPOWDER, BODY_SLAM, LIGHT_SCREEN
	db -1 ; end

	; RIVAL2 (2)
	db "?@", TRAINERTYPE_MOVES
	db 41, TUNGTYED,    QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42, GOLBAT,     LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41, MAGNETON,   THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43, GENGAR,     MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43, ALAKAZAM,   DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45, TYPHLOSION, SMOKESCREEN, QUICK_ATTACK, FLAME_WHEEL, SWIFT
	db -1 ; end

	; RIVAL2 (3)
	db "?@", TRAINERTYPE_MOVES
	db 41, TUNGTYED,    QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42, GOLBAT,     LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41, MAGNETON,   THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43, GENGAR,     MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43, ALAKAZAM,   DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45, FERALIGATR, RAGE, WATER_GUN, SCARY_FACE, CUT
	db -1 ; end

	; RIVAL2 (4)
	db "?@", TRAINERTYPE_MOVES
	db 45, TUNGTYED,    QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48, CROBAT,     TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45, MAGNETON,   THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46, GENGAR,     MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46, ALAKAZAM,   RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50, MEGANIUM,   GIGA_DRAIN, BODY_SLAM, LIGHT_SCREEN, SAFEGUARD
	db -1 ; end

	; RIVAL2 (5)
	db "?@", TRAINERTYPE_MOVES
	db 45, TUNGTYED,    QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48, CROBAT,     TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45, MAGNETON,   THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46, GENGAR,     MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46, ALAKAZAM,   RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50, TYPHLOSION, SMOKESCREEN, QUICK_ATTACK, FIRE_BLAST, SWIFT
	db -1 ; end

	; RIVAL2 (6)
	db "?@", TRAINERTYPE_MOVES
	db 45, TUNGTYED,    QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48, CROBAT,     TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45, MAGNETON,   THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46, GENGAR,     MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46, ALAKAZAM,   RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50, FERALIGATR, SURF, RAIN_DANCE, CUT, SCREECH
	db -1 ; end

GuitaristGroup:
	db "TOMAS@", TRAINERTYPE_NORMAL
	db 27, TEDDIURSA
	db -1 ; end
	
	db "PAUL@", TRAINERTYPE_NORMAL
	db 26, MANKEY
	db -1 ; end
	
	db "FREDRIK@", TRAINERTYPE_NORMAL
	db 26, NIDOKING
	db -1 ; end
	
	db "BRENDON@", TRAINERTYPE_NORMAL
	db 26, PINSIR
	db -1 ; end
	
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 26, GYARADOS
	db -1 ; end
	
	db "XAVIER@", TRAINERTYPE_NORMAL
	db 16, KADABRA
	db 18, NATU
	db 20, MR__MIME
	db -1
	
	db "TREVOR@", TRAINERTYPE_NORMAL
	db 25, HAUNTER
	db 26, HOUNDOUR
	db -1

	db "JOEL@", TRAINERTYPE_NORMAL
	db 24, GRIMER
	db 24, GRIMER
	db 26, KOFFING
	db 26, KOFFING
	db -1
	
	db "ANDY@", TRAINERTYPE_NORMAL
	db 26, HOUNDOUR
	db -1
	
	db "LEE@", TRAINERTYPE_NORMAL
	db 22, ARBOK
	db 24, MURKROW
	db 24, HOUNDOUR
	db -1
	
	db "MARCEL@", TRAINERTYPE_NORMAL
	db 26, HOUNDOUR
	db 26, GRIMER
	db -1
	
	db "IVAN@", TRAINERTYPE_NORMAL
	db 25, MURKROW
	db 26, KOFFING
	db -1
	
	db "CONRAD@", TRAINERTYPE_NORMAL
	db 25, EKANS
	db 26, HOUNDOUR
	db -1
	
	db "BOBBY@", TRAINERTYPE_NORMAL
	db 25, KOFFING
	db 25, HAUNTER
	db 27, RINRING
	db -1
	
HikerGroup:
	; HIKER (1)
	db "ADAM@", TRAINERTYPE_MOVES
	db 24, MACHOP,	ROCK_SMASH, LEER, PURSUIT, SEISMIC_TOSS
	db 24, GEODUDE, ROCK_SMASH, DEFENSE_CURL, ROLLOUT, BULLDOZE
	db -1 ; end

	; HIKER (2)
	db "EARL@", TRAINERTYPE_NORMAL
	db 25, GLIGAR
	db -1 ; end
	
	; HIKER (3)
	db "GRANT@", TRAINERTYPE_NORMAL
	db 24, OMANYTE
	db 24, KABUTO
	db -1 ; end
	
	; HIKER (4)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 24, MACHOP
	db 24, MANKEY
	db -1 ; emd
	
	; HIKER (5)
	db "JAY@", TRAINERTYPE_NORMAL
	db 23, ONIX
	db 23, CLEFAIRY
	db -1 ; end
	
	; HIKER (6)
	db "JACOB@", TRAINERTYPE_NORMAL
	db 25, DUNSPARCE
	db -1 ; end
	
	; HIKER (7)
	db "GEORGE@", TRAINERTYPE_NORMAL
	db 24, GEODUDE
	db 25, CUBONE
	db -1 ; end
	
	; HIKER (8)
	db "WARREN@", TRAINERTYPE_NORMAL
	db 23, GEODUDE
	db 23, CUBONE
	db 25, CLEFAIRY
	db -1 ; end
	
	; HIKER (9)
	db "RAY@", TRAINERTYPE_NORMAL
	db 27, ONIX
	db 25, RHYHORN
	db -1 ; end
	
	; HIKER (10)
	db "OMAR@", TRAINERTYPE_NORMAL
	db 17, CUBONE
	db 19, SANDSHREW
	db 20, PARAS
	db -1
	
	; HIKER (11)
	db "DEAN@", TRAINERTYPE_NORMAL
	db 17, CUBONE
	db 19, GEODUDE
	db 21, DIGLETT
	db -1
	
BikerGroup:
	; BIKER (1)
	db "JERRY@", TRAINERTYPE_NORMAL
	db 25, GOLBAT
	db 26, GRIMER
	db -1
	
	; BIKER (2)
	db "JARED@", TRAINERTYPE_NORMAL
	db 17, CUBONE
	db 19, ZUBAT
	db 21, GASTLY
	db 21, DROWZEE
	db -1

BlaineGroup:
	; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_MOVES
	db 45, MAGCARGO,   CURSE, SMOG, FLAMETHROWER, ROCK_SLIDE
	db 45, MAGMAR,     THUNDERPUNCH, FIRE_PUNCH, SUNNY_DAY, CONFUSE_RAY
	db 50, RAPIDASH,   QUICK_ATTACK, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

BurglarGroup:
	; BURGLAR (1)
	db "ALLEN@", TRAINERTYPE_NORMAL
	db 25, RINRING
	db 26, MURKROW
	db -1
	
	; BURGLAR (2)
	db "LAMAAR@", TRAINERTYPE_MOVES
	db 23, SMOOCHUM,	POWDER_SNOW, CONFUSION, THIEF, SWEET_KISS
	db 23, GRANBULL,	THIEF, CHARM, TAIL_WHIP, SCARY_FACE
	db 23, MANKEY,		SWAGGER, THIEF, SEISMIC_TOSS, KARATE_CHOP
	db 23, AIPOM,		FURY_SWIPES, SAND_ATTACK, THIEF, SWIFT
	db -1
	
	; BURGLAR (3)
	db "AVERY@", TRAINERTYPE_MOVES
	db 26, KOFFING,		SLUDGE, THIEF, SMOKESCREEN, HAZE
	db 26, HOUNDOUR,	FIRE_SPIN, LEER, SMOG, THIEF
	db -1

	; BURGLAR (4)
	db "MARCUS@", TRAINERTYPE_MOVES
	db 25, GRIMER,		THIEF, MINIMIZE, SLUDGE, DISABLE
	db 26, MANKEY,		THIEF, SEISMIC_TOSS, KARATE_CHOP, SWAGGER
	db -1
	
	; BURGLAR (5)
	db "HARVEY@", TRAINERTYPE_MOVES
	db 25, CUBONE,		BONEMERANG, HEADBUTT, THIEF, NO_MOVE
	db 25, SHIFUR,		METAL_CLAW, ICY_WIND, QUICK_ATTACK, THIEF
	db -1
	
	; BURGLAR (6)
	db "MANUEL@", TRAINERTYPE_MOVES
	db 25, QUAGSIRE,	BODY_SLAM, THIEF, MUD_SLAP, WATER_GUN
	db 25, AIPOM,		FURY_SWIPES, SAND_ATTACK, THIEF, SWIFT
	db -1
	
	; BURGLAR (7)
	db "SHAWN@", TRAINERTYPE_MOVES
	db 25, MURKROW,		THIEF, NIGHT_SHADE, WING_ATTACK, HAZE
	db 25, TEDDIURSA,	THIEF, FURY_SWIPES, LEER, NO_MOVE
	db 25, GLIGAR,		THIEF, QUICK_ATTACK, SAND_ATTACK, POISON_STING
	db -1
	
	; BURGLAR (8)
	db "DUKE@", TRAINERTYPE_MOVES
	db 23, VOLTORB,		THIEF, SCREECH, SPARK, SONICBOOM
	db 25, SMOOCHUM,	THIEF, CONFUSION, SING, POWDER_SNOW
	db -1
	
FirebreatherGroup:
	; FIREBREATHER (1)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 19, GROWLITHE
	db 20, SEARION
	db -1
	
	; FIREBREATHER (2)
	db "ROBIN@", TRAINERTYPE_NORMAL
	db 19, MR__MIME
	db 21, HOUNDOUR
	db -1
	
JugglerGroup:
	; JUGGLER (1)
	db "ROBERT@", TRAINERTYPE_NORMAL
	db 18, JIGGLYPUFF
	db 20, MR__MIME
	db -1

BlackbeltGroup:
	; BLACKBELT_T (1)
	db "BILLY@", TRAINERTYPE_MOVES
	db 13, MACHOP,	ROCK_SMASH, LEER, FOCUS_ENERGY, LOW_KICK
	db -1 ; end
	
	; BLACKBELT_T (2)
	db "JIMMY@", TRAINERTYPE_MOVES
	db 13, MACHOP,	ROCK_SMASH, LEER, FOCUS_ENERGY, LOW_KICK
	db -1 ; end
	
	; BLACKBELT_T (3)
	db "AXEL@", TRAINERTYPE_MOVES
	db 25, MANKEY,	ROCK_SMASH, FOCUS_ENERGY, FAINT_ATTACK, KARATE_CHOP
	db 25, HERACROSS, ROCK_SMASH, HORN_ATTACK, LEER, ENDURE
	db -1 ; end
	
	; BLACKBELT_T (4)
	db "CLINT@", TRAINERTYPE_NORMAL
	db 19, GEODUDE
	db 19, MACHOP
	db 20, MANKEY
	db -1

ExecutiveMGroup:

PsychicGroup:
	; PSYCHIC_T (1)
	db "PARKER@", TRAINERTYPE_NORMAL
	db 16, KADABRA
	db 21, DROWZEE
	db -1
	
	; PSYCHIC_T (3)
	db "CHRISTIAN@", TRAINERTYPE_NORMAL
	db 18, CLEFAIRY
	db 20, CLEFABLE
	db -1
	
	; PSYCHIC_T (2)
	db "DAMIEN@", TRAINERTYPE_NORMAL
	db 16, KADABRA
	db 21, STARYU
	db -1
	
PicnickerGroup:
	; PICKNICKER (1)
	db "JAMIE@", TRAINERTYPE_NORMAL
	db 9, NIDORAN_F
	db -1 ; end
	
	; PICNICKER (2)
	db "CINDY@", TRAINERTYPE_NORMAL
	db 12, TEDDIURSA
	db 12, TEDDIURSA
	db -1 ; end
	
	; PICNICKER (3)
	db "JESS@", TRAINERTYPE_NORMAL
	db 12, SPEAROW
	db 13, POLIWAG
	db 16, NIDORINA
	db -1 ; end

CamperGroup:
	; CAMPER (1)
	db "NICHOLAS@", TRAINERTYPE_NORMAL
	db 8, NIDORAN_M
	db 9, MEOWTH
	db -1 ; end
	
	; CAMPER (2)
	db "JAMES@", TRAINERTYPE_NORMAL
	db 12, SPEAROW
	db 13, MANKEY
	db 16, NIDORINO
	db -1 ; end
	
	; CAMPER (3)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 23, POLIWAG
	db 23, NATU
	db 25, GLIGAR
	db -1 ; end
	
	; CAMPER (4)
	db "NATE@", TRAINERTYPE_NORMAL
	db 14, EKANS
	db -1

ExecutiveFGroup:

SageGroup:
	; SAGE (1)
	db "ABBOT@", TRAINERTYPE_MOVES
	db 25, HAUNTER,		CONFUSE_RAY, LICK, THIEF, NIGHT_SHADE
	db 26, KADABRA,		CONFUSION, DISABLE, THIEF, TELEPORT
	db 26, DROWZEE,		CALM_MIND, PSYBEAM, THIEF, DISABLE
	db 27, GREMINI,		PURSUIT, CONFUSE_RAY, THIEF, DOUBLE_TEAM
	db -1
	
	; SAGE (2)
	db "CALEB@", TRAINERTYPE_MOVES
	db 23, ARIADOS,		SCARY_FACE, POISON_STING, THIEF, NIGHT_SHADE
	db 25, GOLBAT,		THIEF, WING_ATTACK, CONFUSE_RAY, SLUDGE
	db -1
	
	; SAGE (3)
	db "LO@", TRAINERTYPE_MOVES
	db 23, DROWZEE,		THIEF, HEADBUTT, POISON_GAS, HYPNOSIS
	db 26, KOFFING,		SLUDGE, THIEF, SMOKESCREEN, EXPLOSION
	db -1

MediumGroup:

BoarderGroup:

PokefanMGroup:

KimonoGirlGroup:

TwinsGroup:
	; TWINS (1)
	db "FAYE & MAE@", TRAINERTYPE_NORMAL
	db 27, WEEPINBELL
	db 27, GLOOM
	db -1
	
	; TWINS (2)
	db "FAYE & MAE@", TRAINERTYPE_NORMAL
	db 27, GLOOM
	db 27, WEEPINBELL
	db -1

PokefanFGroup:
	; POKEFANF (1)
	db "ELANE@", TRAINERTYPE_ITEM
	db 27, PHANPY,		BERRY
	db 27, HOPPIP,		BERRY
	db 28, SHIFUR,		BERRY
	db 30, MARILL,		BERRY
	db -1	

RedGroup:
	; RED (1)
	db "RED@", TRAINERTYPE_MOVES
	db 81, PIKACHU,    CHARM, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 73, ESPEON,     MUD_SLAP, REFLECT, SWIFT, PSYCHIC_M
	db 75, SNORLAX,    AMNESIA, SNORE, REST, BODY_SLAM
	db 77, VENUSAUR,   SUNNY_DAY, GIGA_DRAIN, SYNTHESIS, SOLARBEAM
	db 77, CHARIZARD,  FLAMETHROWER, WING_ATTACK, CUT, FIRE_SPIN
	db 77, BLASTOISE,  RAIN_DANCE, SURF, BLIZZARD, WHIRLPOOL
	db -1 ; end

BlueGroup:
	; BLUE (1)
	db "BLUE@", TRAINERTYPE_MOVES
	db 56, PIDGEOT,    QUICK_ATTACK, WHIRLWIND, WING_ATTACK, MIRROR_MOVE
	db 54, ALAKAZAM,   DISABLE, RECOVER, PSYCHIC_M, REFLECT
	db 56, RHYDON,     FURY_ATTACK, SANDSTORM, ROCK_SLIDE, EARTHQUAKE
	db 58, GYARADOS,   TWISTER, HYDRO_PUMP, RAIN_DANCE, HYPER_BEAM
	db 58, EXEGGUTOR,  SUNNY_DAY, LEECH_SEED, EGG_BOMB, SOLARBEAM
	db 58, ARCANINE,   ROAR, SWIFT, FLAMETHROWER, EXTREMESPEED
	db -1 ; end

OfficerGroup:

GruntFGroup:

MysticalmanGroup:
	; MYSTICALMAN (1)
	db "EUSINE@", TRAINERTYPE_MOVES
	db 23, DROWZEE,    DREAM_EATER, HYPNOSIS, DISABLE, CONFUSION
	db 23, HAUNTER,    LICK, HYPNOSIS, MEAN_LOOK, CURSE
	db 25, ELECTRODE,  SCREECH, SONICBOOM, THUNDER, ROLLOUT
	db -1 ; end
