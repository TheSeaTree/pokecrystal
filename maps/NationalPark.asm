	const_def 2 ; object constants

NationalPark_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NationalPark_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 10, 47, SAFARI_ZONE_GATE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
