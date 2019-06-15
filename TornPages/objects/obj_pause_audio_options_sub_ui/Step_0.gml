
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
	
		VOLUME
	
*/
///////////////////////////////////////////////////////////////////////////////

if index_move_h!=0 {
	
	//if bgm
	if index_v=0 {
		bgm_volume+=index_move_h
		if bgm_volume<0 {bgm_volume=0}
		if bgm_volume>10 {bgm_volume=10}
		obj_audio.bgm_volume=bgm_volume
	}
	//if bgm
	if index_v=1 {
		sfx_volume+=index_move_h
		if sfx_volume<0 {sfx_volume=0}
		if sfx_volume>10 {sfx_volume=10}
		obj_audio.sfx_volume=sfx_volume
	}
}


//////////////////////////////////////////////////////////////////////////////
/*
	
		CURRENT INDEX SELECTION
	
*/
///////////////////////////////////////////////////////////////////////////////

//nothing for now
if obj_input.action_pressed {
		
		//nothing
		
}

//////////////////////////////////////////////////////////////////////////////
/*
	
		BACK KEY
	
*/
///////////////////////////////////////////////////////////////////////////////

if obj_input.back_pressed
{
	//destroy message (if it exists)
	if instance_exists(obj_passive_message)
	{
		with obj_passive_message
			{instance_destroy()}
	}
	
	//sfx
	scr_play_sfx(sfx_ui_back)
	instance_destroy()
}


