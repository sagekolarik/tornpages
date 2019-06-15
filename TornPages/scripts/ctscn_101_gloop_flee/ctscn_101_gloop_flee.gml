//cutscene junctures... run in the step event
var i = 0

if juncture=i++
	{
		if !instance_exists(obj_message)
		{
		
		obj_btl_gloop.sprite_index=obj_btl_gloop.sprite[HURT_RIGHT]
			
		var dialogue = script_execute(scr_create_message_specs,HEADSUP,noone,"btl_ctscn_headsup")
			var page=0
			dialogue.text[page++]="The gloop watches in horror as you kill the last of its friends."
		}
	}
if juncture=i++
	{
		script_execute(scr_cutscene_wait,5)
	}
if juncture=i++
	{
		//sfx
		if !audio_is_playing(sfx_flee_ui) {
			scr_play_sfx(sfx_flee_ui)
		}
		
		//run away
		script_execute(scr_cutscene_move,obj_btl_gloop,spr_gloop_hurt,room_width+32,obj_btl_gloop.y,false,10)
		
	}
if juncture=i++
	{
		with obj_btl_gloop {instance_destroy()}
		juncture++
		exit
	}
if juncture=i++
	{
		script_execute(scr_cutscene_wait,20)
	}
if juncture=i++
	{
		//end cutscene
		with obj_btl_ctrl {
			phase=EVALUATION
			alarm[0]=1
		}
		
		cutscene_completed=true
		instance_destroy()
	}