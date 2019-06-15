triggered=false
disabled=false


variable=noone
binary=true

destroy_after_trigger=false
fadeoutamount=0.01

if ds_map_exists(global.remembered_info,script_execute(scr_save_key))
{
	instance_destroy()
}
