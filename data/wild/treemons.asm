TreeMons:
; entries correspond to TREEMON_SET_* constants
	dw TreeMonSet_Canyon
	dw TreeMonSet_City
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_Canyon:
TreeMonSet_City:
; common
	db 40, SPEAROW,    16
	db 25, RINRING,    17
	db 15, RINRING,    18
	db 10, AIPOM,      17
	db  5, AIPOM,      18
	db  5, AIPOM,      18
	db -1
; rare
	db 50, EKANS,      17
	db 15, HERACROSS,  14
	db 15, HERACROSS,  15
	db 10, AIPOM,      17
	db  5, AIPOM,      18
	db  5, AIPOM,      18
	db -1

TreeMonSet_Town:
; common
	db 50, SPEAROW,    15
	db 15, SPEAROW,    16
	db 15, SPEAROW,    18
	db 10, AIPOM,      16
	db  5, AIPOM,      17
	db  5, AIPOM,      17
	db -1
; rare
	db 50, SPEAROW,    10
	db 15, HERACROSS,  10
	db 15, HERACROSS,  10
	db 10, AIPOM,      10
	db  5, AIPOM,      10
	db  5, AIPOM,      10
	db -1

TreeMonSet_Route:
; common
	db 50, HOOTHOOT,   16
	db 15, SPINARAK,   17
	db 15, KAKUNA,     14
	db 10, EXEGGCUTE,  14
	db  5, EXEGGCUTE,  16
	db  5, EXEGGCUTE,  16
	db -1
; rare
	db 50, HOOTHOOT,   16
	db 15, PINECO,     17
	db 15, PINECO,     17
	db 10, EXEGGCUTE,  17
	db  5, EXEGGCUTE,  18
	db  5, EXEGGCUTE,  18
	db -1

TreeMonSet_Lake:
; common
	db 50, HOOTHOOT,   16
	db 15, VENONAT,    18
	db 15, HOOTHOOT,   17
	db 10, EXEGGCUTE,  13
	db  5, EXEGGCUTE,  13
	db  5, EXEGGCUTE,  18
	db -1
; rare
	db 50, HOOTHOOT,   16
	db 15, PINECO,     17
	db 15, PINECO,     17
	db 10, EXEGGCUTE,  14
	db  5, EXEGGCUTE,  14
	db  5, EXEGGCUTE,  17
	db -1

TreeMonSet_Forest:
; common
	db 50, PINECO,     16
	db 15, HOOTHOOT,   18
	db 15, HOOTHOOT,   19
	db 10, HERACROSS,  17
	db  5, HERACROSS,  14
	db  5, HERACROSS,  15
	db -1
; rare
	db 50, PINECO,     16
	db 15, HOOTHOOT,   18
	db 15, HOOTHOOT,   19
	db 10, AIPOM,      17
	db  5, AIPOM,      16
	db  5, AIPOM,      17
	db -1

TreeMonSet_Rock:
	db 50, GEODUDE,    10
	db 35, DIGLETT,    11
	db 10, SHUCKLE,    13
	db  5, DUNSPARCE,  12

TreeMonSet_Kanto:
	db 90, KRABBY,     16
	db 10, STARYU,     16
	db -1
