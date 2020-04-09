	const_def 2 ; object constants

Route22North_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route22NorthSign:
	jumptext Route22NorthSignText

Route22NorthSignText:
	text "ROUTE 22"
	
	para "ORCHID CITY"
	line "ahead."
	done

Route22North_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 29,  5, ROUTE_22_CAVE_1F, 6

	db 0 ; coord events

	db 1 ; bg events
	bg_event 17,  4, BGEVENT_READ, Route22NorthSign
	
	db 0 ; object events
