if paused=true {
	
	draw_set_alpha(0.3)
	
	if instance_exists(obj_light_ctrl) {
		draw_set_alpha(0.8)
	}
	
	draw_set_color(c_black)
	
	var xpos = view_xport[0]
	var ypos = view_yport[0]
	draw_rectangle(xpos,ypos,display_get_gui_width(),display_get_gui_height(),false)


	//reset
	draw_set_alpha(1)
	
	
	//simple
	if simple_menu {
		//get string
		var txt = "Game Paused"
		
		//nine slice
		guiwidth=display_get_gui_width()
		guiheight=display_get_gui_height()
		display_x1=guiwidth/3
		display_x2=guiwidth-display_x1
		display_y1=guiheight/2-guiheight/12
		display_y2=display_y1+guiheight/6
		scr_draw_nine_slice(textbox,display_x1,display_y1,display_x2,display_y2)
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_standard)
		
		var xx=(display_x1+display_x2)/2
		var yy=(display_y1+display_y2)/2

		draw_text(xx,yy,txt)
	}
}

