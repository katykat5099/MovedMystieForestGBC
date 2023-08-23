	db TALADON ; 006

	db  55,  95,  65,  85,  55,  55
	;   hp  atk  def  spd  sat  sdf ; todo Add EVs

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; cannot be bred
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/taladon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm ; todo Moveset Taladon
	; end
