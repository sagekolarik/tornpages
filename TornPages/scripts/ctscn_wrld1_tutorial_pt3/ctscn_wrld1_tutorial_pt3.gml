//after gumper's staff attack

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
	message.text[0]="Much better, Gumper. You’re improving."
	message.text[1]="Next time, try not to close your eyes or turn your face away from your opponent. Or cower in fear."
}
if juncture=i++ {
	scr_cutscene_wait(10)
}
if juncture=i++ {
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="Both of you, again! With feeling!"
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
