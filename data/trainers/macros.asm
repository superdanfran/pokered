DEF _tr_class = 0
DEF _tr_def_in_progress = FALSE

; Usage: def_trainer_class <CLASS_CONSTANT>
; CLASS_CONSTANT is defined in trainer_constants.asm
MACRO def_trainer_class
	if _tr_def_in_progress
		fail "Can't define a new trainer class before finshing the current trainer with end_trainer"
	endc
	assert \1 == _tr_class, "Trainer class ID mismatch"
	def _tr_class += 1
	def _tr_party = 1
ENDM

; Usage: def_trainer <TRAINER_INDEX>, [PARTY_LEVEL]
; TRAINER_INDEX is 1-based
; PARTY_LEVEL is the level for the whole party, defaults to TRAINERTYPE_MULTI_LEVELS to set mon levels individually
MACRO def_trainer
	if _tr_def_in_progress
		fail "Can't define a new trainer before finishing the current one with end_trainer"
	endc
	; Reset trainer macro state.
	def _tr_flags = 0
	def _tr_mons = 0
	def _tr_nick_lengths = 0
	assert \1 == _tr_party, "Trainer party ID mismatch"
	if _NARG == 2
		def _tr_lv = \2
	else
		def _tr_lv = TRAINERTYPE_MULTI_LEVELS
	endc
	def _tr_size = 0
	def _tr_party += 1
	def _tr_def_in_progress = TRUE
ENDM

; Usage: tr_mon [LEVEL,] <SPECIES>
; LEVEL determines the level of the mon, it is required if trainer level was set to TRAINERTYPE_MULTI_LEVELS.
; SPECIES is the species.
MACRO tr_mon
	; First, reset all stale data from the previous Trainer's mons.
	def p = _tr_mons

	for i, 1, NUM_MOVES + 1
		def _tr_pk{d:p}_move{d:i} = NO_MOVE
	endr
	redef _tr_pk{d:p}_dvs EQUS "8 all, 9 atk"
	redef _tr_pk{d:p}_stat_exp EQUS "0 all"
	redef _tr_pk{d:p}_nickname EQUS ""

	if _tr_lv == TRAINERTYPE_MULTI_LEVELS
		assert _NARG == 2, "Trainer party requires a level for each mon"
		; Then actually define the data. Level is required for multi.
		def _tr_pk{d:p}_level = \1
		SHIFT
	else
		; defining the value anyway for easier refactoring
		def _tr_pk{d:p}_level = _tr_lv
	endc

	redef _tr_pk{d:p}_species EQUS "\1"
	def _tr_mons += 1
ENDM

; Usage: tr_moves <MOVE1>, [MOVE2], [MOVE3], [MOVE4]
; MOVE* defines a mon's moves. You can specify between 1-4 moves.
MACRO tr_moves
	def _tr_flags |= TRAINERTYPE_MOVES
	if _NARG > NUM_MOVES
		fail "A mon may only have {d:NUM_MOVES} moves."
	endc
	for i, 1, _NARG + 1
		def _tr_pk{d:p}_move{d:i} = \<i>
	endr
ENDM

; Usage: tr_dvs n1 ALL|ATK|DEF|SPD|SPC, [n2 ATK|DEF|SPD|SPC]
MACRO tr_dvs
	def _tr_flags |= TRAINERTYPE_DVS
	; check if a constant was used
	if STRFIND("\#", "_") != -1
		redef _tr_pk{d:p}_dvs EQUS "{\#}"
	else
		redef _tr_pk{d:p}_dvs EQUS "\#"
	endc
	def _tr_pk{d:p}_dvs_explicit = TRUE
ENDM

; Usage: tr_stat_exp n1 ALL|HP|ATK|DEF|SPD|SPC, [n2 HP|ATK|DEF|SPD|SPC]
MACRO tr_stat_exp
	def _tr_flags |= TRAINERTYPE_STAT_EXP
	; check if a constant was used
	if STRFIND("\#", "_") != -1
		redef _tr_pk{d:p}_stat_exp EQUS "{\#}"
	else
		redef _tr_pk{d:p}_stat_exp EQUS "\#"
	endc
	def _tr_pk{d:p}_stat_exp_explicit = TRUE
ENDM

; Usage: tr_nick NICKNAME
; Adds a nickname to current mon
; NICKNAME is formatted as "TEXT". Terminator ("@") is implicit.
MACRO tr_nick
	def _tr_flags |= TRAINERTYPE_NICKNAMES
	def _tr_curr_nick_len = CHARLEN(\1)
	assert fail, _tr_curr_nick_len < NAME_LENGTH, "Nickname \1 is too long, it should be less than {d:NAME_LENGTH} bytes long but is {d:_tr_curr_nick_len} bytes long"
	redef _tr_pk{d:p}_nickname EQUS \1
	def _tr_nick_lengths += _tr_curr_nick_len
ENDM

; Internal, shared by DVs and stat exp
MACRO def_stat_props
	rept _NARG
		def _got_stat = 0
		with_each_stat_all """
			def x = STRFIND(STRUPR("\1"), " ?")
			if !_got_stat && x != -1 && (!ignore_hp || STRCMP("?", "HP"))
				redef _eval_stat EQUS STRSLICE("\1", 0, x)
				def ?_STAT_PROP = \{_eval_stat}
				if ?_STAT_PROP <= MAX_STAT_PROP
					def _got_stat = 1
				endc
			endc
			"""
		if !_got_stat
			fail "invalid {prop_name} \1"
		endc
		if ALL_STAT_PROP != 0
			with_each_stat "def ?_STAT_PROP = {ALL_STAT_PROP}"
			def ALL_STAT_PROP = 0 ; allows stuff like "8 all, 9 atk"
		endc
		shift
	endr
ENDM

DEF DV_SPREADS_COUNT = 0
DEF STAT_EXP_SPREADS_COUNT = 0
DEF MONS_WITH_DV_SPREAD = 0
DEF MONS_WITH_STAT_EXP_SPREAD = 0

; Internal
MACRO def_dvs
	def MAX_STAT_PROP = 15
	with_each_dv_stat "def ?_STAT_PROP = 8"
	def ATK_STAT_PROP = 9
	def ALL_STAT_PROP = 0
	redef prop_name EQUS "DV"
	def ignore_hp = 1
	def_stat_props \#
ENDM

; Internal
MACRO dv_spread
	def_dvs \#
	if !def(DV_SPREAD_FOR_{d:ATK_STAT_PROP}_{d:DEF_STAT_PROP}_{d:SPD_STAT_PROP}_{d:SPC_STAT_PROP})
		def DV_SPREAD_FOR_{d:ATK_STAT_PROP}_{d:DEF_STAT_PROP}_{d:SPD_STAT_PROP}_{d:SPC_STAT_PROP} = DV_SPREADS_COUNT
		redef DV_SPREADS_COUNT += 1
	endc
	dn {d:ATK_STAT_PROP}, {d:DEF_STAT_PROP}, {d:SPD_STAT_PROP}, {d:SPC_STAT_PROP}
	redef MONS_WITH_DV_SPREAD += 1
ENDM

; Internal
MACRO def_stat_exp
	def MAX_STAT_PROP = $ffff
	with_each_stat_all "def ?_STAT_PROP = 0"
	redef prop_name EQUS "stat exp"
	def ignore_hp = 0
	def_stat_props \#
ENDM

; Internal
MACRO stat_exp_spread
	def_stat_exp \#
	if !def(STAT_EXP_SPREAD_FOR_{d:ATK_STAT_PROP}_{d:DEF_STAT_PROP}_{d:SPD_STAT_PROP}_{d:SPC_STAT_PROP})
		def STAT_EXP_SPREAD_FOR_{d:ATK_STAT_PROP}_{d:DEF_STAT_PROP}_{d:SPD_STAT_PROP}_{d:SPC_STAT_PROP} = STAT_EXP_SPREADS_COUNT
		redef STAT_EXP_SPREADS_COUNT += 1
	endc
	dw {d:HP_STAT_PROP}, {d:ATK_STAT_PROP}, {d:DEF_STAT_PROP}, {d:SPD_STAT_PROP}, {d:SPC_STAT_PROP}
	redef MONS_WITH_STAT_EXP_SPREAD += 1
ENDM

; Write out the party data from stored trainer buffer.
MACRO end_trainer
	; First, write the byte length of the party.
	; Pokémon data
	def _tr_size += 2 ; level, species

	if _tr_flags & TRAINERTYPE_MOVES
		def _tr_size += NUM_MOVES
	endc

	if _tr_flags & TRAINERTYPE_DVS
		def _tr_size += 2
	endc

	if _tr_flags & TRAINERTYPE_STAT_EXP
		def _tr_size += NUM_STATS * 2
	endc

	if _tr_flags & TRAINERTYPE_NICKNAMES
		def _tr_size += 1 ; terminator bytes
	endc

	def _tr_size *= _tr_mons

	def _tr_size += _tr_nick_lengths

	; Trainer flags
	def _tr_size += 1

	; Party size should never exceed 255, but just in case...
	if _tr_size > 255
		fail "Party size too large"
	endc

	; replace terminator byte with size byte
	db _tr_size ; new way to skip trainers
	; party flags
	db _tr_flags

	; Now for all the mon data.
	for p, _tr_mons
		; We can't have implicit moves, for now.
		if (_tr_flags & TRAINERTYPE_MOVES) && _tr_pk{d:p}_move1 == NO_MOVE
			fail "Unspecified move list for _tr_pk{d:p}_species"
		endc

		db _tr_pk{d:p}_level, _tr_pk{d:p}_species

		if _tr_flags & TRAINERTYPE_MOVES
			for i, 1, NUM_MOVES + 1
				db _tr_pk{d:p}_move{d:i}
			endr
		endc

		if _tr_flags & TRAINERTYPE_DVS
			dv_spread {_tr_pk{d:p}_dvs}
		endc

		if _tr_flags & TRAINERTYPE_STAT_EXP
			stat_exp_spread {_tr_pk{d:p}_stat_exp}
		endc

		if _tr_flags & TRAINERTYPE_NICKNAMES
			db "{_tr_pk{d:p}_nickname}@"
		endc
	endr
	def _tr_def_in_progress = FALSE
ENDM

MACRO end_trainer_parties
	if _tr_def_in_progress
		fail "Can't end trainer parties without finishing the last trainer with end_trainer"
	endc
	if _tr_class != NUM_TRAINERS + 1
		fail "Number of trainer classes doesn't match the number of def_trainer_class calls"
	endc
	def _dvs_waste = (MONS_WITH_DV_SPREAD - DV_SPREADS_COUNT) ; spread size is 2 but index for a spread table is 1 so n * (2 - 1) = n * 1 = n
	println "You defined {d:DV_SPREADS_COUNT} distinct DV spreads for a total of {d:MONS_WITH_DV_SPREAD} mons, which is {d:_dvs_waste} bytes wasted compared to using a spread table"
	def _stat_exp_waste = (MONS_WITH_STAT_EXP_SPREAD - STAT_EXP_SPREADS_COUNT) * ((NUM_STATS * 2) - 1) ; spread size is 10 but index for a spread table is 1 so n * (10 - 1) = n * 9
	println "You defined {d:STAT_EXP_SPREADS_COUNT} distinct stat exp spreads for a total of {d:MONS_WITH_STAT_EXP_SPREAD} mons, which is {d:_stat_exp_waste} bytes wasted compared to using a spread table"
	purge _dvs_waste, _stat_exp_waste
ENDM
