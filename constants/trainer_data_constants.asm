; Trainer party types (see engine/battle/read_trainer_party.asm)
	const_def
	shift_const TRAINERTYPE_MOVES     ; bit 0
	shift_const TRAINERTYPE_DVS       ; bit 1
	shift_const TRAINERTYPE_STAT_EXP  ; bit 2
	shift_const TRAINERTYPE_NICKNAMES ; bit 3
; legacy value that is not simple flags
DEF TRAINERTYPE_MULTI_LEVELS EQU $FF
