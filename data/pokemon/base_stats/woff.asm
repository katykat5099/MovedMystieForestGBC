	db WOFF ; 002

	db  20,  20,  10,  10,  5,  15
	;   hp  atk  def  spd  sat  sdf

	db GHOST, ICE ; type
	db 1 ; catch rate (not catch-able)
	db 90 ; base exp (to-do)
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch (not obtainable)
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/woff/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate (not obtainable)
	dn EGG_NONE, EGG_NONE ; egg groups (not obtainable)

	; tm/hm learnset (not obtainable)
	tmhm
	; end
