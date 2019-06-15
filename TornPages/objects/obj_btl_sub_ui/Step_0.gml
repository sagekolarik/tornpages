if enabled=false
{
	//so it doesn't freeze at the wrong subimage
	if text[index]="Fight" 
		{
			subimage=fight_subimage_total
		}
	if text[index]="Ability"
		{
			subimage=ability_subimage_total
		}
	if text[index]="Item"
		{
			subimage=item_subimage_total
		}
	if text[index]="Flee"
		{
			subimage=flee_subimage_total
		}
	if text[index]="Swap"
		{
			subimage=swap_subimage_total
		}
	exit
}

//////////////////////////////////////////////////////////////////////////////
/*
	
		CHANGE INDEX
	
*/
///////////////////////////////////////////////////////////////////////////////


//up or down/left or right
if !obj_input.scroll_paused
{
	var index_move= obj_input.right_button-obj_input.left_button
		index_move+= obj_input.down_button-obj_input.up_button
	
	index+=index_move
	
	if index_move!=0 and array_length_1d(text)>1
		{
			//sfx
			scr_play_sfx(sfx_click)
		}
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
	//destroy past failure message (if it exists)
	if instance_exists(obj_passive_message)
	{
		with obj_passive_message
			{if name="action_failure_message" {instance_destroy()}}
	}
	
	
	//check if there's enough magic
	var mpcost = script_execute(scr_get_action_info,text[index],"mpcost")
	if mpcost<=combatant.stats[? "MP"]
		{
			//enough mp
	
			enabled=false
	
			//activate the script from the map
			var script = asset_get_index(script_map[? text[index]])
			script_execute(script)
	
			//sfx
			scr_play_sfx(sfx_ui_forward)
		}
	else
		{
			//not enough
			var message = instance_create_depth(x,y,depth,obj_passive_message)
				message.font=fnt_standard
				draw_set_font(message.font)
				message.name="action_failure_message"
				message.size=1
				message.text[0]="Not Enough Magic"
				message.margin = string_height(message.text[0])
				message.display_x = display_get_gui_width()/2 - string_width(message.text[0])/2 - message.margin
				message.display_w = string_width(message.text[0]) + 2*message.margin
				message.display_y = display_get_gui_height()/3 - string_height(message.text[0])/2 - message.margin
				message.display_h = string_height(message.text[0])+2*message.margin
				message.fnt_halign=fa_center
				message.fnt_valign=fa_middle
				
			enabled=true
	
			//sfx
			scr_play_sfx(sfx_deselect)
			
			exit
		}
}

//////////////////////////////////////////////////////////////////////////////
/*
	
		BACK KEY
	
*/
///////////////////////////////////////////////////////////////////////////////

if obj_input.back_pressed
{
	//destroy past failure message (if it exists)
	if instance_exists(obj_passive_message)
	{
		with obj_passive_message
			{if name="action_failure_message" {instance_destroy()}}
	}
	
	//sfx
	scr_play_sfx(sfx_ui_back)
	instance_destroy()
}


