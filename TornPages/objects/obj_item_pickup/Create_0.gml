// Inherit the parent event
event_inherited();

item=noone
text[0]="undefined"
amount=1

if ds_map_exists(global.remembered_info,script_execute(scr_save_key))
{
	instance_destroy()
}
