Route22WildMons:
	def_grass_wildmons 25 ; encounter rate
	db  5, CUBONE
IF DEF(_RED)
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
ENDC
IF DEF(_BLUE)
	db  4, NIDORAN_F
	db  4, NIDORAN_M
	db  4, BULBASAUR
	db  5, BULBASAUR
	db  5, CHARMANDER
	db  5, CHARMANDER
	db  5, SQUIRTLE
	db  5, SQUIRTLE
	db  5, DITTO
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
