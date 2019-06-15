triggered=false
disabled=false
cutscene=noone

if ds_map_exists(global.remembered_info,script_execute(scr_save_key))
{
	instance_destroy()
}
