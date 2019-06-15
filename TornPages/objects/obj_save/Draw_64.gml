if plotvar_notification {
	
	var xx = display_get_gui_width()*19/20
	var yy = display_get_gui_height()*7/8
	draw_set_font(fnt_debug)
	draw_set_halign(fa_right)
	draw_set_color(c_black)
	var txt = "Plot Variable Advanced"
		if check_plotvar(plotvar.completed_all_plotvars)=true {
			txt = "Completed All Plotvars"
		}
	draw_text(xx,yy+2*string_height(txt),txt)
}