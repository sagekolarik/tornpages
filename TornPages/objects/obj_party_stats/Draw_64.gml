if global.debug {
	
	var xx = display_get_gui_width()/20
	var yy = display_get_gui_height()*7/8
	
	var txt = "Debug Mode"
	draw_text(xx,yy,txt)
	
	draw_set_font(fnt_debug)
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	
	if instance_exists(obj_player) {
		txt = "obj_player.x= "+string(obj_player.x)
		draw_text(xx, yy + string_height(txt),txt)
		txt = "obj_player.y= "+string(obj_player.y)
		draw_text(xx, yy + 2*string_height(txt),txt)
	}
}