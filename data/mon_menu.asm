; MonMenuOptionStrings indexes
	const_def 1
	const MONMENUVALUE_STATS  ; 1
	const MONMENUVALUE_SWITCH ; 2
	const MONMENUVALUE_ITEM   ; 3
	const MONMENUVALUE_CANCEL ; 4
	const MONMENUVALUE_MOVE   ; 5
	const MONMENUVALUE_MAIL   ; 6
	const MONMENUVALUE_ERROR  ; 7

MonMenuOptionStrings:
; entries correspond to MONMENUVALUE_* constants
	db "STATS@"
	db "SWITCH@"
	db "ITEM@"
	db "CANCEL@"
	db "MOVES@"
	db "MAIL@"
	db "ERROR!@"

MonMenuOptions:
; category, item, value; actions are in PokemonActionSubmenu (see engine/pokemon/mon_menu.asm)
; moves
	db MONMENU_FIELD_MOVE, MONMENUITEM_CUT,        CUT
	db MONMENU_FIELD_MOVE, MONMENUITEM_FLY,        FLY
	db MONMENU_FIELD_MOVE, MONMENUITEM_SURF,       SURF
	db MONMENU_FIELD_MOVE, MONMENUITEM_STRENGTH,   STRENGTH
	db MONMENU_FIELD_MOVE, MONMENUITEM_DIG,        DIG
	db MONMENU_FIELD_MOVE, MONMENUITEM_TELEPORT,   TELEPORT
	db MONMENU_FIELD_MOVE, MONMENUITEM_SOFTBOILED, SOFTBOILED
	db MONMENU_FIELD_MOVE, MONMENUITEM_HEADBUTT,   HEADBUTT
	db MONMENU_FIELD_MOVE, MONMENUITEM_ROCKSMASH,  ROCK_SMASH
	db MONMENU_FIELD_MOVE, MONMENUITEM_MILKDRINK,  MILK_DRINK
	db MONMENU_FIELD_MOVE, MONMENUITEM_SWEETSCENT, SWEET_SCENT
; options
	db MONMENU_MENUOPTION, MONMENUITEM_STATS,      MONMENUVALUE_STATS
	db MONMENU_MENUOPTION, MONMENUITEM_SWITCH,     MONMENUVALUE_SWITCH
	db MONMENU_MENUOPTION, MONMENUITEM_ITEM,       MONMENUVALUE_ITEM
	db MONMENU_MENUOPTION, MONMENUITEM_CANCEL,     MONMENUVALUE_CANCEL
	db MONMENU_MENUOPTION, MONMENUITEM_MOVE,       MONMENUVALUE_MOVE
	db MONMENU_MENUOPTION, MONMENUITEM_MAIL,       MONMENUVALUE_MAIL
	db MONMENU_MENUOPTION, MONMENUITEM_ERROR,      MONMENUVALUE_ERROR
	db -1
