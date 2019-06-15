child = instance_create_depth(200,200,depth-1,obj_ui_list)
child.name="pause_menu_ui_options"
child.depth=depth-1
child.parent=id
with child
{
	
	display_x=display_get_gui_width()/4
	display_y=display_get_gui_height()/4
	
	var i=0
	
	text[i]="Display"
	var function_scr="scr_pause_menu_ui_Options_Display"
	ds_map_add(script_map,text[i],function_scr)
		i++
		
	text[i]="Audio"
	var function_scr="scr_pause_menu_ui_Options_Audio"
	ds_map_add(script_map,text[i],function_scr)
		i++
		
	
}
