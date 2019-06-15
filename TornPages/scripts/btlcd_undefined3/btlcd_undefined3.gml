var ally_startx = -32
var enemy_startx = room_width+32
/*/////////////////////////////////////////////////

	ENEMIES

/*/////////////////////////////////////////////////


var inst_type = ENEMY
	
	var theid = obj_btl_bird
	var instx = 240
	var insty = 128
	var inst = instance_create_depth(enemy_startx,insty,depth,theid)
	ds_list_add(inst_type,inst)
	inst.fixed_x=instx
	inst.fixed_y=insty

	

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

/*/////////////////////////////////////////////////

	ALLIES

/*/////////////////////////////////////////////////

var inst_type = ALLY

	//PLAYER
	var theid = obj_btl_player
		var instx = 80
		var insty = 128
		var inst = instance_create_depth(ally_startx,insty,depth,theid)
		ds_list_add(inst_type,inst)
		PLAYER = inst
		inst.fixed_x=instx
		inst.fixed_y=insty

	
	//PARTNER
	if ds_list_size(obj_party_stats.party)>1 //if there's more than just PLAYER
		{
			if obj_party_stats.party[| 1]= "Gumper"
				{theid=obj_btl_gumper}
			if obj_party_stats.party[| 1]= "Edgar"
				{theid=obj_btl_edgar}
			if obj_party_stats.party[| 1]= "Avi"
				{theid=obj_btl_avi}
			if obj_party_stats.party[| 1]= "Mona"
				{theid=obj_btl_edgar}
			if obj_party_stats.party[| 1]= "Florance"
				{theid=obj_btl_edgar}
			if obj_party_stats.party[| 1]= "Shaide"
				{theid=obj_btl_edgar}
		
			var instx = 48
			var insty = 144
			var inst = instance_create_depth(ally_startx,insty,depth,theid)
			ds_list_add(inst_type,inst)
			PARTNER = inst
			inst.fixed_x=instx
			inst.fixed_y=insty

		}
	else
		{
			PARTNER=noone
		}

