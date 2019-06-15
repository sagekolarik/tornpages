
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
	
	if index_h>1 { //if it's not on kai or his first partner
		
		//swap equipped partner
		var new_partner = obj_party_stats.party[| index_h]
		var old_partner = obj_party_stats.party[| 1]
		ds_list_delete(obj_party_stats.party,index_h)
		ds_list_insert(obj_party_stats.party, 1, new_partner)
		
		//recopy over
		party=obj_party_stats.party
		
		//change order of party members
		var party_member=0
		repeat(ds_list_size(party)) {
		text_h[party_member]=party[| party_member]
		party_member++
		}
		
		//reset stats for local stat tracker to match current party memebr orders
		var slot = 0
		repeat(ds_list_size(party)) {
			ds_map_clear(stats[slot++])
		}
		var slot = 0
		repeat(ds_list_size(party)) {
			stats[slot++]=ds_map_create()
		}
		
		var slot = 0
		ds_map_copy(stats[slot++],obj_party_stats.Player)

		repeat(ds_list_size(party)-1) {
	
			var themember = party[| slot]
	
			switch themember {
	
				case "Edgar": {
			
					ds_map_copy(stats[slot],obj_party_stats.Edgar)
					break
	
				}
				case "Avi": {
			
					ds_map_copy(stats[slot],obj_party_stats.Avi)
					break
	
				}
				case "Mona": {
			
					ds_map_copy(stats[slot],obj_party_stats.Mona)
					break
	
				}
				case "Florance": {
			
					ds_map_copy(stats[slot],obj_party_stats.Florance)
					break
	
				}
				case "Shaide": {
			
					ds_map_copy(stats[slot],obj_party_stats.Edgar)
					break
	
				}
				case "Gumper": {
			
					ds_map_copy(stats[slot],obj_party_stats.Gumper)
					break
	
				}
			}
	
			slot++
	
		}
	
		//set index to 1
		index_h=1
		
		//sfx
		scr_play_sfx(sfx_swap_ui)
		
	}
		
		
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


