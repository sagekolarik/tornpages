//after kai's awaken attack

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
	message.text[0]="Expert as always, Kai."
	message.text[1]="And remember, when you take time to focus your mind like this, the effects will last for an entire battle."

}
if juncture=i++ {
	scr_cutscene_wait(10)
}
if juncture=i++ {
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="Gumper, show us how it is done."
}
if juncture=i++ {
	
	ROSAI.tutorial_cutscenes_completed++
	with obj_btl_ctrl {
		action_viable_failure_message="Rosai asked you to use the ability 'Awaken'."
		fight_viable=false
		ability_viable=true
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
