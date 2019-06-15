if instance_exists(obj_player)
{
	obj_player.state=scr_player_active_state
}

if instance_exists(parent)
{
	if instance_exists(obj_cutscene) and !object_is_ancestor(id, obj_choice_message)
		{
			with obj_cutscene {event_user(ADVANCE)}
		}
	//works for ui parents and cutscene parents
	else 
		{
			parent.alarm[0]=1
		}
}

with obj_ui_advance_cursor {instance_destroy()}
