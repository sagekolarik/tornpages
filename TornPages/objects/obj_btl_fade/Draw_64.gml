if room=last_room
{
	image_alpha+=fade_speed 
	if abs(1-image_alpha)<=fade_speed {image_alpha=1}
	if image_alpha=1
		{
			//get ready with some stuff..
			
			//make player not persistent, but make room persistent
			
			obj_player.persistent=false
			room_persistent=true
			
			//make player wait after battle is over
			obj_player.state=scr_player_active_state
			
			room_goto(rm_btl)
			
		}
}

if room=rm_btl
{
	image_alpha-=2*fade_speed
	if abs(1-image_alpha)<=fade_speed {image_alpha=0}
	if image_alpha<=fade_speed
		{
			
			instance_destroy()
		}
}

//draw fade
draw_set_color(fade_color)
draw_set_alpha(image_alpha)
draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false)

//reset
draw_set_alpha(1)

