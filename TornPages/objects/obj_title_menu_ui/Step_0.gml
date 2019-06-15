if enabled=false {exit}

margin=display_get_gui_width()/16
guiwidth=display_get_gui_width()
guiheight=display_get_gui_height()
display_y=guiheight*3/5
display_x=guiwidth/2

//////////////////////////////////////////////////////////////////////////////
/*
	
		CHANGE INDEX
	
*/
///////////////////////////////////////////////////////////////////////////////


//up or down/left or right
if !obj_input.scroll_paused
{
	var index_move= obj_input.right_button-obj_input.left_button
	var index_move= obj_input.down_button-obj_input.up_button
	if index_move!=0
		{scr_play_sfx(sfx_click)}
	index+=index_move
}

//make sure it's not out of bounds
if index<0
	{
		index=(array_length_1d(text)-1)
	}
else
	{
		if index>(array_length_1d(text)-1)
			{index=0}
	}

//////////////////////////////////////////////////////////////////////////////
/*
	
		CURRENT INDEX SELECTION
	
*/
///////////////////////////////////////////////////////////////////////////////

if obj_input.action_pressed
{
	enabled=false
	//activate the script from the map
	var script = asset_get_index(script_map[? text[index]])
	script_execute(script)
	
}


