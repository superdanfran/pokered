; Point to mon last added mon data
; Usage: point_mon_data wEnemyMon1Part, [DATA_SIZE]
MACRO point_mon_data
	if _NARG == 1
		redef _data_size EQUS "wEnemyMon2 - wEnemyMon1"
	else
		redef _data_size EQUS "\2"
	endc
	ld a, [wEnemyPartyCount]

	push hl
	add_n_times_1_based \1, _data_size
	ld d, h
	ld e, l
	pop hl
ENDM
