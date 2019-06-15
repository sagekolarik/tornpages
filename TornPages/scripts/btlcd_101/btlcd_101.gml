/*/////////////////////////////////////////////////
	COMBATANTS
/*/////////////////////////////////////////////////

var inst_type = ENEMY
DUMMY = scr_create_combatant(obj_btl_dummy,1,inst_type,2,0)
	DUMMY.x=DUMMY.fixed_x

//asaf is special - he doesn't appear on the enemy list
ROSAI = scr_create_combatant(obj_btl_rosai_training,1,inst_type,3,-2)

var inst_type = ALLY
PLAYER = scr_create_combatant(obj_btl_player,noone,inst_type,3,0) 
PARTNER = scr_create_combatant(obj_btl_partner,noone,inst_type,1,2)

/*/////////////////////////////////////////////////
	BTLOBJS
/*/////////////////////////////////////////////////

var inst_type = BTLOBJ

/*/////////////////////////////////////////////////
	BGM/BKG (BACKGROUND MUSIC/BACKGROUNDS
/*/////////////////////////////////////////////////
		
//BGM
battle_song = bgm_fighting_to_learn
victory_music=bgm_basic_victory
script_execute(scr_change_song,battle_song,btl_music_fadeout_spd)
	
//BKG
var background = layer_background_get_id(layer_get_id("battle_background_layer"));
layer_background_sprite(background, bkg_btl_jg)
	
/*/////////////////////////////////////////////////
	INTRO MESSAGE
/*/////////////////////////////////////////////////
intro_message=noone

