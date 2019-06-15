with obj_btl_ctrl {
	
action = obj_btl_sub_ui.text[obj_btl_sub_ui.index]

//destroy past failure message (if it exists)
if instance_exists(obj_passive_message)
	{
		with obj_passive_message
			{if name="action_failure_message" {instance_destroy()}}
	}

var success=false
var failure_text="not specified --- do not display anything"

/*/////////////////////////////////////////////////////

	ACTIONS
	
/*/////////////////////////////////////////////////////

if action= "Staff" or action= "Bow" {
	
	//constraints
	var inst = obj_btl_target_ui.target
	
	//special checks if any
	if inst!=noone {
		success=true
	}
	
	//if special, can specify a specialized success here...//if success=true {}

}

if action= "Awaken" {
	
	//constraints
	var inst = obj_btl_target_ui.target
	
	//special checks if any
	if inst!=noone {
		success=true
	}
	
	if success {
		//
		var statchoice = instance_create_depth(x,y,depth,obj_ui_list)
		with statchoice {
			name = "statchoice"
			parent=obj_btl_target_ui
			parent.child=id
			display_y=parent.display_y
			display_x=parent.display_x+parent.str_w+(parent.margin*3)
			var page=0
			text[page++]="Attack"
			text[page++]="Defense"
			text[page++]="Dexterity"
			var page=0
			repeat(3) {
				ds_map_add(script_map,text[page],"scr_btl_kai_statchoice")
				page++
			}
		}
		
		enabled=false
		scr_play_sfx(sfx_select)	
		
		exit
	}
	
}



/*/////////////////////////////////////////////////////

	Items
	
/*/////////////////////////////////////////////////////

if action= "Potion" {
	//constraints
	var inst = obj_btl_target_ui.target
	if inst!=noone {
		//check if it's a combatant
		if object_is_ancestor(inst.object_index,obj_combatant_parent) {
				success=true
		}
		else {
			failure_text="You can't drink potions."
		}
			
	}
	
	//if special, can specify a specialized success here...//if success=true {}
}

if action= "Jungle Fruit" {
	//constraints
	var inst = obj_btl_target_ui.target
	if inst!=noone {
		//check if it's a combatant
		if object_is_ancestor(inst.object_index,obj_combatant_parent) {
			success=true
		}
		else {
			failure_text="Inanimate objects cannot eat."
		}
			
	}
	
	//if special, can specify a specialized success here...//if success=true {}
}

/*/////////////////////////////////////////////////////

	SUCCESS
	
/*/////////////////////////////////////////////////////

if success=true {
	
	scr_btl_ctrl_choicephase_select_success(action)
	exit
	
}


/*/////////////////////////////////////////////////////

	FAILURE
	
/*/////////////////////////////////////////////////////

if success=false {
			
	scr_btl_ctrl_choicephase_select_failure(failure_text)
	exit
	
}

}