	const_def 2 ; object constants
	const MAPLESLAB_MAPLE
	const MAPLESLAB_MAPLES_AIDE
	const MAPLESLAB_POKE_BALL1
	const MAPLESLAB_POKE_BALL2
	const MAPLESLAB_POKE_BALL3
	const MAPLESLAB_GAMEBOY_KID
	const MAPLESLAB_LASS
	const MAPLESLAB_YOUNGSTER
	const MAPLESLAB_PAPER1
	const MAPLESLAB_PAPER2

MaplesLab_MapScripts:
	db 6 ; scene scripts
	scene_script .MeetMaple ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_MAPLESLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_MAPLESLAB_NOTHING
	scene_script .DummyScene3 ; SCENE_MAPLESLAB_MEET_OFFICER
	scene_script .DummyScene4 ; SCENE_MAPLESLAB_UNUSED
	scene_script .DummyScene5 ; SCENE_MAPLESLAB_AIDE_GIVES_POTION

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .WateredPlant

.MeetMaple:
	priorityjump .WalkUpToMaple
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end

.DummyScene5:
	end

.WalkUpToMaple:
	applymovement PLAYER, MaplesLab_WalkUpToMapleMovement
	showemote EMOTE_SHOCK, MAPLESLAB_MAPLE, 15
	turnobject MAPLESLAB_MAPLE, DOWN
	opentext
	writetext MapleText_Intro
.MustSayYes:
	yesorno
	iftrue .MapleGetsEmail
	writetext MapleText_Refused
	jump .MustSayYes

.MapleGetsEmail:
	writetext MapleText_Splendid
	writetext MapleText_ChooseAPokemon
	waitbutton
	setscene SCENE_MAPLESLAB_CANT_LEAVE
	closetext
	end
	
.WateredPlant:
	checkevent EVENT_GOT_TM_CUT
	iftrue .WaterPlant
	return
	
.WaterPlant:
	changeblock 8, 0, $3f
	return

ProfMapleScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_MAPLE
	iffalse ChooseAPokemon
	writetext MapleDescribesLeagueText
	waitbutton
	closetext
	end
	
ChooseAPokemon
	writetext MapleText_ChooseAPokemon
	waitbutton
	closetext
	end

LabTryToLeaveScript:
	turnobject MAPLESLAB_MAPLE, DOWN
	opentext
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, MaplesLab_CantLeaveMovement
	end

CharmanderPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_MAPLE
	iftrue LookAtMaplePokeBallScript
	turnobject MAPLESLAB_MAPLE, DOWN
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext TakeCharmanderText
	yesorno
	iffalse DidntChooseStarterScript
	disappear MAPLESLAB_POKE_BALL1
	setevent EVENT_GOT_CHARMANDER_FROM_MAPLE
	writetext ChoseCharmanderText
	buttonsound
	waitsfx
	pokenamemem CHARMANDER, MEM_BUFFER_0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHARMANDER, 10, BERRY
	closetext
	checkcode VAR_FACING
	ifequal RIGHT, MapleAfterStarterScript
	applymovement PLAYER, AfterCharmanderMovement
	jump MapleAfterStarterScript

SquirtlePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_MAPLE
	iftrue LookAtMaplePokeBallScript
	turnobject MAPLESLAB_MAPLE, DOWN
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext TakeSquirtleText
	yesorno
	iffalse DidntChooseStarterScript
	disappear MAPLESLAB_POKE_BALL2
	setevent EVENT_GOT_SQUIRTLE_FROM_MAPLE
	writetext ChoseSquirtleText
	buttonsound
	waitsfx
	pokenamemem SQUIRTLE, MEM_BUFFER_0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke SQUIRTLE, 10, BERRY
	closetext
	applymovement PLAYER, AfterSquirtleMovement
	jump MapleAfterStarterScript

BulbasaurPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_MAPLE
	iftrue LookAtMaplePokeBallScript
	turnobject MAPLESLAB_MAPLE, DOWN
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext TakeBulbasaurText
	yesorno
	iffalse DidntChooseStarterScript
	disappear MAPLESLAB_POKE_BALL3
	setevent EVENT_GOT_BULBASAUR_FROM_MAPLE
	writetext ChoseBulbasaurText
	buttonsound
	waitsfx
	pokenamemem BULBASAUR, MEM_BUFFER_0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke BULBASAUR, 10, BERRY
	closetext
	checkcode VAR_FACING
	ifequal LEFT, .StandingLeft
	applymovement PLAYER, AfterBulbasaurMovement
	jump MapleAfterStarterScript
	
.StandingLeft:
	turnobject PLAYER, UP
	jump MapleAfterStarterScript

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

MapleAfterStarterScript:
	turnobject PLAYER, UP
	opentext
	writetext MapleText_LetYourMonBattleIt
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_MAPLE
	setevent EVENT_RIVAL_CHERRYGROVE_CITY
	setscene SCENE_MAPLESLAB_AIDE_GIVES_POTION
	setmapscene CHERRYGROVE_CITY, SCENE_CHERRYGROVECITY_MEET_RIVAL
	setmapscene PLAYERS_HOUSE_1F, SCENE_FINISHED
	end

MapleDescribesLeagueScript:
	writetext MapleDescribesLeagueText
	waitbutton
	closetext
	end

LookAtMaplePokeBallScript:
	opentext
	writetext MaplePokeBallText
	waitbutton
	closetext
	end

AideScript_WalkPotion1:
	turnobject MAPLESLAB_MAPLES_AIDE, RIGHT
	showemote EMOTE_SHOCK, MAPLESLAB_MAPLES_AIDE, 15
	opentext
	writetext AideText_WaitUp
	waitbutton
	closetext	
	applymovement MAPLESLAB_MAPLES_AIDE, AideWalksRight1
	turnobject PLAYER, UP
	scall AideScript_GivePotion
	applymovement MAPLESLAB_MAPLES_AIDE, AideWalksLeft1
	end

AideScript_WalkPotion2:
	turnobject MAPLESLAB_MAPLES_AIDE, RIGHT
	showemote EMOTE_SHOCK, MAPLESLAB_MAPLES_AIDE, 15
	opentext
	writetext AideText_WaitUp
	waitbutton
	closetext	
	applymovement MAPLESLAB_MAPLES_AIDE, AideWalksRight2
	turnobject PLAYER, UP
	scall AideScript_GivePotion
	applymovement MAPLESLAB_MAPLES_AIDE, AideWalksLeft2
	end

AideScript_GivePotion:
	opentext
	writetext AideText_GivePokedex
	writetext MapleText_MissionFromMrPokemon
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	writetext AideText_AlwaysBusy
	buttonsound
	writetext AideText_GiveYouPokeballs
	buttonsound
	itemtotext POKE_BALL, MEM_BUFFER_1
	scall AideScript_ReceiveTheBalls
	giveitem POKE_BALL, 5
	writetext AideText_CatchTips
	waitbutton
	
	closetext
	setscene SCENE_MAPLESLAB_NOTHING
	end

AideScript_ReceiveTheBalls:
	jumpstd receiveitem
	end

MaplesAideScript:
	faceplayer
	checkevent EVENT_GOT_TM_CUT
	iftrue .MapleGettingOrganized
	checkevent EVENT_GOT_A_POKEMON_FROM_MAPLE
	iffalse .MaplesAideNoMon
	checkflag ENGINE_POKEDEX
	iffalse AideScript_GivePotion
	jumptext AideText_CatchTips
	
.MaplesAideNoMon:
	jumptext AideText_SoExcited
	
.MapleGettingOrganized:
	jumptext AideText_MapleOrganized

MaplesLabLass:
	jumptextfaceplayer MaplesLabLassText
	
MaplesLabBugCatcher:
	opentext
	writetext MaplesLabBugCatcherText1
	waitbutton
	faceplayer
	writetext MaplesLabBugCatcherText2
	waitbutton
	turnobject LAST_TALKED, UP
	closetext
	end
	
MaplesLabGameboyKid:
	jumptextfaceplayer MaplesLabGameboyKidText

MaplesLabBookshelf:
	jumpstd difficultbookshelf

MaplesLabPlant:
	checkevent EVENT_GOT_TM_CUT
	iftrue .WateredPlant
	jumptext MaplesLabPlantText
	
.WateredPlant:
	jumptext MaplesLabWateredPlantText
	
MaplesLabBook:
	jumptext MaplesLabBookText
	
MaplesLabShifurBook:
	refreshscreen
	pokepic SHIFUR
	waitbutton
	closepokepic
	writebyte SHIFUR
	special SetSeenMon
	jumptext MaplesLabPictureBook

MaplesLab_WalkUpToMapleMovement:
	step UP
	step UP
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

MaplesLab_CantLeaveMovement:
	step UP
	step_end

AideWalksRight2:
	run_step RIGHT

AideWalksRight1:
	run_step RIGHT
	run_step RIGHT
	turn_head DOWN
	step_end

AideWalksLeft2:
	step LEFT

AideWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AfterCharmanderMovement:
	step RIGHT

AfterSquirtleMovement:
	step RIGHT

AfterBulbasaurMovement:
	step RIGHT
	step UP
	step_end

MapleText_Intro:
	text "MAPLE: <PLAY_G>!"
	line "Hello!"

	para "We've been set up"
	line "all day waiting"
	cont "for you."

	para "I bet you simply"
	line "can't wait to"
	cont "choose a #MON!"

	para "So!"

	para "Are you ready to"
	line "select a #MON"
	
	para "and begin your"
	line "journey as a"
	cont "#MON trainer?"
	done

MapleText_Refused:
	text "Don't lie."
	
	para "Your mother told"
	line "me how excited"
	cont "you've been!"
	
	para "So what do"
	line "you say?"
	done

MapleText_MissionFromMrPokemon:
	text "<PLAYER> received"
	line "#DEX!"
	done

MapleText_Splendid:
	text "Splendid!"
	prompt

MapleText_ChooseAPokemon:
	text "You can select any"
	line "one of the"

	para "#MON contained"
	line "in these BALLS."

	para "You'll be that"
	line "#MON's first"
	cont "partner, <PLAY_G>!"

	para "Go on. Pick one!"
	done

MapleText_LetYourMonBattleIt:
	text "Now, the best way"
	line "to grow close with"
	cont "your new partner"
	cont "is to send it out"
	cont "into battle."
	
	para "<……><……><……>"
	
	para "Oh, don't worry!"
	
	para "#MON are fine"
	line "with battling"
	cont "alongside people."
	cont "In fact, some live"
	cont "for it!"
	
	para "If you want to see"
	line "for yourself, try"
	cont "talking to some of"
	cont "the trainers on"
	cont "ROUTE 2. They are"
	cont "always looking for"
	cont "a battle!"
	done

LabWhereGoingText:
	text "MAPLE: Wait! Where"
	line "are you going?"
	done

TakeCharmanderText:
	text "MAPLE: You'll take"
	line "CHARMANDER, the"
	cont "fire #MON?"
	done

TakeSquirtleText:
	text "MAPLE: Do you want"
	line "SQUIRTLE, the"
	cont "water #MON?"
	done

TakeBulbasaurText:
	text "MAPLE: So, you"
	line "like BULBASAUR,"
	cont "the grass #MON?"
	done

DidntChooseStarterText:
	text "MAPLE: Think it"
	line "over carefully."

	para "Your first partner"
	line "is important!"
	done

ChoseCharmanderText:
	text "MAPLE: Wow! That"
	line "one is quite the"
	cont "popular #MON!"
	done
	
ChoseSquirtleText:
	text "MAPLE: Hm… I did"
	line "not expect you to"
	cont "pick that #MON."
	done
	
ChoseBulbasaurText:
	text "MAPLE: You must"
	line "have aspirations"
	cont "of being number 1!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

MapleDirectionsText3:
	text "Best of luck on"
	line "your adventure!"
	
	para "I'm sure you and"
	line "your #MON will"
	cont "form a truly"
	cont "special bond."
	done

MapleDescribesLeagueText:
	text "Now that you have"
	line "a #MON of your"
	cont "own, you may take"
	cont "part in the"
	cont "#MON LEAGUE"
	cont "challenge!"

	para "To qualify, you"
	line "must collect 8"
	cont "BADGES from GYM"
	cont "LEADERS."
	
	para "The closest GYM"
	line "is in PECTINIA"
	cont "CITY. Check your"
	cont "TOWN MAP if you"
	cont "get lost!"
	done

MaplePokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.MAPLE."
	done

AideText_GiveYouPokeballs:
	text "Here, these will"
	line "also be useful to"
	cont "a new trainer."
	done

AideText_SoExcited:
	text "Not everyone gets"
	line "to pick one of our"
	cont "#MON to start"
	cont "out. You're very"
	cont "lucky."
	done
	
AideText_WaitUp:
	text "Wait, <PLAYER>!"
	line "Don't leave yet!"
	done
	
AideText_GivePokedex:
	text "PROF. MAPLE forgot"
	line "to give you this!"
	prompt

AideText_AlwaysBusy:
	text "A #DEX is one"
	line "of the most impor-"
	cont "tant tools for a"
	cont "trainer to have!"
	
	para "It will record"
	line "information on any"
	cont "#MON that you"
	cont "encounter."

	para "…You'll have to"
	line "excuse her, PROF."
	cont "MAPLE is still"
	cont "rather young and"
	cont "disorganized."
	
	para "I always have my"
	line "hands full trying"
	cont "to help out how-"
	cont "ever I can."
	done
	
AideText_CatchTips:
	text "You will need to"
	line "weaken a #MON"
	cont "before you are"
	cont "able to catch it."
	
	para "A strong #MON"
	line "may break free!"
	done

AideText_MapleOrganized:
	text "Oh, <PLAYER>!" 
	line "Nice to see you"
	cont "stop by!"

	para "PROF. MAPLE has"
	line "matured greatly"
	cont "since you first"
	cont "left here with"
	cont "your #MON."
	
	para "Not needing to"
	line "correct her mis-"
	cont "takes has made my"
	cont "job easier!"
	done

MaplesLabTravelTip1Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 1:"

	para "Press START to"
	line "open the MENU."
	done

MaplesLabTravelTip2Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 2:"

	para "Record your trip"
	line "with SAVE!"
	done

MaplesLabTravelTip3Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 3:"

	para "Open your PACK and"
	line "press SELECT to"
	cont "move items."
	done

MaplesLabTravelTip4Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 4:"

	para "Check your #MON"
	line "moves. Press the"

	para "A Button to switch"
	line "moves."
	done

MaplesLabTrashcanText:
	text "The wrapper from"
	line "the snack PROF.MAPLE"
	cont "ate is in there…"
	done

MaplesLabPCText:
	text "OBSERVATIONS ON"
	line "#MON EVOLUTION"

	para "…It says on the"
	line "screen…"
	done
	
MaplesLabBookText:
	text "It looks like a"
	line "book all about"
	cont "#MON."
	done
	
MaplesLabPlantText:
	text "This plant doesn't"
	line "look too good."
	
	para "Did someone forget"
	line "to water it?"
	done
	
MaplesLabWateredPlantText:
	text "This plant must be"
	line "getting lots of"
	cont "attention."
	
	para "It looks so"
	line "lively!"
	done
	
MaplesLabPictureBook:
	text "This looks like"
	line "a newly-discovered"
	cont "#MON!"
	done
	
MaplesLabLassText:
	text "If your #MON"
	line "get hurt, you"
	cont "should visit the"
	cont "PAVONA INN."
	
	para "My big sister runs"
	line "it!"
	done
	
MaplesLabBugCatcherText1:
	text "Hmm..."
	
	para "It says here that"
	line "SHIFUR is weak to"
	cont "FIRE and FIGHTING-"
	cont "type moves."
	done
	
MaplesLabBugCatcherText2:
	text "Have you ever seen"
	line "one? It looks"
	cont "really cool!"
	done
	
MaplesLabGameboyKidText:
	text "This is amazing!"
	
	para "They got every"
	line "character I could"
	cont "ever want in this"
	cont "game. Even the"
	cont "ones that nobody"
	cont "thought would ever"
	cont "happen!"
	done

MaplesLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, CHERRYGROVE_CITY, 3
	warp_event  5, 11, CHERRYGROVE_CITY, 3

	db 4 ; coord events
	coord_event  4, 11, SCENE_MAPLESLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  5, 11, SCENE_MAPLESLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  4, 11, SCENE_MAPLESLAB_AIDE_GIVES_POTION, AideScript_WalkPotion1
	coord_event  5, 11, SCENE_MAPLESLAB_AIDE_GIVES_POTION, AideScript_WalkPotion2

	db 14 ; bg events
	bg_event  0,  1, BGEVENT_READ, MaplesLabBookshelf
	bg_event  1,  1, BGEVENT_READ, MaplesLabBookshelf
	bg_event  2,  1, BGEVENT_READ, MaplesLabBookshelf
	bg_event  3,  1, BGEVENT_READ, MaplesLabBookshelf
	bg_event  0,  5, BGEVENT_READ, MaplesLabBookshelf
	bg_event  1,  5, BGEVENT_READ, MaplesLabBookshelf
	bg_event  2,  5, BGEVENT_READ, MaplesLabBookshelf
	bg_event  6,  7, BGEVENT_READ, MaplesLabBookshelf
	bg_event  7,  7, BGEVENT_READ, MaplesLabBookshelf
	bg_event  8,  7, BGEVENT_READ, MaplesLabBookshelf
	bg_event  9,  7, BGEVENT_READ, MaplesLabBookshelf
	bg_event  8,  3, BGEVENT_READ, MaplesLabShifurBook
	bg_event  8,  9, BGEVENT_READ, MaplesLabBook
	bg_event  9,  1, BGEVENT_READ, MaplesLabPlant

	db 8 ; object events
	object_event  3,  6, SPRITE_PROFESSOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ProfMapleScript, -1
	object_event  2, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MaplesAideScript, -1
	object_event  0,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CharmanderPokeBallScript, EVENT_CHARMANDER_POKEBALL_IN_MAPLES_LAB
	object_event  1,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SquirtlePokeBallScript, EVENT_SQUIRTLE_POKEBALL_IN_MAPLES_LAB
	object_event  2,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BulbasaurPokeBallScript, EVENT_BULBASAUR_POKEBALL_IN_MAPLES_LAB
	object_event  7,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MaplesLabGameboyKid, -1
	object_event  8, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MaplesLabLass, -1
	object_event  8,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MaplesLabBugCatcher, -1
