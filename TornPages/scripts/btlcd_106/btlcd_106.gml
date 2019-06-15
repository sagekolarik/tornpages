/*/////////////////////////////////////////////////
	COMBATANTS
/*/////////////////////////////////////////////////

var inst_type = ENEMY
scr_create_combatant(obj_btl_maw,3,inst_type,3,0)


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
battle_song = bgm_game_battle
victory_music=bgm_basic_victory
scr_change_song(battle_song,btl_music_fadeout_spd)
	
//BKG
var background = layer_background_get_id(layer_get_id("battle_background_layer"));
layer_background_sprite(background, bkg_btl_jg)
	
/*/////////////////////////////////////////////////
	INTRO MESSAGE
/*/////////////////////////////////////////////////
intro_message="The Carnivorous Maw is hungry for human flesh."

