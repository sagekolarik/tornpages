//set by 

guiwidth = display_get_gui_width()
guiheight = display_get_gui_height()
margin=floor(guiwidth/12)

display_x1 = margin
display_y1 = margin
display_x2 = guiwidth-margin


//////////////////////////////////////////////////////////////////////////////
/*
	
		CHANGE INDEX
	
*/
///////////////////////////////////////////////////////////////////////////////


//up or down/left or right
var index_move_h=0
var index_move_v=0
if !obj_input.scroll_paused {
	
	//right/left
	index_move_h= obj_input.right_button-obj_input.left_button
	//sfx
	if index_move_h!=0
		{
			scr_play_sfx(sfx_click)
		}
		
	//up/down
	var index_move_v= obj_input.up_button-obj_input.down_button
	
	index_v+=index_move_v
	
	//sfx
	if index_move_v!=0 and array_length_1d(text_v)>1
		{
			scr_play_sfx(sfx_click)
		}

}

//make sure neither index is out of bounds
	//horizontal
if index_v<0 {
		
	index_v=(array_length_1d(text_v)-1)
}
if index_v>(array_length_1d(text_v)-1) {
	index_v=0
}

//////////////////////////////////////////////////////////////////////////////
/*
	
		CHANGE DISPLAYS
	
*/
///////////////////////////////////////////////////////////////////////////////

if index_move_h!=0 {
	
	//if bgm
	display+=index_move_h
	if display<0 {display=FULLSCREEN}
	if display>FULLSCREEN {display=0}
	
}


//////////////////////////////////////////////////////////////////////////////
/*
	
		CURRENT INDEX SELECTION
	
*/
///////////////////////////////////////////////////////////////////////////////

//nothing for now
if obj_input.action_pressed {
	
	scr_play_sfx(sfx_ui_forward)
		
}

//////////////////////////////////////////////////////////////////////////////
/*
	
		BACK KEY
	
*/
///////////////////////////////////////////////////////////////////////////////

if obj_input.back_pressed
{	
	//sfx
	scr_play_sfx(sfx_ui_back)
}




//BOTH
if obj_input.back_pressed or obj_input.action_pressed {
	
	obj_view.display=display
	
	//change display using view object
	if room=rm_title {
		
		obj_view.alarm[1]=1
		
		instance_destroy()
		
	}
	with parent {
		instance_destroy()
	}
}


