if room=last_room
{
	image_alpha+=fade_speed 
	if abs(1-image_alpha)<=fade_speed {image_alpha=1}
	if image_alpha=1
		{
			room_goto(rm_gameover)
			
		}
}

if room=rm_gameover
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