// Inherit the parent event
event_inherited();

/*/////////////////////////////////////////////////////////////////
	Choice Text
/*/////////////////////////////////////////////////////////////////

if choice_displayed=true
{

	///set font
	draw_set_font(font)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)

	var starty=display_y + display_h-margin - string_height(choice[0])*array_length_1d(choice)
	var i=0
	repeat(array_length_1d(choice))
	{
		var txt=choice[i]
		//draw the text
		draw_text_ext_color(display_x + display_w/2,starty + i*string_height(txt),txt,-1,display_w,c_black,c_black,c_black,c_black,1)
	
		//draw cursor if it's currently selected
		if i=choice_index
		{
			var xx = display_x + display_w/2 - sprite_get_width(crsr_sprite) - string_width(choice[i])/2
			var yy = starty + i*string_height(txt) + string_height(txt)/2
			draw_sprite_ext(crsr_sprite,0,xx,yy,1,1,90,c_white,1)
		}
		
		i++
	}

}
