if phase=CHOICE or phase=ACTION {
	
	
	if instance_exists(combatant) {
		
		//get string
		var comb_name = string(combatant.stats[? "NAME"])
		var txt = "It's "+string(comb_name)+"'s Turn!"
		
		//nine slice
		guiwidth=display_get_gui_width()
		guiheight=display_get_gui_height()
		display_x1=guiwidth/3
		display_x2=guiwidth-display_x1
		display_y1=guiheight/24
		display_y2=display_y1+guiheight/24
		//script_execute(scr_draw_nine_slice,textbox,display_x1,display_y1,display_x2.display_y2)
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_standard)
		
		var xx=(display_x1+display_x2)/2
		var yy=(display_y1+display_y2)/2

		draw_text(xx,yy,txt)
		
	}
	
}

/* Draw processes (debug only)
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_font(fnt_standard)
var text="PHASE:"
draw_text(display_get_gui_width()/2,display_get_gui_height()/12,text)
if phase=INIT {text="INIT"}
if phase=ORDER {text="ORDER"}
if phase=CHOICE {text="CHOICE"}
if phase=ACTION {text="ACTION"}
if phase=STATUS_FX {text="STATUS_FX"}
if phase=BTLFLD_EVENT {text="BTLFLD_EVENT"}
if phase=EVALUATION {text="EVALUATION"}
if phase=CUTSCENE {text="CUTSCENE"}
if phase=END {text="END"}
draw_text(display_get_gui_width()/2,display_get_gui_height()/12+32,text)
if stat_alt=true
{
	var text="stat_alt"
	draw_text(display_get_gui_width()/2,(display_get_gui_height()/12)+64,text)
}
