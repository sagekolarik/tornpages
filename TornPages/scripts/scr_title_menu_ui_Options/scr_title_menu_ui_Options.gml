//OPTIONS


child = instance_create_depth(200,200,depth-1,obj_ui_list)
child.name="pause_menu_ui_options"
child.depth=depth-1
child.parent=id
with child
{
	
	var i=0
	
	text[i]="Display"
	var function_scr="scr_pause_menu_ui_Options_Display"
	ds_map_add(script_map,text[i],function_scr)
		i++
		
	text[i]="Audio"
	var function_scr="scr_pause_menu_ui_Options_Audio"
	ds_map_add(script_map,text[i],function_scr)
		i++
		
		
	//find widest string
		var arr_len = array_length_1d(text)
		var str_w=string_width(text[0]) //the first 10 is just a placeholder to make sure it's long enough
		var i = 0
		repeat(arr_len)
		{
			if string_width(text[i])>=str_w
				{str_w=string_width(text[i])}
			i++
		}
		
	guiwidth=display_get_gui_width()
	guiheight=display_get_gui_height()
	display_x=guiwidth/2 - str_w*2/3
	display_y=guiheight*3/5
		
	
}

//sfx
	scr_play_sfx(sfx_ui_forward)