	const_def 2 ; object constants

OrchidCity_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

OrchidCity_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 19, 23, CARNATION_TOWN, 1
	
	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
