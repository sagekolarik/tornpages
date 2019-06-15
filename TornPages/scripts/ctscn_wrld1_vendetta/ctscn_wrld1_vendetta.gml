//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	//establish variables for actors
	DAGROMM = scr_cutscene_establish_actor("DAGROMM")
	ROSAI = scr_cutscene_establish_actor("ROSAI")
	PLAYER=obj_player
	
	scr_cutscene_create_camera()
	
	event_user(ADVANCE)
	
}

if juncture=i++ {
	scr_cutscene_set_sprite(PLAYER,DOWN,true)
	scr_cutscene_wait(10)
}

if juncture=i++ {
		
		scr_cutscene_create_message(ROSAI,DIALOGUE,0)
		message.text[0]="Dagromm, I want you to listen to me very carefully."
		
}

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
	scr_change_zoom(80,1)
	scr_cutscene_move_camera(ROSAI.x,ROSAI.y,false,4,true)	
}	

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
		
		scr_cutscene_create_message(ROSAI,DIALOGUE,0)
		message.text[0]="When they find the boy..."	
}

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
		
		scr_cutscene_create_message(ROSAI,DIALOGUE,0)
		message.text[0]="Tell them to leave him alive."
}


if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_move(ROSAI,CORRECT_SPRITE,0,-16,true,2)
}

if juncture=i++ {
	scr_cutscene_set_sprite(ROSAI,UP,true)
	scr_cutscene_wait(1)
}

if juncture=i++ {
	scr_cutscene_move(ROSAI,CORRECT_SPRITE,420,140,false,2)
}

if juncture=i++ {
	scr_cutscene_set_sprite(DAGROMM,LEFT,true)
	scr_cutscene_set_sprite(ROSAI,LEFT,true)
	scr_cutscene_wait(40)
}

if juncture=i++ {
		
		scr_cutscene_create_message(ROSAI,DIALOGUE,0)
		message.text[0]="I'm going to kill him myself."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}


if juncture=i++ {
	scr_change_zoom(0,4)
	scr_cutscene_move_camera(PLAYER.x,PLAYER.y,false,4,true)
}

if juncture=i++ {
	set_plotvar(plotvar.wrld1_vendetta,true)
	scr_cutscene_reload_room()
}


//end
if juncture=i++ or skipped {
	
	instance_destroy()
}