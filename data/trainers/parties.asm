INCLUDE "data/trainers/macros.asm"

	def_trainer_class NOBODY

; if first byte != TRAINERTYPE_MULTI_LEVELS, then
	; first byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; null-terminated
; if first byte == TRAINERTYPE_MULTI_LEVELS, then
	; first byte is TRAINERTYPE_MULTI_LEVELS (obviously)
	; every next two bytes are a level and species
	; null-terminated

YoungsterData:
	def_trainer_class YOUNGSTER
; Route 3
	def_trainer 1, 14
	tr_mon RATTATA
	tr_mon EKANS
	end_trainer

	def_trainer 2, 15
	tr_mon PIDGEOTTO
	end_trainer

; Mt. Moon 1F
	def_trainer 3, 18
	tr_mon ZUBAT
	tr_mon KRABBY
	tr_mon FARFETCHD
	end_trainer

; Route 24
	def_trainer 4, 22
	tr_mon BULBASAUR
	tr_mon CHARMANDER
	tr_mon SQUIRTLE
	end_trainer

; Route 25
	def_trainer 5, 23
	tr_mon POLIWAG
	tr_mon GROWLITHE
	end_trainer

	def_trainer 6, 23
	tr_mon DITTO
	end_trainer

	def_trainer 7, 23
	tr_mon MEOWTH
	tr_mon PIDGEOTTO
	end_trainer

; SS Anne 1F Rooms
	def_trainer 8, 28
	tr_mon LICKITUNG
	end_trainer

; Route 11
	def_trainer 9, 24
	tr_mon RATICATE
	end_trainer

	def_trainer 10, 25
	tr_mon SANDSHREW
	tr_mon GOLBAT
	end_trainer

	def_trainer 11, 24
	tr_mon FARFETCHD
	tr_mon NIDOQUEEN
	end_trainer

	def_trainer 12, 24
	tr_mon RATICATE
	tr_mon FEAROW
	tr_mon NINETALES
	end_trainer

; Unused
	def_trainer 13, 17
	tr_mon SPEAROW
	tr_mon RATTATA
	tr_mon RATTATA
	tr_mon SPEAROW
	end_trainer


BugCatcherData:
	def_trainer_class BUG_CATCHER
; Viridian Forest
	def_trainer 1, 6
	tr_mon WEEDLE
	tr_mon CATERPIE
	end_trainer

	def_trainer 2, 7
	tr_mon KAKUNA
	tr_mon VENONAT
	tr_mon PARAS
	end_trainer

	def_trainer 3, 9
	tr_mon BUTTERFREE
	end_trainer

; Route 3
	def_trainer 4, 14
	tr_mon VENONAT
	tr_mon PARAS
	tr_mon BEEDRILL
	end_trainer

	def_trainer 5, 13
	tr_mon PARAS
	tr_mon VENONAT
	tr_mon METAPOD
	tr_mon BEEDRILL
	end_trainer

	def_trainer 6, 15
	tr_mon BUTTERFREE
	tr_mon BEEDRILL
	end_trainer

; Mt. Moon 1F
	def_trainer 7, 16
	tr_mon VENONAT
	tr_mon BEEDRILL
	end_trainer

	def_trainer 8, 16
	tr_mon PARAS
	tr_mon VENONAT
	tr_mon BUTTERFREE
	end_trainer

; Route 24
	def_trainer 9, 19
	tr_mon SCYTHER
	tr_mon PINSIR
	end_trainer

; Route 6
	def_trainer 10, 24
	tr_mon BUTTERFREE
	tr_mon BEEDRILL
	tr_mon PARASECT
	end_trainer

	def_trainer 11, 100
	tr_mon WEEDLE
	end_trainer

; Unused
	def_trainer 12, 18
	tr_mon METAPOD
	tr_mon CATERPIE
	tr_mon VENONAT
	end_trainer

; Route 9
	def_trainer 13, 100
	tr_mon KAKUNA
	tr_mon METAPOD
	end_trainer

	def_trainer 14, 39
	tr_mon VENOMOTH
	tr_mon SCYTHER
	tr_mon PINSIR
	end_trainer


LassData:
	def_trainer_class LASS
; Route 3
	def_trainer 1, 14
	tr_mon PIDGEY
	tr_mon NIDORAN_F
	end_trainer

	def_trainer 2, 16
	tr_mon NIDORAN_M
	tr_mon SPEAROW
	end_trainer

	def_trainer 3, 17
	tr_mon JIGGLYPUFF
	end_trainer

; Route 4
	def_trainer 4, 18
	tr_mon PARAS
	tr_mon PONYTA
	tr_mon PARASECT
	end_trainer

; Mt. Moon 1F
	def_trainer 5, 11
	tr_mon ODDISH
	tr_mon BELLSPROUT
	end_trainer

	def_trainer 6, 14
	tr_mon CLEFAIRY
	end_trainer

; Route 24
	def_trainer 7, 16
	tr_mon PIDGEY
	tr_mon NIDORAN_F
	end_trainer

	def_trainer 8, 14
	tr_mon PIDGEY
	tr_mon NIDORAN_F
	end_trainer

; Route 25
	def_trainer 9, 15
	tr_mon NIDORAN_M
	tr_mon NIDORAN_F
	end_trainer

	def_trainer 10, 13
	tr_mon ODDISH
	tr_mon PIDGEY
	tr_mon ODDISH
	end_trainer

; SS Anne 1F Rooms
	def_trainer 11, 18
	tr_mon PIDGEY
	tr_mon NIDORAN_F
	end_trainer

; SS Anne 2F Rooms
	def_trainer 12, 18
	tr_mon RATTATA
	tr_mon PIKACHU
	end_trainer

; Route 8
	def_trainer 13, 23
	tr_mon NIDORAN_F
	tr_mon NIDORINA
	end_trainer

	def_trainer 14, 24
	tr_mon MEOWTH
	tr_mon MEOWTH
	tr_mon MEOWTH
	end_trainer

	def_trainer 15, 19
	tr_mon PIDGEY
	tr_mon RATTATA
	tr_mon NIDORAN_M
	tr_mon MEOWTH
	tr_mon PIKACHU
	end_trainer

	def_trainer 16, 22
	tr_mon CLEFAIRY
	tr_mon CLEFAIRY
	end_trainer

; Celadon Gym
	def_trainer 17, 23
	tr_mon BELLSPROUT
	tr_mon WEEPINBELL
	end_trainer

	def_trainer 18, 23
	tr_mon ODDISH
	tr_mon GLOOM
	end_trainer


SailorData:
	def_trainer_class SAILOR
; SS Anne Stern
	def_trainer 1, 18
	tr_mon MACHOP
	tr_mon SHELLDER
	end_trainer

	def_trainer 2, 17
	tr_mon MACHOP
	tr_mon TENTACOOL
	end_trainer

; SS Anne B1F Rooms
	def_trainer 3, 21
	tr_mon SHELLDER
	end_trainer

	def_trainer 4, 17
	tr_mon HORSEA
	tr_mon SHELLDER
	tr_mon TENTACOOL
	end_trainer

	def_trainer 5, 18
	tr_mon TENTACOOL
	tr_mon STARYU
	end_trainer

	def_trainer 6, 17
	tr_mon HORSEA
	tr_mon HORSEA
	tr_mon HORSEA
	end_trainer

	def_trainer 7, 20
	tr_mon MACHOP
	end_trainer

; Vermilion Gym
	def_trainer 8, 21
	tr_mon PIKACHU
	tr_mon PIKACHU
	end_trainer


JrTrainerMData:
	def_trainer_class JR_TRAINER_M
; Pewter Gym
	def_trainer 1, 11
	tr_mon DIGLETT
	tr_mon SANDSHREW
	end_trainer

; Route 24/Route 25
	def_trainer 2, 14
	tr_mon RATTATA
	tr_mon EKANS
	end_trainer

; Route 24
	def_trainer 3, 18
	tr_mon MANKEY
	end_trainer

; Route 6
	def_trainer 4, 20
	tr_mon SQUIRTLE
	end_trainer

	def_trainer 5, 16
	tr_mon SPEAROW
	tr_mon RATICATE
	end_trainer

; Unused
	def_trainer 6, 18
	tr_mon DIGLETT
	tr_mon DIGLETT
	tr_mon SANDSHREW
	end_trainer

; Route 9
	def_trainer 7, 21
	tr_mon GROWLITHE
	tr_mon CHARMANDER
	end_trainer

	def_trainer 8, 19
	tr_mon RATTATA
	tr_mon DIGLETT
	tr_mon EKANS
	tr_mon SANDSHREW
	end_trainer

; Route 12
	def_trainer 9, 29
	tr_mon NIDORAN_M
	tr_mon NIDORINO
	end_trainer


JrTrainerFData:
	def_trainer_class JR_TRAINER_F
; Cerulean Gym
	def_trainer 1, 19
	tr_mon GOLDEEN
	end_trainer

; Route 6
	def_trainer 2, 16
	tr_mon RATTATA
	tr_mon PIKACHU
	end_trainer

	def_trainer 3, 16
	tr_mon PIDGEY
	tr_mon PIDGEY
	tr_mon PIDGEY
	end_trainer

; Unused
	def_trainer 4, 22
	tr_mon BULBASAUR
	end_trainer

; Route 9
	def_trainer 5, 18
	tr_mon ODDISH
	tr_mon BELLSPROUT
	tr_mon ODDISH
	tr_mon BELLSPROUT
	end_trainer

	def_trainer 6, 23
	tr_mon MEOWTH
	end_trainer

; Route 10
	def_trainer 7, 20
	tr_mon PIKACHU
	tr_mon CLEFAIRY
	end_trainer

	def_trainer 8, 21
	tr_mon PIDGEY
	tr_mon PIDGEOTTO
	end_trainer

; Rock Tunnel B1F
	def_trainer 9, 21
	tr_mon JIGGLYPUFF
	tr_mon PIDGEY
	tr_mon MEOWTH
	end_trainer

	def_trainer 10, 22
	tr_mon ODDISH
	tr_mon BULBASAUR
	end_trainer

; Celadon Gym
	def_trainer 11, 24
	tr_mon BULBASAUR
	tr_mon IVYSAUR
	end_trainer

; Route 13
	def_trainer 12, 24
	tr_mon PIDGEY
	tr_mon MEOWTH
	tr_mon RATTATA
	tr_mon PIKACHU
	tr_mon MEOWTH
	end_trainer

	def_trainer 13, 30
	tr_mon POLIWAG
	tr_mon POLIWAG
	end_trainer

	def_trainer 14, 27
	tr_mon PIDGEY
	tr_mon MEOWTH
	tr_mon PIDGEY
	tr_mon PIDGEOTTO
	end_trainer

	def_trainer 15, 28
	tr_mon GOLDEEN
	tr_mon POLIWAG
	tr_mon HORSEA
	end_trainer

; Route 20
	def_trainer 16, 31
	tr_mon GOLDEEN
	tr_mon SEAKING
	end_trainer

; Rock Tunnel 1F
	def_trainer 17, 22
	tr_mon BELLSPROUT
	tr_mon CLEFAIRY
	end_trainer

	def_trainer 18, 20
	tr_mon MEOWTH
	tr_mon ODDISH
	tr_mon PIDGEY
	end_trainer

	def_trainer 19, 19
	tr_mon PIDGEY
	tr_mon RATTATA
	tr_mon RATTATA
	tr_mon BELLSPROUT
	end_trainer

; Route 15
	def_trainer 20, 28
	tr_mon GLOOM
	tr_mon ODDISH
	tr_mon ODDISH
	end_trainer

	def_trainer 21, 29
	tr_mon PIKACHU
	tr_mon RAICHU
	end_trainer

	def_trainer 22, 33
	tr_mon CLEFAIRY
	end_trainer

	def_trainer 23, 29
	tr_mon BELLSPROUT
	tr_mon ODDISH
	tr_mon TANGELA
	end_trainer

; Route 20
	def_trainer 24, 30
	tr_mon TENTACOOL
	tr_mon HORSEA
	tr_mon SEEL
	end_trainer


PokemaniacData:
	def_trainer_class POKEMANIAC
; Route 10
	def_trainer 1, 30
	tr_mon RHYHORN
	tr_mon LICKITUNG
	end_trainer

	def_trainer 2, 20
	tr_mon CUBONE
	tr_mon SLOWPOKE
	end_trainer

; Rock Tunnel B1F
	def_trainer 3, 20
	tr_mon SLOWPOKE
	tr_mon SLOWPOKE
	tr_mon SLOWPOKE
	end_trainer

	def_trainer 4, 22
	tr_mon CHARMANDER
	tr_mon CUBONE
	end_trainer

	def_trainer 5, 25
	tr_mon SLOWPOKE
	end_trainer

; Victory Road 2F
	def_trainer 6, 40
	tr_mon CHARMELEON
	tr_mon LAPRAS
	tr_mon LICKITUNG
	end_trainer

; Rock Tunnel 1F
	def_trainer 7, 23
	tr_mon CUBONE
	tr_mon SLOWPOKE
	end_trainer


SuperNerdData:
	def_trainer_class SUPER_NERD
; Mt. Moon 1F
	def_trainer 1, 11
	tr_mon MAGNEMITE
	tr_mon VOLTORB
	end_trainer

; Mt. Moon B2F
	def_trainer 2, 12
	tr_mon GRIMER
	tr_mon VOLTORB
	tr_mon KOFFING
	end_trainer

; Route 8
	def_trainer 3, 20
	tr_mon VOLTORB
	tr_mon KOFFING
	tr_mon VOLTORB
	tr_mon MAGNEMITE
	end_trainer

	def_trainer 4, 22
	tr_mon GRIMER
	tr_mon MUK
	tr_mon GRIMER
	end_trainer

	def_trainer 5, 26
	tr_mon KOFFING
	end_trainer

; Unused
	def_trainer 6, 22
	tr_mon KOFFING
	tr_mon MAGNEMITE
	tr_mon WEEZING
	end_trainer

	def_trainer 7, 20
	tr_mon MAGNEMITE
	tr_mon MAGNEMITE
	tr_mon KOFFING
	tr_mon MAGNEMITE
	end_trainer

	def_trainer 8, 24
	tr_mon MAGNEMITE
	tr_mon VOLTORB
	end_trainer

; Cinnabar Gym
	def_trainer 9, 36
	tr_mon VULPIX
	tr_mon VULPIX
	tr_mon NINETALES
	end_trainer

	def_trainer 10, 34
	tr_mon PONYTA
	tr_mon CHARMANDER
	tr_mon VULPIX
	tr_mon GROWLITHE
	end_trainer

	def_trainer 11, 41
	tr_mon RAPIDASH
	end_trainer

	def_trainer 12, 37
	tr_mon GROWLITHE
	tr_mon VULPIX
	end_trainer


HikerData:
	def_trainer_class HIKER
; Mt. Moon 1F
	def_trainer 1, 10
	tr_mon GEODUDE
	tr_mon GEODUDE
	tr_mon ONIX
	end_trainer

; Route 25
	def_trainer 2, 15
	tr_mon MACHOP
	tr_mon GEODUDE
	end_trainer

	def_trainer 3, 13
	tr_mon GEODUDE
	tr_mon GEODUDE
	tr_mon MACHOP
	tr_mon GEODUDE
	end_trainer

	def_trainer 4, 17
	tr_mon ONIX
	end_trainer

; Route 9
	def_trainer 5, 21
	tr_mon GEODUDE
	tr_mon ONIX
	end_trainer

	def_trainer 6, 20
	tr_mon GEODUDE
	tr_mon MACHOP
	tr_mon GEODUDE
	end_trainer

; Route 10
	def_trainer 7, 21
	tr_mon GEODUDE
	tr_mon ONIX
	end_trainer

	def_trainer 8, 19
	tr_mon ONIX
	tr_mon GRAVELER
	end_trainer

; Rock Tunnel B1F
	def_trainer 9, 21
	tr_mon GEODUDE
	tr_mon GEODUDE
	tr_mon GRAVELER
	end_trainer

	def_trainer 10, 25
	tr_mon GEODUDE
	end_trainer

; Route 9/Rock Tunnel B1F
	def_trainer 11, 20
	tr_mon MACHOP
	tr_mon ONIX
	end_trainer

; Rock Tunnel 1F
	def_trainer 12, 19
	tr_mon GEODUDE
	tr_mon MACHOP
	tr_mon GEODUDE
	tr_mon GEODUDE
	end_trainer

	def_trainer 13, 20
	tr_mon ONIX
	tr_mon ONIX
	tr_mon GEODUDE
	end_trainer

	def_trainer 14, 21
	tr_mon GEODUDE
	tr_mon GRAVELER
	end_trainer


BikerData:
	def_trainer_class BIKER
; Route 13
	def_trainer 1, 28
	tr_mon KOFFING
	tr_mon KOFFING
	tr_mon KOFFING
	end_trainer

; Route 14
	def_trainer 2, 29
	tr_mon KOFFING
	tr_mon GRIMER
	end_trainer

; Route 15
	def_trainer 3, 25
	tr_mon KOFFING
	tr_mon KOFFING
	tr_mon WEEZING
	tr_mon KOFFING
	tr_mon GRIMER
	end_trainer

	def_trainer 4, 28
	tr_mon KOFFING
	tr_mon GRIMER
	tr_mon WEEZING
	end_trainer

; Route 16
	def_trainer 5, 29
	tr_mon GRIMER
	tr_mon KOFFING
	end_trainer

	def_trainer 6, 33
	tr_mon WEEZING
	end_trainer

	def_trainer 7, 26
	tr_mon GRIMER
	tr_mon GRIMER
	tr_mon GRIMER
	tr_mon GRIMER
	end_trainer

; Route 17
	; From https://www.smogon.com/smog/issue27/glitch:
	; 0E:5FC2 is offset of the ending 0 for this first Biker on Route 17.
	; BaseStats + (BASE_DATA_SIZE) * (000 - 1) = $5FC2;
	; that's the formula from GetMonHeader for the base stats of mon #000.
	; (BaseStats = $43DE and BANK(BaseStats) = $0E.)
	; Finally, PokedexOrder lists 0 as the dex ID for every MissingNo.
	; The result is that this data gets interpreted as the base stats
	; for MissingNo: 0, 33, MUK, 0, 29, VOLTORB, VOLTORB, 0, ..., 28, GRIMER, GRIMER.
	def_trainer 8, 28
	tr_mon WEEZING
	tr_mon KOFFING
	tr_mon WEEZING
	end_trainer

	def_trainer 9, 33
	tr_mon MUK
	end_trainer

	def_trainer 10, 29
	tr_mon VOLTORB
	tr_mon VOLTORB
	end_trainer

	def_trainer 11, 29
	tr_mon WEEZING
	tr_mon MUK
	end_trainer

	def_trainer 12, 25
	tr_mon KOFFING
	tr_mon WEEZING
	tr_mon KOFFING
	tr_mon KOFFING
	tr_mon WEEZING
	end_trainer

; Route 14
	def_trainer 13, 26
	tr_mon KOFFING
	tr_mon KOFFING
	tr_mon GRIMER
	tr_mon KOFFING
	end_trainer

	def_trainer 14, 28
	tr_mon GRIMER
	tr_mon GRIMER
	tr_mon KOFFING
	end_trainer

	def_trainer 15, 29
	tr_mon KOFFING
	tr_mon MUK
	end_trainer


BurglarData:
	def_trainer_class BURGLAR
; Unused
	def_trainer 1, 29
	tr_mon GROWLITHE
	tr_mon VULPIX
	end_trainer

	def_trainer 2, 33
	tr_mon GROWLITHE
	end_trainer

	def_trainer 3, 28
	tr_mon VULPIX
	tr_mon CHARMANDER
	tr_mon PONYTA
	end_trainer

; Cinnabar Gym
	def_trainer 4, 36
	tr_mon GROWLITHE
	tr_mon VULPIX
	tr_mon NINETALES
	end_trainer

	def_trainer 5, 41
	tr_mon PONYTA
	end_trainer

	def_trainer 6, 37
	tr_mon VULPIX
	tr_mon GROWLITHE
	end_trainer

; Mansion 2F
	def_trainer 7, 34
	tr_mon CHARMANDER
	tr_mon CHARMELEON
	end_trainer

; Mansion 3F
	def_trainer 8, 38
	tr_mon NINETALES
	end_trainer

; Mansion B1F
	def_trainer 9, 34
	tr_mon GROWLITHE
	tr_mon PONYTA
	end_trainer


EngineerData:
	def_trainer_class ENGINEER
; Unused
	def_trainer 1, 21
	tr_mon VOLTORB
	tr_mon MAGNEMITE
	end_trainer

; Route 11
	def_trainer 2, 21
	tr_mon MAGNEMITE
	end_trainer

	def_trainer 3, 18
	tr_mon MAGNEMITE
	tr_mon MAGNEMITE
	tr_mon MAGNETON
	end_trainer


UnusedJugglerData:
	def_trainer_class UNUSED_JUGGLER
; none

FisherData:
	def_trainer_class FISHER
; SS Anne 2F Rooms
	def_trainer 1, 17
	tr_mon GOLDEEN
	tr_mon TENTACOOL
	tr_mon GOLDEEN
	end_trainer

; SS Anne B1F Rooms
	def_trainer 2, 17
	tr_mon TENTACOOL
	tr_mon STARYU
	tr_mon SHELLDER
	end_trainer

; Route 12
	def_trainer 3, 22
	tr_mon GOLDEEN
	tr_mon POLIWAG
	tr_mon GOLDEEN
	end_trainer

	def_trainer 4, 24
	tr_mon TENTACOOL
	tr_mon GOLDEEN
	end_trainer

	def_trainer 5, 27
	tr_mon GOLDEEN
	end_trainer

	def_trainer 6, 21
	tr_mon POLIWAG
	tr_mon SHELLDER
	tr_mon GOLDEEN
	tr_mon HORSEA
	end_trainer

; Route 21
	def_trainer 7, 28
	tr_mon SEAKING
	tr_mon GOLDEEN
	tr_mon SEAKING
	tr_mon SEAKING
	end_trainer

	def_trainer 8, 31
	tr_mon SHELLDER
	tr_mon CLOYSTER
	end_trainer

	def_trainer 9, 27
	tr_mon MAGIKARP
	tr_mon MAGIKARP
	tr_mon MAGIKARP
	tr_mon MAGIKARP
	tr_mon MAGIKARP
	tr_mon MAGIKARP
	end_trainer

	def_trainer 10, 33
	tr_mon SEAKING
	tr_mon GOLDEEN
	end_trainer

; Route 12
	def_trainer 11, 24
	tr_mon MAGIKARP
	tr_mon MAGIKARP
	end_trainer


SwimmerData:
	def_trainer_class SWIMMER
; Cerulean Gym
	def_trainer 1, 16
	tr_mon HORSEA
	tr_mon SHELLDER
	end_trainer

; Route 19
	def_trainer 2, 30
	tr_mon TENTACOOL
	tr_mon SHELLDER
	end_trainer

	def_trainer 3, 29
	tr_mon GOLDEEN
	tr_mon HORSEA
	tr_mon STARYU
	end_trainer

	def_trainer 4, 30
	tr_mon POLIWAG
	tr_mon POLIWHIRL
	end_trainer

	def_trainer 5, 27
	tr_mon HORSEA
	tr_mon TENTACOOL
	tr_mon TENTACOOL
	tr_mon GOLDEEN
	end_trainer

	def_trainer 6, 29
	tr_mon GOLDEEN
	tr_mon SHELLDER
	tr_mon SEAKING
	end_trainer

	def_trainer 7, 30
	tr_mon HORSEA
	tr_mon HORSEA
	end_trainer

	def_trainer 8, 27
	tr_mon TENTACOOL
	tr_mon TENTACOOL
	tr_mon STARYU
	tr_mon HORSEA
	tr_mon TENTACRUEL
	end_trainer

; Route 20
	def_trainer 9, 31
	tr_mon SHELLDER
	tr_mon CLOYSTER
	end_trainer

	def_trainer 10, 35
	tr_mon STARYU
	end_trainer

	def_trainer 11, 28
	tr_mon HORSEA
	tr_mon HORSEA
	tr_mon SEADRA
	tr_mon HORSEA
	end_trainer

; Route 21
	def_trainer 12, 33
	tr_mon SEADRA
	tr_mon TENTACRUEL
	end_trainer

	def_trainer 13, 37
	tr_mon STARMIE
	end_trainer

	def_trainer 14, 33
	tr_mon STARYU
	tr_mon WARTORTLE
	end_trainer

	def_trainer 15, 32
	tr_mon POLIWHIRL
	tr_mon TENTACOOL
	tr_mon SEADRA
	end_trainer


CueBallData:
	def_trainer_class CUE_BALL
; Route 16
	def_trainer 1, 28
	tr_mon MACHOP
	tr_mon MANKEY
	tr_mon MACHOP
	end_trainer

	def_trainer 2, 29
	tr_mon MANKEY
	tr_mon MACHOP
	end_trainer

	def_trainer 3, 33
	tr_mon MACHOP
	end_trainer

; Route 17
	def_trainer 4, 29
	tr_mon MANKEY
	tr_mon PRIMEAPE
	end_trainer

	def_trainer 5, 29
	tr_mon MACHOP
	tr_mon MACHOKE
	end_trainer

	def_trainer 6, 33
	tr_mon MACHOKE
	end_trainer

	def_trainer 7, 26
	tr_mon MANKEY
	tr_mon MANKEY
	tr_mon MACHOKE
	tr_mon MACHOP
	end_trainer

	def_trainer 8, 29
	tr_mon PRIMEAPE
	tr_mon MACHOKE
	end_trainer

; Route 21
	def_trainer 9, 31
	tr_mon TENTACOOL
	tr_mon TENTACOOL
	tr_mon TENTACRUEL
	end_trainer


GamblerData:
	def_trainer_class GAMBLER
; Route 11
	def_trainer 1, 18
	tr_mon POLIWAG
	tr_mon HORSEA
	end_trainer

	def_trainer 2, 18
	tr_mon BELLSPROUT
	tr_mon ODDISH
	end_trainer

	def_trainer 3, 18
	tr_mon VOLTORB
	tr_mon MAGNEMITE
	end_trainer

	def_trainer 4, 18
	tr_mon GROWLITHE
	tr_mon VULPIX
	end_trainer

; Route 8
	def_trainer 5, 22
	tr_mon POLIWAG
	tr_mon POLIWAG
	tr_mon POLIWHIRL
	end_trainer

; Unused
	def_trainer 6, 22
	tr_mon ONIX
	tr_mon GEODUDE
	tr_mon GRAVELER
	end_trainer

; Route 8
	def_trainer 7, 24
	tr_mon GROWLITHE
	tr_mon VULPIX
	end_trainer


BeautyData:
	def_trainer_class BEAUTY
; Celadon Gym
	def_trainer 1, 21
	tr_mon ODDISH
	tr_mon BELLSPROUT
	tr_mon ODDISH
	tr_mon BELLSPROUT
	end_trainer

	def_trainer 2, 24
	tr_mon BELLSPROUT
	tr_mon BELLSPROUT
	end_trainer

	def_trainer 3, 26
	tr_mon EXEGGCUTE
	end_trainer

; Route 13
	def_trainer 4, 27
	tr_mon RATTATA
	tr_mon PIKACHU
	tr_mon RATTATA
	end_trainer

	def_trainer 5, 29
	tr_mon CLEFAIRY
	tr_mon MEOWTH
	end_trainer

; Route 20
	def_trainer 6, 35
	tr_mon SEAKING
	end_trainer

	def_trainer 7, 30
	tr_mon SHELLDER
	tr_mon SHELLDER
	tr_mon CLOYSTER
	end_trainer

	def_trainer 8, 31
	tr_mon POLIWAG
	tr_mon SEAKING
	end_trainer

; Route 15
	def_trainer 9, 29
	tr_mon PIDGEOTTO
	tr_mon WIGGLYTUFF
	end_trainer

	def_trainer 10, 29
	tr_mon BULBASAUR
	tr_mon IVYSAUR
	end_trainer

; Unused
	def_trainer 11, 33
	tr_mon WEEPINBELL
	tr_mon BELLSPROUT
	tr_mon WEEPINBELL
	end_trainer

; Route 19
	def_trainer 12, 27
	tr_mon POLIWAG
	tr_mon GOLDEEN
	tr_mon SEAKING
	tr_mon GOLDEEN
	tr_mon POLIWAG
	end_trainer

	def_trainer 13, 30
	tr_mon GOLDEEN
	tr_mon SEAKING
	end_trainer

	def_trainer 14, 29
	tr_mon STARYU
	tr_mon STARYU
	tr_mon STARYU
	end_trainer

; Route 20
	def_trainer 15, 30
	tr_mon SEADRA
	tr_mon HORSEA
	tr_mon SEADRA
	end_trainer


PsychicData:
	def_trainer_class PSYCHIC_TR
; Saffron Gym
	def_trainer 1, 31
	tr_mon KADABRA
	tr_mon SLOWPOKE
	tr_mon MR_MIME
	tr_mon KADABRA
	end_trainer

	def_trainer 2, 34
	tr_mon MR_MIME
	tr_mon KADABRA
	end_trainer

	def_trainer 3, 33
	tr_mon SLOWPOKE
	tr_mon SLOWPOKE
	tr_mon SLOWBRO
	end_trainer

	def_trainer 4, 38
	tr_mon SLOWBRO
	end_trainer


RockerData:
	def_trainer_class ROCKER
; Vermilion Gym
	def_trainer 1, 20
	tr_mon VOLTORB
	tr_mon MAGNEMITE
	tr_mon VOLTORB
	end_trainer

; Route 12
	def_trainer 2, 29
	tr_mon VOLTORB
	tr_mon ELECTRODE
	end_trainer


JugglerData:
	def_trainer_class JUGGLER
; Silph Co. 5F
	def_trainer 1, 29
	tr_mon KADABRA
	tr_mon MR_MIME
	end_trainer

; Victory Road 2F
	def_trainer 2, 41
	tr_mon DROWZEE
	tr_mon HYPNO
	tr_mon KADABRA
	tr_mon KADABRA
	end_trainer

; Fuchsia Gym
	def_trainer 3, 31
	tr_mon DROWZEE
	tr_mon DROWZEE
	tr_mon KADABRA
	tr_mon DROWZEE
	end_trainer

	def_trainer 4, 34
	tr_mon DROWZEE
	tr_mon HYPNO
	end_trainer

; Victory Road 2F
	def_trainer 5, 48
	tr_mon MR_MIME
	end_trainer

; Unused
	def_trainer 6, 33
	tr_mon HYPNO
	end_trainer

; Fuchsia Gym
	def_trainer 7, 38
	tr_mon HYPNO
	end_trainer

	def_trainer 8, 34
	tr_mon DROWZEE
	tr_mon KADABRA
	end_trainer


TamerData:
	def_trainer_class TAMER
; Fuchsia Gym
	def_trainer 1, 34
	tr_mon SANDSLASH
	tr_mon ARBOK
	end_trainer

	def_trainer 2, 33
	tr_mon ARBOK
	tr_mon SANDSLASH
	tr_mon ARBOK
	end_trainer

; Viridian Gym
	def_trainer 3, 43
	tr_mon RHYHORN
	end_trainer

	def_trainer 4, 39
	tr_mon ARBOK
	tr_mon TAUROS
	end_trainer

; Victory Road 2F
	def_trainer 5, 44
	tr_mon PERSIAN
	tr_mon GOLDUCK
	end_trainer

; Unused
	def_trainer 6, 42
	tr_mon RHYHORN
	tr_mon PRIMEAPE
	tr_mon ARBOK
	tr_mon TAUROS
	end_trainer


BirdKeeperData:
	def_trainer_class BIRD_KEEPER
; Route 13
	def_trainer 1, 29
	tr_mon PIDGEY
	tr_mon PIDGEOTTO
	end_trainer

	def_trainer 2, 25
	tr_mon SPEAROW
	tr_mon PIDGEY
	tr_mon PIDGEY
	tr_mon SPEAROW
	tr_mon SPEAROW
	end_trainer

	def_trainer 3, 26
	tr_mon PIDGEY
	tr_mon PIDGEOTTO
	tr_mon SPEAROW
	tr_mon FEAROW
	end_trainer

; Route 14
	def_trainer 4, 33
	tr_mon FARFETCHD
	end_trainer

	def_trainer 5, 29
	tr_mon SPEAROW
	tr_mon FEAROW
	end_trainer

; Route 15
	def_trainer 6, 26
	tr_mon PIDGEOTTO
	tr_mon FARFETCHD
	tr_mon DODUO
	tr_mon PIDGEY
	end_trainer

	def_trainer 7, 28
	tr_mon DODRIO
	tr_mon DODUO
	tr_mon DODUO
	end_trainer

; Route 18
	def_trainer 8, 29
	tr_mon SPEAROW
	tr_mon FEAROW
	end_trainer

	def_trainer 9, 34
	tr_mon DODRIO
	end_trainer

	def_trainer 10, 26
	tr_mon SPEAROW
	tr_mon SPEAROW
	tr_mon FEAROW
	tr_mon SPEAROW
	end_trainer

; Route 20
	def_trainer 11, 30
	tr_mon FEAROW
	tr_mon FEAROW
	tr_mon PIDGEOTTO
	end_trainer

; Unused
	def_trainer 12, 39
	tr_mon PIDGEOTTO
	tr_mon PIDGEOTTO
	tr_mon PIDGEY
	tr_mon PIDGEOTTO
	end_trainer

	def_trainer 13, 42
	tr_mon FARFETCHD
	tr_mon FEAROW
	end_trainer

; Route 14
	def_trainer 14, 28
	tr_mon PIDGEY
	tr_mon DODUO
	tr_mon PIDGEOTTO
	end_trainer

	def_trainer 15, 26
	tr_mon PIDGEY
	tr_mon SPEAROW
	tr_mon PIDGEY
	tr_mon FEAROW
	end_trainer

	def_trainer 16, 29
	tr_mon PIDGEOTTO
	tr_mon FEAROW
	end_trainer

	def_trainer 17, 28
	tr_mon SPEAROW
	tr_mon DODUO
	tr_mon FEAROW
	end_trainer


BlackbeltData:
	def_trainer_class BLACKBELT
; Fighting Dojo
	def_trainer 1, 37
	tr_mon HITMONLEE
	tr_mon HITMONCHAN
	end_trainer

	def_trainer 2, 31
	tr_mon MANKEY
	tr_mon MANKEY
	tr_mon PRIMEAPE
	end_trainer

	def_trainer 3, 32
	tr_mon MACHOP
	tr_mon MACHOKE
	end_trainer

	def_trainer 4, 36
	tr_mon PRIMEAPE
	end_trainer

	def_trainer 5, 31
	tr_mon MACHOP
	tr_mon MANKEY
	tr_mon PRIMEAPE
	end_trainer

; Viridian Gym
	def_trainer 6, 40
	tr_mon MACHOP
	tr_mon MACHOKE
	end_trainer

	def_trainer 7, 43
	tr_mon MACHOKE
	end_trainer

	def_trainer 8, 38
	tr_mon MACHOKE
	tr_mon MACHOP
	tr_mon MACHOKE
	end_trainer

; Victory Road 2F
	def_trainer 9, 43
	tr_mon MACHOKE
	tr_mon MACHOP
	tr_mon MACHOKE
	end_trainer


Rival1Data:
	def_trainer_class RIVAL1
	def_trainer 1, 3
	tr_mon MEW
		tr_moves POUND, THUNDER_WAVE
	end_trainer

	def_trainer 2, 3
	tr_mon MEW
		tr_moves POUND, THUNDER_WAVE
	end_trainer

	def_trainer 3, 3
	tr_mon MEW
		tr_moves POUND, THUNDER_WAVE
	end_trainer

; Route 22
	def_trainer 4, TRAINERTYPE_MULTI_LEVELS
	tr_mon 9, EEVEE
	tr_mon 8, MEW
	end_trainer

	def_trainer 5, TRAINERTYPE_MULTI_LEVELS
	tr_mon 9, EEVEE
	tr_mon 8, MEW
	end_trainer

	def_trainer 6, TRAINERTYPE_MULTI_LEVELS
	tr_mon 9, EEVEE
	tr_mon 8, MEW
	end_trainer

; Cerulean City
	def_trainer 7, TRAINERTYPE_MULTI_LEVELS
	tr_mon 20, DRATINI
	tr_mon 20, KADABRA
	tr_mon 19, DRAGONAIR
	tr_mon 20, MEW
	end_trainer

	def_trainer 8, TRAINERTYPE_MULTI_LEVELS
	tr_mon 20, DRATINI
	tr_mon 20, KADABRA
	tr_mon 19, DRAGONAIR
	tr_mon 20, MEW
	end_trainer

	def_trainer 9, TRAINERTYPE_MULTI_LEVELS
	tr_mon 20, DRATINI
	tr_mon 20, KADABRA
	tr_mon 19, DRAGONAIR
	tr_mon 20, MEW
	end_trainer


ProfOakData:
	def_trainer_class PROF_OAK
; Unused
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 115, RAICHU
		tr_moves THUNDERBOLT, THUNDER_WAVE, SURF, BODY_SLAM
	tr_mon 115, MACHAMP
		tr_moves HI_JUMP_KICK, EARTHQUAKE, ROCK_SLIDE, BODY_SLAM
	tr_mon 115, CHANSEY
		tr_moves SOFTBOILED, ICE_BEAM, THUNDERBOLT, THUNDER_WAVE
	tr_mon 115, CHARIZARD
		tr_moves BLAST_BURN, EARTHQUAKE, SLASH, BODY_SLAM
	tr_mon 115, VENUSAUR
		tr_moves SLEEP_POWDER, RAZOR_LEAF, BODY_SLAM, DOUBLE_TEAM
	tr_mon 115, BLASTOISE
		tr_moves HYDRO_CANNON, BLIZZARD, EARTHQUAKE, BODY_SLAM
	end_trainer

	def_trainer 2, TRAINERTYPE_MULTI_LEVELS
	tr_mon 115, RAICHU
		tr_moves THUNDERBOLT, THUNDER_WAVE, SURF, BODY_SLAM
	tr_mon 115, MACHAMP
		tr_moves HI_JUMP_KICK, EARTHQUAKE, ROCK_SLIDE, BODY_SLAM
	tr_mon 115, CHANSEY
		tr_moves SOFTBOILED, ICE_BEAM, THUNDERBOLT, THUNDER_WAVE
	tr_mon 115, CHARIZARD
		tr_moves BLAST_BURN, EARTHQUAKE, SLASH, BODY_SLAM
	tr_mon 115, VENUSAUR
		tr_moves SLEEP_POWDER, RAZOR_LEAF, BODY_SLAM, DOUBLE_TEAM
	tr_mon 115, BLASTOISE
		tr_moves HYDRO_CANNON, BLIZZARD, EARTHQUAKE, BODY_SLAM
	end_trainer

	def_trainer 3, TRAINERTYPE_MULTI_LEVELS
	tr_mon 115, RAICHU
		tr_moves THUNDERBOLT, THUNDER_WAVE, SURF, BODY_SLAM
	tr_mon 115, MACHAMP
		tr_moves HI_JUMP_KICK, EARTHQUAKE, ROCK_SLIDE, BODY_SLAM
	tr_mon 115, CHANSEY
		tr_moves SOFTBOILED, ICE_BEAM, THUNDERBOLT, THUNDER_WAVE
	tr_mon 115, CHARIZARD
		tr_moves BLAST_BURN, EARTHQUAKE, SLASH, BODY_SLAM
	tr_mon 115, VENUSAUR
		tr_moves SLEEP_POWDER, RAZOR_LEAF, BODY_SLAM, DOUBLE_TEAM
	tr_mon 115, BLASTOISE
		tr_moves HYDRO_CANNON, BLIZZARD, EARTHQUAKE, BODY_SLAM
	end_trainer


ChiefData:
	def_trainer_class CHIEF
; none

ScientistData:
	def_trainer_class SCIENTIST
; Unused
	def_trainer 1, 34
	tr_mon KOFFING
	tr_mon VOLTORB
	end_trainer

; Silph Co. 2F
	def_trainer 2, 26
	tr_mon GRIMER
	tr_mon WEEZING
	tr_mon KOFFING
	tr_mon WEEZING
	end_trainer

	def_trainer 3, 28
	tr_mon MAGNEMITE
	tr_mon VOLTORB
	tr_mon MAGNETON
	end_trainer

; Silph Co. 3F/Mansion 1F
	def_trainer 4, 29
	tr_mon ELECTRODE
	tr_mon WEEZING
	end_trainer

; Silph Co. 4F
	def_trainer 5, 33
	tr_mon ELECTRODE
	end_trainer

; Silph Co. 5F
	def_trainer 6, 26
	tr_mon MAGNETON
	tr_mon KOFFING
	tr_mon WEEZING
	tr_mon MAGNEMITE
	end_trainer

; Silph Co. 6F
	def_trainer 7, 25
	tr_mon VOLTORB
	tr_mon KOFFING
	tr_mon MAGNETON
	tr_mon MAGNEMITE
	tr_mon KOFFING
	end_trainer

; Silph Co. 7F
	def_trainer 8, 29
	tr_mon ELECTRODE
	tr_mon MUK
	end_trainer

; Silph Co. 8F
	def_trainer 9, 29
	tr_mon GRIMER
	tr_mon ELECTRODE
	end_trainer

; Silph Co. 9F
	def_trainer 10, 28
	tr_mon VOLTORB
	tr_mon KOFFING
	tr_mon MAGNETON
	end_trainer

; Silph Co. 10F
	def_trainer 11, 29
	tr_mon MAGNEMITE
	tr_mon KOFFING
	end_trainer

; Mansion 3F
	def_trainer 12, 33
	tr_mon MAGNEMITE
	tr_mon MAGNETON
	tr_mon VOLTORB
	end_trainer

; Mansion B1F
	def_trainer 13, 34
	tr_mon MAGNEMITE
	tr_mon ELECTRODE
	end_trainer


GiovanniData:
	def_trainer_class GIOVANNI
; Rocket Hideout B4F
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 55, PERSIAN
		tr_moves HYPNOSIS, SLASH
	tr_mon 55, DUGTRIO
		tr_moves EARTHQUAKE, FISSURE, SLASH, BODY_SLAM
	tr_mon 55, NIDOQUEEN
		tr_moves EARTHQUAKE, LOVELY_KISS, BLIZZARD, THUNDERBOLT
	tr_mon 55, NIDOKING
		tr_moves EARTHQUAKE, LOVELY_KISS, BLIZZARD, THUNDERBOLT
	tr_mon 55, RHYDON
		tr_moves EARTHQUAKE, ROCK_SLIDE, BODY_SLAM
	tr_mon 55, TAUROS
		tr_moves HYPER_BEAM, BODY_SLAM, EARTHQUAKE
	end_trainer

; Silph Co. 11F
	def_trainer 2, TRAINERTYPE_MULTI_LEVELS
	tr_mon 72, PERSIAN
		tr_moves HYPNOSIS, SLASH
	tr_mon 72, NIDOQUEEN
		tr_moves EARTHQUAKE, LOVELY_KISS, BLIZZARD, THUNDERBOLT
	tr_mon 72, ALAKAZAM
		tr_moves THUNDER_WAVE, PSYCHIC_M, RECOVER
	tr_mon 72, GENGAR
		tr_moves HYPNOSIS, PSYCHIC_M, EXPLOSION, NIGHT_SHADE
	tr_mon 72, TAUROS
		tr_moves HYPER_BEAM, BODY_SLAM, EARTHQUAKE
	tr_mon 72, ZAPDOS
		tr_moves THUNDER_WAVE, THUNDERBOLT, DRILL_PECK
	end_trainer

; Viridian Gym
	def_trainer 3, TRAINERTYPE_MULTI_LEVELS
	tr_mon 90, PERSIAN
		tr_moves HYPNOSIS, SLASH
	tr_mon 90, DUGTRIO
		tr_moves EARTHQUAKE, FISSURE, SLASH, BODY_SLAM
	tr_mon 90, ZAPDOS
		tr_moves THUNDER_WAVE, THUNDERBOLT, DRILL_PECK
	tr_mon 90, GENGAR
		tr_moves HYPNOSIS, PSYCHIC_M, EXPLOSION, NIGHT_SHADE
	tr_mon 90, TAUROS
		tr_moves HYPER_BEAM, BODY_SLAM, EARTHQUAKE
	tr_mon 90, MEWTWO
		tr_moves THUNDER_WAVE, PSYCHIC_M, BODY_SLAM, RECOVER
	end_trainer


RocketData:
	def_trainer_class ROCKET
; Mt. Moon B2F
	def_trainer 1, 13
	tr_mon RATTATA
	tr_mon ZUBAT
	end_trainer

	def_trainer 2, 11
	tr_mon SANDSHREW
	tr_mon RATTATA
	tr_mon ZUBAT
	end_trainer

	def_trainer 3, 12
	tr_mon ZUBAT
	tr_mon EKANS
	end_trainer

	def_trainer 4, 16
	tr_mon RATICATE
	end_trainer

; Cerulean City
	def_trainer 5, 17
	tr_mon MACHOP
	tr_mon DROWZEE
	end_trainer

; Route 24
	def_trainer 6, 15
	tr_mon EKANS
	tr_mon ZUBAT
	end_trainer

; Game Corner
	def_trainer 7, 20
	tr_mon RATICATE
	tr_mon ZUBAT
	end_trainer

; Rocket Hideout B1F
	def_trainer 8, 21
	tr_mon DROWZEE
	tr_mon MACHOP
	end_trainer

	def_trainer 9, 21
	tr_mon RATICATE
	tr_mon RATICATE
	end_trainer

	def_trainer 10, 20
	tr_mon GRIMER
	tr_mon KOFFING
	tr_mon KOFFING
	end_trainer

	def_trainer 11, 19
	tr_mon RATTATA
	tr_mon RATICATE
	tr_mon RATICATE
	tr_mon RATTATA
	end_trainer

	def_trainer 12, 22
	tr_mon GRIMER
	tr_mon KOFFING
	end_trainer

; Rocket Hideout B2F
	def_trainer 13, 17
	tr_mon ZUBAT
	tr_mon KOFFING
	tr_mon GRIMER
	tr_mon ZUBAT
	tr_mon RATICATE
	end_trainer

; Rocket Hideout B3F
	def_trainer 14, 20
	tr_mon RATTATA
	tr_mon RATICATE
	tr_mon DROWZEE
	end_trainer

	def_trainer 15, 21
	tr_mon MACHOP
	tr_mon MACHOP
	end_trainer

; Rocket Hideout B4F
	def_trainer 16, 23
	tr_mon SANDSHREW
	tr_mon EKANS
	tr_mon SANDSLASH
	end_trainer

	def_trainer 17, 23
	tr_mon EKANS
	tr_mon SANDSHREW
	tr_mon ARBOK
	end_trainer

	def_trainer 18, 21
	tr_mon KOFFING
	tr_mon ZUBAT
	end_trainer

; Pokémon Tower 7F
	def_trainer 19, 25
	tr_mon ZUBAT
	tr_mon ZUBAT
	tr_mon GOLBAT
	end_trainer

	def_trainer 20, 26
	tr_mon KOFFING
	tr_mon DROWZEE
	end_trainer

	def_trainer 21, 23
	tr_mon ZUBAT
	tr_mon RATTATA
	tr_mon RATICATE
	tr_mon ZUBAT
	end_trainer

; Unused
	def_trainer 22, 26
	tr_mon DROWZEE
	tr_mon KOFFING
	end_trainer

; Silph Co. 2F
	def_trainer 23, 29
	tr_mon CUBONE
	tr_mon ZUBAT
	end_trainer

	def_trainer 24, 25
	tr_mon GOLBAT
	tr_mon ZUBAT
	tr_mon ZUBAT
	tr_mon RATICATE
	tr_mon ZUBAT
	end_trainer

; Silph Co. 3F
	def_trainer 25, 28
	tr_mon RATICATE
	tr_mon HYPNO
	tr_mon RATICATE
	end_trainer

; Silph Co. 4F
	def_trainer 26, 29
	tr_mon MACHOP
	tr_mon DROWZEE
	end_trainer

	def_trainer 27, 28
	tr_mon EKANS
	tr_mon ZUBAT
	tr_mon CUBONE
	end_trainer

; Silph Co. 5F
	def_trainer 28, 33
	tr_mon ARBOK
	end_trainer

	def_trainer 29, 33
	tr_mon HYPNO
	end_trainer

; Silph Co. 6F
	def_trainer 30, 29
	tr_mon MACHOP
	tr_mon MACHOKE
	end_trainer

	def_trainer 31, 28
	tr_mon ZUBAT
	tr_mon ZUBAT
	tr_mon GOLBAT
	end_trainer

; Silph Co. 7F
	def_trainer 32, 26
	tr_mon RATICATE
	tr_mon ARBOK
	tr_mon KOFFING
	tr_mon GOLBAT
	end_trainer

	def_trainer 33, 29
	tr_mon CUBONE
	tr_mon CUBONE
	end_trainer

	def_trainer 34, 29
	tr_mon SANDSHREW
	tr_mon SANDSLASH
	end_trainer

; Silph Co. 8F
	def_trainer 35, 26
	tr_mon RATICATE
	tr_mon ZUBAT
	tr_mon GOLBAT
	tr_mon RATTATA
	end_trainer

	def_trainer 36, 28
	tr_mon WEEZING
	tr_mon GOLBAT
	tr_mon KOFFING
	end_trainer

; Silph Co. 9F
	def_trainer 37, 28
	tr_mon DROWZEE
	tr_mon GRIMER
	tr_mon MACHOP
	end_trainer

	def_trainer 38, 28
	tr_mon GOLBAT
	tr_mon DROWZEE
	tr_mon HYPNO
	end_trainer

; Silph Co. 10F
	def_trainer 39, 33
	tr_mon MACHOKE
	end_trainer

; Silph Co. 11F
	def_trainer 40, 25
	tr_mon RATTATA
	tr_mon RATTATA
	tr_mon ZUBAT
	tr_mon RATTATA
	tr_mon EKANS
	end_trainer

	def_trainer 41, 32
	tr_mon CUBONE
	tr_mon DROWZEE
	tr_mon MAROWAK
	end_trainer


CooltrainerMData:
	def_trainer_class COOLTRAINER_M
; Viridian Gym
	def_trainer 1, 39
	tr_mon NIDORINO
	tr_mon NIDOKING
	end_trainer

; Victory Road 3F
	def_trainer 2, 43
	tr_mon EXEGGUTOR
	tr_mon CLOYSTER
	tr_mon ARCANINE
	end_trainer

	def_trainer 3, 43
	tr_mon KINGLER
	tr_mon TENTACRUEL
	tr_mon BLASTOISE
	end_trainer

; Unused
	def_trainer 4, 45
	tr_mon KINGLER
	tr_mon STARMIE
	end_trainer

; Victory Road 1F
	def_trainer 5, 42
	tr_mon IVYSAUR
	tr_mon WARTORTLE
	tr_mon CHARMELEON
	tr_mon CHARIZARD
	end_trainer

; Unused
	def_trainer 6, 44
	tr_mon IVYSAUR
	tr_mon WARTORTLE
	tr_mon CHARMELEON
	end_trainer

	def_trainer 7, 49
	tr_mon NIDOKING
	end_trainer

	def_trainer 8, 44
	tr_mon KINGLER
	tr_mon CLOYSTER
	end_trainer

; Viridian Gym
	def_trainer 9, 39
	tr_mon SANDSLASH
	tr_mon DUGTRIO
	end_trainer

	def_trainer 10, 43
	tr_mon RHYHORN
	end_trainer


CooltrainerFData:
	def_trainer_class COOLTRAINER_F
; Celadon Gym
	def_trainer 1, 24
	tr_mon WEEPINBELL
	tr_mon GLOOM
	tr_mon IVYSAUR
	end_trainer

; Victory Road 3F
	def_trainer 2, 43
	tr_mon BELLSPROUT
	tr_mon WEEPINBELL
	tr_mon VICTREEBEL
	end_trainer

	def_trainer 3, 43
	tr_mon PARASECT
	tr_mon DEWGONG
	tr_mon CHANSEY
	end_trainer

; Unused
	def_trainer 4, 46
	tr_mon VILEPLUME
	tr_mon BUTTERFREE
	end_trainer

; Victory Road 1F
	def_trainer 5, 44
	tr_mon PERSIAN
	tr_mon NINETALES
	end_trainer

; Unused
	def_trainer 6, 45
	tr_mon IVYSAUR
	tr_mon VENUSAUR
	end_trainer

	def_trainer 7, 45
	tr_mon NIDORINA
	tr_mon NIDOQUEEN
	end_trainer

	def_trainer 8, 43
	tr_mon PERSIAN
	tr_mon NINETALES
	tr_mon RAICHU
	end_trainer


BrunoData:
	def_trainer_class BRUNO
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 68, GOLEM
		tr_moves BODY_SLAM, ROCK_SLIDE, EARTHQUAKE, EXPLOSION
	tr_mon 68, PRIMEAPE
		tr_moves BODY_SLAM, SEISMIC_TOSS, ROCK_SLIDE, HI_JUMP_KICK
	tr_mon 68, RHYDON
		tr_moves EARTHQUAKE, BODY_SLAM, ROCK_SLIDE
	tr_mon 68, POLIWRATH
		tr_moves EARTHQUAKE, LOVELY_KISS, BLIZZARD, HYDRO_PUMP
	tr_mon 68, MUK
		tr_moves SLUDGE, EXPLOSION, TOXIC, BODY_SLAM
	tr_mon 68, MACHAMP
		tr_moves BODY_SLAM, ROCK_SLIDE, EARTHQUAKE, HI_JUMP_KICK
	end_trainer


BrockData:
	def_trainer_class BROCK
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 15, GOLEM
		tr_moves EXPLOSION, EARTHQUAKE, ROCK_SLIDE, BODY_SLAM
	tr_mon 15, KABUTO
		tr_moves BLIZZARD, WATERFALL, SLASH
	tr_mon 15, OMANYTE
		tr_moves BLIZZARD, WATERFALL
	tr_mon 15, AERODACTYL
		tr_moves FLY
	end_trainer


MistyData:
	def_trainer_class MISTY
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 26, VAPOREON
		tr_moves ICE_BEAM, BODY_SLAM, SAND_ATTACK, WATERFALL
	tr_mon 26, POLIWRATH
		tr_moves LOVELY_KISS, ICE_BEAM, EARTHQUAKE, WATERFALL
	tr_mon 26, DEWGONG
		tr_moves HORN_DRILL, ICE_BEAM, BODY_SLAM, WATERFALL
	tr_mon 26, STARMIE
		tr_moves THUNDER_WAVE, BLIZZARD, THUNDERBOLT, RECOVER
	end_trainer


LtSurgeData:
	def_trainer_class LT_SURGE
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 39, ELECTRODE
		tr_moves THUNDER_WAVE, EXPLOSION, THUNDERBOLT
	tr_mon 39, MAGNETON
		tr_moves THUNDER_WAVE, THUNDERBOLT, DOUBLE_TEAM, DOUBLE_EDGE
	tr_mon 39, PORYGON
		tr_moves THUNDER_WAVE, BLIZZARD, THUNDERBOLT, RECOVER
	tr_mon 39, JOLTEON
		tr_moves THUNDER_WAVE, THUNDERBOLT, BODY_SLAM, SAND_ATTACK
	tr_mon 39, ELECTABUZZ
		tr_moves THUNDER_WAVE, THUNDERBOLT, ICE_PUNCH, PSYCHIC_M
	tr_mon 39, RAICHU
		tr_moves THUNDER_WAVE, THUNDERBOLT, SURF, BODY_SLAM
	end_trainer


ErikaData:
	def_trainer_class ERIKA
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 54, VILEPLUME
		tr_moves SLEEP_POWDER, STUN_SPORE, PETAL_DANCE
	tr_mon 54, CLEFABLE
		tr_moves THUNDER_WAVE, BLIZZARD, PSYCHIC_M, BODY_SLAM
	tr_mon 54, VENUSAUR
		tr_moves SLEEP_POWDER, RAZOR_LEAF, DOUBLE_TEAM, BODY_SLAM
	tr_mon 54, TANGELA
		tr_moves SLEEP_POWDER, STUN_SPORE, WRAP
	tr_mon 54, VICTREEBEL
		tr_moves LOVELY_KISS, STUN_SPORE, RAZOR_LEAF, BODY_SLAM
	tr_mon 54, EXEGGUTOR
		tr_moves SLEEP_POWDER, STUN_SPORE, PSYCHIC_M
	end_trainer


KogaData:
	def_trainer_class KOGA
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 66, VENOMOTH
		tr_moves STUN_SPORE, SLEEP_POWDER, PSYCHIC_M
	tr_mon 66, WEEZING
		tr_moves EXPLOSION, SLUDGE, FIRE_BLAST, THUNDERBOLT
	tr_mon 66, MR_MIME
		tr_moves THUNDER_WAVE, THUNDERBOLT, HYPNOSIS, PSYCHIC_M
	tr_mon 66, NIDOKING
		tr_moves LOVELY_KISS, EARTHQUAKE, THUNDERBOLT, BLIZZARD
	tr_mon 66, GENGAR
		tr_moves HYPNOSIS, PSYCHIC_M, NIGHT_SHADE, EXPLOSION
	tr_mon 66, TENTACRUEL
		tr_moves SURF, BLIZZARD, WRAP
	end_trainer


BlaineData:
	def_trainer_class BLAINE
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 84, CHARIZARD
		tr_moves FIRE_BLAST, SLASH, BODY_SLAM, EARTHQUAKE
	tr_mon 84, CHANSEY
		tr_moves THUNDER_WAVE, SOFTBOILED, THUNDERBOLT, ICE_BEAM
	tr_mon 84, RAPIDASH
		tr_moves HORN_DRILL, HYPNOSIS
	tr_mon 84, FLAREON
		tr_moves FIRE_BLAST, BODY_SLAM, SOLARBEAM, SAND_ATTACK
	tr_mon 84, MAGMAR
		tr_moves FIRE_BLAST, BODY_SLAM, SOLARBEAM, THUNDERBOLT
	tr_mon 84, MOLTRES
		tr_moves FIRE_BLAST, SKY_ATTACK, SOLARBEAM
	end_trainer


SabrinaData:
	def_trainer_class SABRINA
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 75, JYNX
		tr_moves PSYCHIC_M, LOVELY_KISS, BLIZZARD
	tr_mon 75, SLOWBRO
		tr_moves PSYCHIC_M, THUNDER_WAVE, SURF, AMNESIA
	tr_mon 75, HYPNO
		tr_moves PSYCHIC_M, THUNDER_WAVE, HYPNOSIS
	tr_mon 75, EXEGGUTOR
		tr_moves PSYCHIC_M, STUN_SPORE, SLEEP_POWDER
	tr_mon 75, STARMIE
		tr_moves THUNDER_WAVE, BLIZZARD, THUNDERBOLT, RECOVER
	tr_mon 75, ALAKAZAM
		tr_moves PSYCHIC_M, THUNDER_WAVE, RECOVER
	end_trainer


GentlemanData:
	def_trainer_class GENTLEMAN
; SS Anne 1F Rooms
	def_trainer 1, 18
	tr_mon GROWLITHE
	tr_mon GROWLITHE
	end_trainer

	def_trainer 2, 19
	tr_mon NIDORAN_M
	tr_mon NIDORAN_F
	end_trainer

; SS Anne 2F Rooms/Vermilion Gym
	def_trainer 3, 23
	tr_mon PIKACHU
	end_trainer

; Unused
	def_trainer 4, 48
	tr_mon PRIMEAPE
	end_trainer

; SS Anne 2F Rooms
	def_trainer 5, 17
	tr_mon GROWLITHE
	tr_mon PONYTA
	end_trainer


Rival2Data:
	def_trainer_class RIVAL2
; SS Anne 2F
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 30, JOLTEON
	tr_mon 30, FLAREON
	tr_mon 31, VAPOREON
	tr_mon 31, MEW
	end_trainer

	def_trainer 2, TRAINERTYPE_MULTI_LEVELS
	tr_mon 30, FLAREON
	tr_mon 30, VAPOREON
	tr_mon 31, JOLTEON
	tr_mon 31, MEW
	end_trainer

	def_trainer 3, TRAINERTYPE_MULTI_LEVELS
	tr_mon 30, VAPOREON
	tr_mon 30, JOLTEON
	tr_mon 31, FLAREON
	tr_mon 31, MEW
	end_trainer

; Pokémon Tower 2F
	def_trainer 4, TRAINERTYPE_MULTI_LEVELS
	tr_mon 53, GOLEM
	tr_mon 53, PIDGEOT
	tr_mon 53, VENUSAUR
	tr_mon 53, CHARIZARD
	tr_mon 53, BLASTOISE
	tr_mon 53, MEW
	end_trainer

	def_trainer 5, TRAINERTYPE_MULTI_LEVELS
	tr_mon 53, PIDGEOT
	tr_mon 53, GOLEM
	tr_mon 53, VENUSAUR
	tr_mon 53, BLASTOISE
	tr_mon 53, CHARIZARD
	tr_mon 53, MEW
	end_trainer

	def_trainer 6, TRAINERTYPE_MULTI_LEVELS
	tr_mon 53, PIDGEOT
	tr_mon 53, GOLEM
	tr_mon 53, BLASTOISE
	tr_mon 53, VENUSAUR
	tr_mon 53, CHARIZARD
	tr_mon 53, MEW
	end_trainer

; Silph Co. 7F
	def_trainer 7, TRAINERTYPE_MULTI_LEVELS
	tr_mon 70, DODRIO
	tr_mon 70, SANDSLASH
	tr_mon 70, ARCANINE
	tr_mon 70, EXEGGUTOR
	tr_mon 70, GYARADOS
	tr_mon 70, MEW
	end_trainer

	def_trainer 8, TRAINERTYPE_MULTI_LEVELS
	tr_mon 70, SANDSLASH
	tr_mon 70, DODRIO
	tr_mon 70, EXEGGUTOR
	tr_mon 70, GYARADOS
	tr_mon 70, ARCANINE
	tr_mon 70, MEW
	end_trainer

	def_trainer 9, TRAINERTYPE_MULTI_LEVELS
	tr_mon 70, SANDSLASH
	tr_mon 70, DODRIO
	tr_mon 70, ARCANINE
	tr_mon 70, EXEGGUTOR
	tr_mon 70, GYARADOS
	tr_mon 70, MEW
	end_trainer

; Route 22
	def_trainer 10, TRAINERTYPE_MULTI_LEVELS
	tr_mon 85, JOLTEON
	tr_mon 85, RHYDON
	tr_mon 85, TAUROS
	tr_mon 85, EXEGGUTOR
	tr_mon 85, STARMIE
	tr_mon 85, MEW
	end_trainer

	def_trainer 11, TRAINERTYPE_MULTI_LEVELS
	tr_mon 85, JOLTEON
	tr_mon 85, RHYDON
	tr_mon 85, TAUROS
	tr_mon 85, EXEGGUTOR
	tr_mon 85, STARMIE
	tr_mon 85, MEW
	end_trainer

	def_trainer 12, TRAINERTYPE_MULTI_LEVELS
	tr_mon 85, JOLTEON
	tr_mon 85, RHYDON
	tr_mon 85, TAUROS
	tr_mon 85, EXEGGUTOR
	tr_mon 85, STARMIE
	tr_mon 85, MEW
	end_trainer


Rival3Data:
	def_trainer_class RIVAL3
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 115, MEW
		tr_moves PSYCHIC_M, SOFTBOILED, THUNDER_WAVE, BODY_SLAM
	tr_mon 115, JOLTEON
		tr_moves THUNDERBOLT, THUNDER_WAVE, BODY_SLAM, SAND_ATTACK
	tr_mon 115, EXEGGUTOR
		tr_moves STUN_SPORE, SLEEP_POWDER, PSYCHIC_M
	tr_mon 115, STARMIE
		tr_moves THUNDER_WAVE, BLIZZARD, THUNDERBOLT, RECOVER
	tr_mon 115, TAUROS
		tr_moves HYPER_BEAM, BODY_SLAM, EARTHQUAKE
	tr_mon 115, MEWTWO
		tr_moves PSYCHIC_M, RECOVER, THUNDER_WAVE, BODY_SLAM
	end_trainer

	def_trainer 2, TRAINERTYPE_MULTI_LEVELS
	tr_mon 115, MEW
		tr_moves PSYCHIC_M, SOFTBOILED, THUNDER_WAVE, BODY_SLAM
	tr_mon 115, JOLTEON
		tr_moves THUNDERBOLT, THUNDER_WAVE, BODY_SLAM, SAND_ATTACK
	tr_mon 115, EXEGGUTOR
		tr_moves STUN_SPORE, SLEEP_POWDER, PSYCHIC_M
	tr_mon 115, STARMIE
		tr_moves THUNDER_WAVE, BLIZZARD, THUNDERBOLT, RECOVER
	tr_mon 115, TAUROS
		tr_moves HYPER_BEAM, BODY_SLAM, EARTHQUAKE
	tr_mon 115, MEWTWO
		tr_moves PSYCHIC_M, RECOVER, THUNDER_WAVE, BODY_SLAM
	end_trainer

	def_trainer 3, TRAINERTYPE_MULTI_LEVELS
	tr_mon 115, MEW
		tr_moves PSYCHIC_M, SOFTBOILED, THUNDER_WAVE, BODY_SLAM
	tr_mon 115, JOLTEON
		tr_moves THUNDERBOLT, THUNDER_WAVE, BODY_SLAM, SAND_ATTACK
	tr_mon 115, EXEGGUTOR
		tr_moves STUN_SPORE, SLEEP_POWDER, PSYCHIC_M
	tr_mon 115, STARMIE
		tr_moves THUNDER_WAVE, BLIZZARD, THUNDERBOLT, RECOVER
	tr_mon 115, TAUROS
		tr_moves HYPER_BEAM, BODY_SLAM, EARTHQUAKE
	tr_mon 115, MEWTWO
		tr_moves PSYCHIC_M, RECOVER, THUNDER_WAVE, BODY_SLAM
	end_trainer


LoreleiData:
	def_trainer_class LORELEI
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 115, CLOYSTER
		tr_moves BLIZZARD, EXPLOSION, CLAMP
	tr_mon 115, NIDOQUEEN
		tr_moves EARTHQUAKE, BLIZZARD, LOVELY_KISS, THUNDERBOLT
	tr_mon 115, VAPOREON
		tr_moves HYDRO_PUMP, BLIZZARD, BODY_SLAM, SAND_ATTACK
	tr_mon 115, JYNX
		tr_moves BLIZZARD, LOVELY_KISS, PSYCHIC_M
	tr_mon 115, LAPRAS
		tr_moves BLIZZARD, THUNDERBOLT, SURF, BODY_SLAM
	tr_mon 115, ARTICUNO
		tr_moves BLIZZARD, SKY_ATTACK
	end_trainer


ChannelerData:
	def_trainer_class CHANNELER
; Unused
	def_trainer 1, 22
	tr_mon GASTLY
	end_trainer

	def_trainer 2, 24
	tr_mon GASTLY
	end_trainer

	def_trainer 3, 23
	tr_mon GASTLY
	tr_mon GASTLY
	end_trainer

	def_trainer 4, 24
	tr_mon GASTLY
	end_trainer

; Pokémon Tower 3F
	def_trainer 5, 23
	tr_mon GASTLY
	end_trainer

	def_trainer 6, 24
	tr_mon GASTLY
	end_trainer

; Unused
	def_trainer 7, 24
	tr_mon HAUNTER
	end_trainer

; Pokémon Tower 3F
	def_trainer 8, 22
	tr_mon GASTLY
	end_trainer

; Pokémon Tower 4F
	def_trainer 9, 24
	tr_mon GASTLY
	end_trainer

	def_trainer 10, 23
	tr_mon GASTLY
	tr_mon GASTLY
	end_trainer

; Unused
	def_trainer 11, 24
	tr_mon GASTLY
	end_trainer

; Pokémon Tower 4F
	def_trainer 12, 22
	tr_mon GASTLY
	end_trainer

; Unused
	def_trainer 13, 24
	tr_mon GASTLY
	end_trainer

; Pokémon Tower 5F
	def_trainer 14, 23
	tr_mon HAUNTER
	end_trainer

; Unused
	def_trainer 15, 24
	tr_mon GASTLY
	end_trainer

; Pokémon Tower 5F
	def_trainer 16, 22
	tr_mon GASTLY
	end_trainer

	def_trainer 17, 24
	tr_mon GASTLY
	end_trainer

	def_trainer 18, 22
	tr_mon HAUNTER
	end_trainer

; Pokémon Tower 6F
	def_trainer 19, 22
	tr_mon GASTLY
	tr_mon GASTLY
	tr_mon GASTLY
	end_trainer

	def_trainer 20, 24
	tr_mon GASTLY
	end_trainer

	def_trainer 21, 24
	tr_mon GASTLY
	end_trainer

; Saffron Gym
	def_trainer 22, 34
	tr_mon GASTLY
	tr_mon HAUNTER
	end_trainer

	def_trainer 23, 38
	tr_mon HAUNTER
	end_trainer

	def_trainer 24, 33
	tr_mon GASTLY
	tr_mon GASTLY
	tr_mon HAUNTER
	end_trainer


AgathaData:
	def_trainer_class AGATHA
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 115, HYPNO
		tr_moves THUNDER_WAVE, HYPNOSIS, PSYCHIC_M
	tr_mon 115, EXEGGUTOR
		tr_moves SLEEP_POWDER, STUN_SPORE, PSYCHIC_M
	tr_mon 115, TENTACRUEL
		tr_moves SURF, BLIZZARD, WRAP
	tr_mon 115, JYNX
		tr_moves LOVELY_KISS, BLIZZARD, PSYCHIC_M
	tr_mon 115, GENGAR
		tr_moves HYPNOSIS, PSYCHIC_M, SEISMIC_TOSS, NIGHT_SHADE
	tr_mon 115, ALAKAZAM
		tr_moves THUNDER_WAVE, PSYCHIC_M, RECOVER
	end_trainer


LanceData:
	def_trainer_class LANCE
	def_trainer 1, TRAINERTYPE_MULTI_LEVELS
	tr_mon 115, KANGASKHAN
		tr_moves HYPER_BEAM, BODY_SLAM, EARTHQUAKE
	tr_mon 115, LAPRAS
		tr_moves BLIZZARD, SURF, THUNDERBOLT, BODY_SLAM
	tr_mon 115, ELECTABUZZ
		tr_moves THUNDERBOLT, ICE_PUNCH, PSYCHIC_M, THUNDER_WAVE
	tr_mon 115, DRAGONITE
		tr_moves THUNDER_WAVE, BLIZZARD, WRAP, DRACO_METEOR
	tr_mon 115, SNORLAX
		tr_moves LOVELY_KISS, HYPER_BEAM, BODY_SLAM, EARTHQUAKE
	tr_mon 115, AERODACTYL
		tr_moves SKY_ATTACK, ROCK_SLIDE, EARTHQUAKE, RAZOR_WIND
	end_trainer

end_trainer_parties

SECTION "DV and stat exp spreads", ROMX

DVSpreads:
	table_width 2
	FOR idx, DV_SPREADS_COUNT
		dn DV_SPREAD_{d:idx}_ATK, DV_SPREAD_{d:idx}_DEF, DV_SPREAD_{d:idx}_SPD, DV_SPREAD_{d:idx}_SPC
	ENDR
	assert_table_length DV_SPREADS_COUNT

StatExpSpreads:
	table_width NUM_STATS * 2
	FOR idx, STAT_EXP_SPREADS_COUNT
		with_each_stat "bigdw STAT_EXP_SPREAD_{d:idx}_?"
	ENDR
	assert_table_length STAT_EXP_SPREADS_COUNT
