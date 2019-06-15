var i = 0

if juncture=i++ {
	
		ROSAI = scr_cutscene_establish_actor("Master Rosai")
		PLAYER=obj_player
		PARTNER=PLAYER.PARTNER

		scr_cutscene_set_sprite(PLAYER,UP,true)
		scr_cutscene_set_sprite(PARTNER,UP,true)
		scr_cutscene_set_sprite(ROSAI,UP,true)
		
		event_user(ADVANCE)
		
	}
if juncture=i++ {
		scr_cutscene_wait(10)
	}
if juncture=i++ {
		scr_cutscene_set_sprite(ROSAI,DOWN,true)
		scr_cutscene_create_message(ROSAI,DIALOGUE,0)
		message.text[0] = "Why don't we just skip this cutscene and go straight to battle?"
	}
if juncture=i++ {
	
		scr_cutscene_move(PLAYER,CORRECT_SPRITE,136,90,false,PLAYER.spd)
		scr_cutscene_move(PARTNER,CORRECT_SPRITE,128,100,false,PLAYER.spd)
		scr_cutscene_move(ROSAI,CORRECT_SPRITE,184,88,false,PLAYER.spd)
		
	}
if juncture=i++ {
	scr_face_towards_instance(ROSAI,PLAYER)
	scr_face_towards_instance(PLAYER,ROSAI)
	scr_face_towards_instance(PARTNER,ROSAI)
	
	scr_cutscene_wait(5)
}

if juncture=i++ {
	scr_cutscene_wait(15)
	scr_cutscene_set_sprite(ROSAI,spr_rosai_battle_idle,false)
		ROSAI.image_xscale=-1
	scr_cutscene_set_sprite(PLAYER,spr_kai_idle_battle_4,false)
	scr_cutscene_set_sprite(PARTNER,spr_gumper_idle_battle_2,false)
}

if juncture=i++ {
	global.btlcd=101
	fade = instance_create_depth(x,y,depth,obj_btl_fade)
	event_user(ADVANCE)
}
if juncture=i++ {
	//if arrived, cutscene is over
	if !instance_exists(fade) {
		instance_destroy()
	}
}