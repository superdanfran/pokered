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
	redef _tr_pk{d:p}_dvs EQUS "ATKDEFDV_TRAINER, SPDSPCDV_TRAINER"
	redef _tr_pk{d:p}_stat_exp EQUS "0, 0, 0, 0, 0"
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

; Usage: tr_dvs <ATK_DEF>, <SPD_SPC>
MACRO tr_dvs
	if _NARG != 2
		fail "A mon needs 2 bytes of DVs"
	endc
	def _tr_flags |= TRAINERTYPE_DVS
	; check if a constant was used
	if STRFIND("\#", "_") != -1
		redef _tr_pk{d:p}_dvs EQUS "{\#}"
	else
		redef _tr_pk{d:p}_dvs EQUS "\#"
	endc
	def _tr_pk{d:p}_dvs_explicit = TRUE
ENDM

; Usage: tr_stat_exp <HP>, <ATK>, <DEF>, <SPD>, <SPC>
MACRO tr_stat_exp
	if _NARG != NUM_STATS
		fail "A mon needs {d:NUM_STATS} words of stat exp"
	endc
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
			db _tr_pk{d:p}_dvs
		endc

		if _tr_flags & TRAINERTYPE_STAT_EXP
			dw _tr_pk{d:p}_stat_exp
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
ENDM
