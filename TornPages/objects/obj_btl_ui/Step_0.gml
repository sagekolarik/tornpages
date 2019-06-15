if enabled=false {
	//so it doesn't freeze at the wrong subimage
	if text[index]="Fight" {
		subimage=fight_subimage_total
	}
	if text[index]="Ability" {
		subimage=ability_subimage_total
	}
	if text[index]="Item" {
		subimage=item_subimage_total
	}
	if text[index]="Flee" {
		subimage=flee_subimage_total
	}
	if text[index]="Swap" {
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
if !obj_input.scroll_paused {
	
	var index_move= obj_input.right_button-obj_input.left_button
		index_move+= obj_input.down_button-obj_input.up_button
	
	index+=index_move
	
	if index_move!=0
		{
			subimage=0
			
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
	
//subimage
if text[index]="Fight" and subimage<fight_subimage_total
	{
		subimage++
	}
if text[index]="Ability" and subimage<ability_subimage_total
	{
		subimage++
	}
if text[index]="Item" and subimage<item_subimage_total
	{
		subimage++
	}
if text[index]="Flee" and subimage<flee_subimage_total
	{
		subimage++
	}
if text[index]="Swap" and subimage<swap_subimage_total
	{
		subimage++
	}

//////////////////////////////////////////////////////////////////////////////
/*
	
		CURRENT INDEX SELECTION
	
*/
///////////////////////////////////////////////////////////////////////////////

if obj_input.action_pressed {
	
	viable=false
	if text[index]="Fight"
		{if fight_viable {viable=true}}
	if text[index]="Ability"
		{if ability_viable {viable=true}}
	if text[index]="Item"
		{if item_viable {viable=true}}
	if text[index]="Flee"
		{if flee_viable {viable=true}}
	if text[index]="Swap"
		{if swap_viable {viable=true}}
	
	if viable {
		
		enabled=false
		//activate the script from the map
		var script = asset_get_index(script_map[? text[index]])
		script_execute(script)
	
		if instance_exists(child)
		{
			child.fight_subimage_total = fight_subimage_total
			child.ability_subimage_total = ability_subimage_total
			child.item_subimage_total = item_subimage_total
			child.flee_subimage_total = flee_subimage_total
			child.swap_subimage_total = swap_subimage_total
		}
		subimage = 0
	
		//sfx
		scr_play_sfx(sfx_ui_forward)
	}
	else {
		enabled=false
		message = scr_create_message_specs(HEADSUP,0,"non_viable_action_notification")
		message.parent=id
		message.text[0]=action_viable_failure_message
		
	}
}

//////////////////////////////////////////////////////////////////////////////
/*
	
		BACK KEY
	
*/
///////////////////////////////////////////////////////////////////////////////


if obj_input.back_pressed
{
					///
			var choice = instance_create_depth(x,y,depth,obj_choice_message)
				choice.display_y=display_get_gui_height()/2-choice.display_h/2	
				choice.name="skip_phase_choice"
				choice.spd=1
				choice.text[0]="Do nothing?"
				choice.choice[0]="Sure."
				choice.choice[1]="Don't rush me."
			
			enabled=false
			
			exit
}

//////////////////////////////////////////////////////////////////////////////
/*
	
		SFX
	
*/
///////////////////////////////////////////////////////////////////////////////

if text[index]="Fight" and subimage=4
	{
		scr_play_sfx(sfx_fight_ui)
	}

if text[index]="Ability" and subimage=4
	{
		scr_play_sfx(sfx_ability_ui)
	}

if text[index]="Item" and subimage=1
	{
		scr_play_sfx(sfx_item_ui)
	}

if text[index]="Flee" and subimage=1
	{
		scr_play_sfx(sfx_flee_ui)
	}

if text[index]="Swap" and subimage=1
	{
		scr_play_sfx(sfx_swap_ui)
	}
