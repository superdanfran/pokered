GetNextTrainerDataByte:
	ld a, [wEnemyPartyBank]
	call GetFarByte
	inc hl
	ret

ReadTrainer:

; don't change any moves in a link battle
	ld a, [wLinkState]
	and a
	ret nz

; set [wEnemyPartyCount] to 0, [wEnemyPartySpecies] to FF
; XXX first is total enemy pokemon?
; XXX second is species of first pokemon?
	ld hl, wEnemyPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

; get the pointer to trainer data for this class
	ld a, [wCurOpponent]
	sub OPP_ID_OFFSET + 1 ; convert value from pokemon to trainer
	ld c, a
	add a
	add c
	ld hl, TrainerDataPointers
	ld c, a
	ld b, 0
	add hl, bc ; hl points to trainer class
	ld a, [hli]
	ld [wEnemyPartyBank], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wTrainerNo]
	ld b, a
; At this point b contains the trainer number,
; and hl points to the trainer class.
; Our next task is to iterate through the trainers,
; decrementing b each time, until we get to the right one.
.nextTrainer
	dec b
	jr z, .IterateTrainer
	call GetNextTrainerDataByte
	add l
	ld l, a
	adc h
	sub l
	ld h, a
	jr .nextTrainer

; if the first byte of trainer data is FF,
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
; else the first byte is the level of every pokemon on the team
.IterateTrainer
	call GetNextTrainerDataByte
	ld c, a
	call GetNextTrainerDataByte
	dec c
	ld [wEnemyPartyFlags], a
	; c is remaining trainer data size
	; so trainer data ends at hl + c
	; set c to l + c to stop reading when l == c
	ld a, l
	add c
	ld c, a
	push bc
.LoopTrainerData
	pop bc
	ld a, l
	sub c ; have we reached the end of the trainer data?
	jp z, .FinishUp
	push bc

	call GetNextTrainerDataByte
	ld [wCurEnemyLevel], a
	call GetNextTrainerDataByte
	ld [wCurPartySpecies], a
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	call AddPartyMon

; tr_moves loading
; flag check
	ld a, [wEnemyPartyFlags]
	and TRAINERTYPE_MOVES
	jr z, .noMoves

; actual loading
	point_mon_data wEnemyMon1Moves

	ld b, NUM_MOVES
.copyMoves
	call GetNextTrainerDataByte
	ld [de], a
	inc de
	dec b
	jr nz, .copyMoves

.noMoves

; tr_dvs loading
; flag check
	ld a, [wEnemyPartyFlags]
	and TRAINERTYPE_DVS
	jr z, .noDVs

; actual loading
	point_mon_data wEnemyMon1DVs

	call GetNextTrainerDataByte
	; a is now the DVSpreads index
	push hl
	ld hl, DVSpreads
	ld bc, 2
	call AddNTimes
	; hl now points to the correct DVs spread
	ld a, BANK(DVSpreads)
	call FarCopyData2
	pop hl

.noDVs

; tr_stat_exp loading
; flag check
	ld a, [wEnemyPartyFlags]
	and TRAINERTYPE_STAT_EXP
	jr z, .noStatExp

; actual loading
	point_mon_data wEnemyMon1HPExp

	call GetNextTrainerDataByte
	; a is now the StatExpSpreads index
	push hl
	ld hl, StatExpSpreads
	ld bc, NUM_STATS * 2
	call AddNTimes
	; hl now points to the correct stat exp spread
	ld a, BANK(StatExpSpreads)
	call FarCopyData2
	pop hl

.noStatExp

; tr_nick loading
; flag check
	ld a, [wEnemyPartyFlags]
	and TRAINERTYPE_NICKNAMES
	jr z, .noNicks

; actual loading
	point_mon_data wEnemyMonNicks, wEnemyMon2Nick - wEnemyMon1Nick

.nickCopyLoop
	call GetNextTrainerDataByte
	ld [de], a
	inc de
	cp "@"
	jr nz, .nickCopyLoop

.noNicks

	ld a, [wEnemyPartyFlags]
	and TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	jp z, .LoopTrainerData

	push hl

	ld a, [wEnemyPartyCount]
	add_n_times_1_based wEnemyMon1MaxHP, wEnemyMon2 - wEnemyMon1
	ld d, h
	ld e, l

	ld a, [wEnemyPartyCount]
	ld hl, wEnemyMon1HPExp - 1 - (wEnemyMon2 - wEnemyMon1)
	call AddNTimes

	ld b, TRUE
	push de
	call CalcStats

	ld a, [wEnemyPartyCount]
	add_n_times_1_based wEnemyMon1HP, wEnemyMon2 - wEnemyMon1
	ld d, h
	ld e, l
	pop hl

; copy max HP into HP
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a

	pop hl

	jp .LoopTrainerData
.FinishUp
; clear wAmountMoneyWon addresses
	xor a
	ld de, wAmountMoneyWon
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	ld a, [wCurEnemyLevel]
	ld b, a
.LastLoop
; update wAmountMoneyWon addresses (money to win) based on enemy's level
	ld hl, wTrainerBaseMoney + 1
	ld c, 2 ; wAmountMoneyWon is a 3-byte number
	push bc
	predef AddBCDPredef
	pop bc
	inc de
	inc de
	dec b
	jr nz, .LastLoop ; repeat wCurEnemyLevel times
	ret
