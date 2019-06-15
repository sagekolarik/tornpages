// 8 - END PHASE
	// plays a minor "cutscene" and informs the player of all battle achievements/stats.
	alarm[0]=-1
if battle_end=true {exit}

battle_end=true //prevents it from doing this again

//check for victory or defeat
if !instance_exists(PLAYER) {global.victory=false}
if !instance_exists(obj_enemy_combatant_parent) {global.victory=true}

if global.victory {

	if !instance_exists(PLAYER)
		{script_execute(scr_change_song,victory_music,0.05)}
		
		
	//add exp to player
	obj_party_stats.Player[? "EXP"]+=net_EXP
	
	//figure out how to make this loop...can only gain one level at a time	
	var levelup=false
	while obj_party_stats.Player[? "EXP"]>=obj_party_stats.Player[? "EXP_max"] {	
			levelup=true
			
			//LEVEL UP THE BTLSTATS OBJ
			obj_party_stats.Player[? "EXP"]-=obj_party_stats.Player[? "EXP_max"]
			obj_party_stats.Player[? "LVL"]+=1
			with obj_party_stats {script_execute(scr_calculate_party_btlstats,Player[? "LVL"])}
			
			//player's hp and mp is full
			obj_party_stats.Player[? "HP"]=obj_party_stats.Player[? "HP_max"]
			obj_party_stats.Player[? "MP"]=obj_party_stats.Player[? "MP_max"]
	}
	
	outro = instance_create_depth(x,y+32,depth,obj_btl_outro)
	outro.levelup=levelup
	outro.PLAYER=PLAYER
	outro.PARTNER=PARTNER
	outro.EXP=net_EXP
	
		
}
/*//////////////////////////////////////////
	DEFEAT - Will need to change it
/*//////////////////////////////////////////
if !global.victory {
	
	if fatal=true {
		
		outro = instance_create_depth(x,y+32,depth,obj_btl_outro)
		outro.PLAYER=PLAYER
		outro.PARTNER=PARTNER
		
	}
	
	else {
		alarm[END]=45
	}
	
}
