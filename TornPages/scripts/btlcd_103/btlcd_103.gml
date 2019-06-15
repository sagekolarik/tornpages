/*/////////////////////////////////////////////////
	COMBATANTS
/*/////////////////////////////////////////////////


var inst_type = ENEMY
scr_create_combatant(obj_btl_fluffer,1,inst_type,2,0)
scr_create_combatant(obj_btl_fluffer,1,inst_type,4,2)

var inst_type = ALLY
PLAYER = scr_create_combatant(obj_btl_player,noone,inst_type,3,0)
PARTNER = scr_create_combatant(obj_btl_partner,noone,inst_type,1,2)


/*/////////////////////////////////////////////////
	BTLOBJS
/*/////////////////////////////////////////////////

var inst_type = BTLOBJ

/*/////////////////////////////////////////////////
	BGM/BKG
/*/////////////////////////////////////////////////
		
	//BGM
	script_execute(scr_change_song,bgm_game_battle,btl_music_fadeout_spd)
	
	victory_music=bgm_basic_victory

	
	//BKG
	var background = layer_background_get_id(layer_get_id("battle_background_layer"));
	layer_background_sprite(background, bkg_btl_jg)
	
	//INTRO MESSAGE
	intro_message="These monsters are curious. They've never seen an ape with such smooth skin."