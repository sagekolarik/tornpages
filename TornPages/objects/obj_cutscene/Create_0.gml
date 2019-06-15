global.cutscene=true
disabled=false
cutscene_completed=false
never_appear_again=false

skipped=false

message=noone

cutscene_camera=noone

juncture=0
cutscene=ctscn_undefined_cutscene
cutscene_move_instances=ds_list_create()
moment=0

skip_held_time=0
skip_held_time_threshhold=60


//check to see if already played

if ds_map_exists(global.remembered_info,script_execute(scr_save_key))
{
	instance_destroy()
	global.cutscene=false
	//could create another cutscene object here and assign it a script
	//or maybe have a scipt that returns joint cutscenes and assigns them scripts?
	exit
}


if instance_exists(obj_player)
	{
		obj_player.state=scr_player_passive_state
	}
