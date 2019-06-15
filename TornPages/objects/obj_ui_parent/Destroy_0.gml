//destroy child
if instance_exists(child)
	{
		with child instance_destroy()
	}
//enable the parent
if instance_exists(parent)
	{
		if !instance_exists(obj_message)
		{
		parent.alarm[0]=1
		}
	}
	
//IF I'M THE LAST UI
if instance_number(obj_ui_parent)=1
{
	if obj_pause.paused=true
		{
			with obj_pause {event_user(1)}
		}
	else
		{
			if global.cutscene=false and instance_exists(obj_player)
				{
				obj_player.state=scr_player_active_state
				}
		}
}

//
ds_map_destroy(script_map)

