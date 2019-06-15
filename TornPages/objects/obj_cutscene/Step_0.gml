never_appear_again=true

if cutscene=noone or disabled=true
	{
		instance_destroy()
		exit
	}

//EXECUTE CUTSCENE
script_execute(cutscene)
moment++


//SKIPPING
if obj_input.back_button {
	skip_held_time++
}
else {
	skip_held_time=0
}

if skip_held_time>=skip_held_time_threshhold {
	
	if instance_exists(obj_message) {
		with obj_message {instance_destroy()}
	}
	skipped=true
	scr_play_sfx(sfx_scifi4)
}

