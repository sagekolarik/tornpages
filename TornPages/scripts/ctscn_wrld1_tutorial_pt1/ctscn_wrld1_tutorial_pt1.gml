//introduce battle

var i=0

if juncture=i++ {
	
	PLAYER=obj_btl_player
	PARTNER=obj_btl_gumper
	ROSAI=obj_btl_rosai_training
	DUMMY=obj_btl_dummy
	
	//remove Rosai from the enemy list - only the dummy is targetable 
	with obj_btl_ctrl {
		ds_list_delete(ENEMY,ds_list_find_index(ENEMY,obj_btl_rosai_training.id))
		ds_list_delete(order,ds_list_find_index(order,obj_btl_rosai_training.id))
	}
	
	juncture=i++
	
}
if juncture=i++ {
	scr_cutscene_wait(10)
	scr_cutscene_set_sprite(ROSAI,RIGHT,true)
}
if juncture=i++ {
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="To start us off, show me your best strike."
	message.text[1]="Fight this dummy with your staff!"
}
if juncture=i++ {
	scr_cutscene_set_sprite(ROSAI,ATTACKING_RIGHT,true)
	
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="Go!"
}
if juncture=i++ {
	
	ROSAI.tutorial_cutscenes_completed++
	with obj_btl_ctrl {
		action_viable_failure_message="You're supposed to fight the dummy with your staff."
		fight_viable=true
		ability_viable=false
		item_viable=false
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
