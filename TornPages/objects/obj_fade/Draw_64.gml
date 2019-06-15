if room=last_room and arrived_in_new_room=false
{
	image_alpha+=fade_speed 
	if abs(1-image_alpha)<=fade_speed {image_alpha=1}
	if image_alpha=1
		{
			room_goto(next_room)
			arrived_in_new_room=true
		}
}

if room=next_room and arrived_in_new_room=true
{
	//fadeout
	var fadeout=fade_speed
	image_alpha-=fadeout
	if !walk_in {
		instance_destroy()
		if instance_exists(obj_player) and !instance_exists(obj_cutscene)
			{obj_player.state=scr_player_active_state}
	}
	else {
		if !currently_walking_in {
			instance_destroy()
			if instance_exists(obj_player) and !instance_exists(obj_cutscene)
				{obj_player.state=scr_player_active_state}
		}
			
	}
}

//draw fade
draw_set_color(fade_color)
draw_set_alpha(image_alpha)
draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false)

//reset
draw_set_alpha(1)




