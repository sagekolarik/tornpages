var i=0

if juncture=i++ {
	
	PLAYER=obj_btl_ctrl.PLAYER
	
	scr_change_song(bgm_basic_victory,0.05)
	
	scr_cutscene_wait(10)
	
}
if juncture=i++ {
	PLAYER.image_index=0
	event_user(ADVANCE)
}

if juncture=i++ {
	
	if instance_exists(PLAYER) {
		scr_cutscene_set_sprite(PLAYER,spr_kai_attacking,false)
	}
	
	if instance_exists(PARTNER) {
		scr_cutscene_set_sprite(PARTNER,VICTORY,true)
	}
	
	scr_cutscene_wait(28)
	
}

if juncture=i++ {
	
	if instance_exists(PLAYER) {
		scr_cutscene_set_sprite(PLAYER,VICTORY,true)
	}
	
	if instance_exists(PARTNER) {
		scr_cutscene_set_sprite(PARTNER,VICTORY,true)
	}
	
	scr_cutscene_wait(10)
	
}

if juncture=i++ {
	
	scr_cutscene_create_message(noone,HEADSUP,0)
	message.font=fnt_standard_huge
	message.text[0]="Victory!"
	message.spd=2
			
	if floor(random(2))=0 {
		message.text[0]="You win!"
	}
	
}

if juncture=i++ {
	
	if EXP<=0 {
		event_user(ADVANCE)
	}
	
	if !instance_exists(obj_message) {
		
		var message = scr_create_message_specs(HEADSUP,0,"battle_victory_message")

		var shouldIaddans = "s"
		if EXP=1 {
			shouldIaddans = ""
		}

			message.text[0]="You've gained " + string(EXP) + " experience point" + shouldIaddans + "!"
			
	}
	
}

// heck for levelup
if juncture=i++ {
	
	if levelup {
		//go to levelup part
		event_user(ADVANCE)
		exit
	}
	else {
		//skip levelup part
		juncture+=5
		exit
	}
}
///////levelup
if juncture=i++ {
	
	scr_cutscene_wait(35)
	
	PLAYER.sprite_index=spr_kai_meditating
	if !instance_exists(obj_vfx) {
		vfx = instance_create_depth(PLAYER.x,PLAYER.y,PLAYER.depth-1,obj_vfx)
		vfx.sprite_index=spr_vfx_heal
		
	}
	
	//if it's not done leveling up
	if PLAYER.stats[? "HP"]!=PLAYER.stats[? "HP_max"] {
		PLAYER.stats[? "HP"]+=0.5
	}
	if PLAYER.stats[? "MP"]!=PLAYER.stats[? "MP_max"] {
		PLAYER.stats[? "MP"]+=0.5
	}
	
}

if juncture=i++ {
	
	//if it's not done keep gaining hp and mp
	if PLAYER.stats[? "HP"]!=PLAYER.stats[? "HP_max"] {
		PLAYER.stats[? "HP"]+=0.5
	}
	if PLAYER.stats[? "MP"]!=PLAYER.stats[? "MP_max"] {
		PLAYER.stats[? "MP"]+=0.5
	}
	
	if PLAYER.stats[? "HP"]=PLAYER.stats[? "HP_max"] and PLAYER.stats[? "MP"]=PLAYER.stats[? "MP_max"] {
	
		//for the battle hud's sake
		PLAYER.stats[? "LVL"]=obj_party_stats.Player[? "LVL"]
		PLAYER.stats[? "HP_max"]=obj_party_stats.Player[? "HP_max"]
		PLAYER.stats[? "MP_max"]=obj_party_stats.Player[? "MP_max"]
		PLAYER.stats[? "HP"]=PLAYER.stats[? "HP_max"]
		PLAYER.stats[? "MP"]=PLAYER.stats[? "MP_max"]
		
		event_user(ADVANCE)
		
	}
}


if juncture=i++ {

	scr_cutscene_wait(15)
	PLAYER.sprite_index=spr_kai_victory
	
}

if juncture=i++ {

	if !instance_exists(obj_message) {
		
		var message = scr_create_message_specs(HEADSUP,0,"battle_victory_message")
			var page = 0
			message.text[page++]="Kai reached level " + string(PLAYER.stats[? "LVL"]) + "!"
			
	}
	
}
//////////

if juncture=i++ {
	scr_cutscene_wait(35)
}

if juncture=i++ {
	scr_cutscene_wait(10)
	PLAYER.sprite_index=PLAYER.sprite[WALKING_RIGHT]
	PLAYER.hspeed=6
	if instance_exists(PARTNER) {
		PARTNER.sprite_index=PARTNER.sprite[WALKING_RIGHT]
		PARTNER.hspeed=PLAYER.hspeed
	}
	
}

////END
if juncture=i++ {
	instance_destroy()
}