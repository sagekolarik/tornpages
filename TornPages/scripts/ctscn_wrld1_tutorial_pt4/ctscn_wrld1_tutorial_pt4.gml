//after kai's second staff attack

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
	message.text[0]="..."
	message.text[1]="Well, Kai, you broke the dummy."
}
if juncture=i++ {
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="The craftsman will not be thrilled..."
	message.size=0.5
}
if juncture=i++ {
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="No matter. Next, we move on to mental training."
	message.text[1]="Center your thoughts on the situation. Awaken your senses to increase either your strength, fortitude, or speed."

}
if juncture=i++ {
	
	ROSAI.tutorial_cutscenes_completed++
	with obj_btl_ctrl {
		
		btlround++
		current_combatant=-1 // will bring it back to the beginning
		
		action_viable_failure_message = "Rosai asked you to use the ability 'Awaken'."
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
