triggered=false
disabled=false
cutscene=noone
song=noone
destroy_after_trigger=false
fadeoutamount=0.04

if ds_map_exists(global.remembered_info,script_execute(scr_save_key))
{
	instance_destroy()
}
