	const_def 2 ; object constants

Route12_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route12_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 12, ECRUTEAK_CITY, 6
	warp_event  4, 13, ECRUTEAK_CITY, 7

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
