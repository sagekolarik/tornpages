//after gumper's awaken attack

var i=0

if juncture=i++ {
	
	PLAYER=obj_btl_player
	PARTNER=obj_btl_gumper
	ROSAI=obj_btl_rosai_training
	DUMMY=obj_btl_dummy
	
	juncture=i++
	
}
if juncture=i++ {
	scr_cutscene_wait(10)
	scr_cutscene_set_sprite(ROSAI,RIGHT,true)
}
if juncture=i++ {
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="Gumper."
}
if juncture=i++ {
	scr_cutscene_wait(30)
}
if juncture=i++ {
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="Gumper!"
}
if juncture=i++ {
	scr_cutscene_wait(30)
	scr_cutscene_set_sprite(ROSAI,RIGHT,true)
}
if juncture=i++ {
	scr_cutscene_move(ROSAI,ROSAI.sprite[WALKING_LEFT],PARTNER.x+32,PARTNER.y,false,10)
}
if juncture=i++ {
	ROSAI.sprite_index=spr_rosai_attack
	PARTNER.sprite_index=PARTNER.sprite[HURT_RIGHT]
	//sfx
	scr_cutscene_wait(5)
}

if juncture=i++ {
	scr_cutscene_move(ROSAI,ROSAI.sprite[WALKING_RIGHT],ROSAI.fixed_x,ROSAI.fixed_y,false,10)
}
if juncture=i++ {
	ROSAI.sprite_index=spr_rosai_battle_idle
}

if juncture=i++ {
	
	ROSAI.tutorial_cutscenes_completed++
	with obj_btl_ctrl {
		action_viable_failure_message="You're supposed to give Gumper fruit."
		fight_viable=false
		item_viable=true
		flee_viable=false
		swap_viable=false
	}
	
	//limit the options
	
	instance_destroy()
	
	//end cutscene
	with obj_btl_ctrl {
		phase=EVALUATION
		alarm[0]=1
	}
		
}
