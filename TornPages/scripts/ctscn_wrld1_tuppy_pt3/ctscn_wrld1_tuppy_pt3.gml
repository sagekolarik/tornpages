var i=0
//after battle

if juncture=i++ {
	
	//if back from battle
	if !instance_exists(obj_btl_fade) and room!=rm_btl and room!=rm_gameover {
		PLAYER = obj_player
		event_user(ADVANCE)
	}
	
}

if juncture=i++ {
	
	//make new follower
	TUPPY = instance_create_depth(PLAYER.x,PLAYER.y-16,obj_player.depth,obj_npc_follow)
	//set sprites
	with TUPPY {
		sprite[RIGHT]=spr_tuppy_walking_right_crying
		sprite[UP]=spr_tuppy_walking_up
		sprite[LEFT]=spr_tuppy_walking_left_crying
		sprite[DOWN]=spr_tuppy_crying
		sprite[WALKING_RIGHT]=spr_tuppy_walking_right_crying
		sprite[WALKING_LEFT]=spr_tuppy_walking_left_crying
		sprite[WALKING_UP]=spr_tuppy_walking_up
		sprite[WALKING_DOWN]=spr_tuppy_walking_down_crying
		
		follow_queue_size=8
		
		text[0]="We gotta go!"
	}
	
	scr_set_player_follower_followqueue(TUPPY)
			
	scr_cutscene_set_sprite(PLAYER,UP,true)
	
	event_user(ADVANCE)
	
}

if juncture=i++ {
			
	scr_cutscene_set_sprite(TUPPY,DOWN,true)
	scr_cutscene_wait(15)
}
if juncture=i++ {
			
	scr_cutscene_set_sprite(TUPPY,RIGHT,true)
	scr_cutscene_wait(10)
}
if juncture=i++ {
	scr_cutscene_set_sprite(TUPPY,LEFT,true)
	scr_cutscene_wait(10)
}

if juncture=i++ {
	
	scr_cutscene_set_sprite(TUPPY,DOWN,true)
	scr_cutscene_create_message(TUPPY,DIALOGUE,0)
			var page=0
			message.text[page++]="I think it's gone."
		
}

if juncture=i++ {
	scr_cutscene_create_message(TUPPY,DIALOGUE,0)
			var page=0
			message.text[page++]="We gotta go!"
			message.spd=0.5
			message.size=2
}

if juncture=i++ {
	
	set_plotvar(plotvar.wrld1_rescued_tuppy,true)
	
	instance_destroy()
	
}




