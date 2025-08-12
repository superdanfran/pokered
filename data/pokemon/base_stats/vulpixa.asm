	db DEX_VULPIX_A ; pokedex id

	db  38,  41,  40,  65,  65
	;   hp  atk  def  spd  spc

	db ICE, FAIRY ; type
	db 255 ; catch rate
	db 63 ; base exp

	INCBIN "gfx/pokemon/front/avulpix.pic", 0, 1 ; sprite dimensions
	dw VulpixAPicFront, VulpixAPicBack

	db ICE_SHARD, CONFUSE_RAY, CHARM_VOICE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(VulpixAPicFront)
	assert BANK(VulpixAPicFront) == BANK(VulpixAPicBack)
