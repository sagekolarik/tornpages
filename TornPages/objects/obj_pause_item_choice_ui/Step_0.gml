
//////////////////////////////////////////////////////////////////////////////
/*
	
		CHANGE INDEX
	
*/
///////////////////////////////////////////////////////////////////////////////


//up or down/left or right
if !obj_input.scroll_paused {
	
	//right/left
	var index_move= obj_input.right_button-obj_input.left_button
	
	index_h+=index_move
	
	if index_move!=0 and array_length_1d(text_h)>1
		{
			//sfx
			scr_play_sfx(sfx_click)
		}
		
	//up/down
	var index_move= obj_input.up_button-obj_input.down_button
	
	index_v+=index_move
	
	
	/* DON'T PLAY SOUND FOR UP/DOWN MOVEMENT
	
	if index_move!=0 and array_length_1d(text_v)>1
		{
			//sfx
			scr_play_sfx(sfx_click)
		}
		
	*/
}

//make sure neither index is out of bounds
	//horizontal
if index_h<0 {
		
	index_h=(array_length_1d(text_h)-1)
}
if index_h>(array_length_1d(text_h)-1) {
	index_h=0
}


//////////////////////////////////////////////////////////////////////////////
/*
	
		CURRENT INDEX SELECTION
	
*/
///////////////////////////////////////////////////////////////////////////////

//nothing for now
if obj_input.action_pressed {
	
	var party_member_string=text_h[index_h]
	var script = asset_get_index(item_script)
	script_execute(script,party_member_string) //this index will correspond with the correct index in party
		
		
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


