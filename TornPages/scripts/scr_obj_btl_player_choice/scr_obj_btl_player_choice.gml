var allclear = script_execute(scr_combatant_prechoice_check)
if allclear=false {exit}

with obj_passive_message
	{if name="battle_turn_declaration" {instance_destroy()}}

//create ui through btl ctrl
with obj_btl_ctrl {
	
	child = instance_create_depth(x,y,depth,obj_btl_ui)
	child.parent=id
	child.combatant=obj_btl_ctrl.combatant
	
	child.action_viable_failure_message=action_viable_failure_message
	
	show_abilities=true
	show_attacks=true
	show_items=true
	show_flee=true
	show_swap=false
	
	//attacks
	if ds_list_size(combatant.stats[? "ATTACKS"])=0 {
		show_attacks=false
	}
	
	//abilities
	if ds_list_size(combatant.stats[? "ABILITIES"])=0 {
		show_abilities=false
	}
	
	//items - only show when there's items in the inventory that are usable in battle
	if ds_map_size(obj_inventory.inventory)=0 {
		show_items=false
	}
	else {
		var i=0
		repeat(ds_list_size(obj_inventory.inventory_order)) {
			show_items=false
			var item = obj_inventory.inventory_order[| i]
			if scr_get_item_info(item,"battle_use") {
				show_items=true
			}
		}
	}
	
	//swap
	if other.id = PARTNER {
		show_flee=false
		if ds_list_size(obj_party_stats.party)>=3 {
			show_swap=true
		}
		else {
			show_swap=false
		}
	}
	
	//flee
	if other.id = PLAYER {
		show_swap=false
		show_flee=true
	}
	
	with child {
		
			name="player_btl_ui"
			display_x=100
			display_y=display_get_gui_height()-200
			
			var i=0
			
			//assign each option a name and function
			
			if other.show_attacks {
				text[i]="Fight"
					var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
					ds_map_add(script_map,text[i],function_scr)
					i++
			}
			if other.show_abilities {
			//ability
				text[i]="Ability"
					var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
					ds_map_add(script_map,text[i],function_scr)
					i++
			}
			
			if other.show_items {	
			//item
				text[i]="Item"
					var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
					ds_map_add(script_map,text[i],function_scr)
					i++
			}
			
			//flee
			if other.show_flee {	
				text[i]="Flee"
					var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
					ds_map_add(script_map,text[i],function_scr)
					i++
			}
			if other.show_swap {
				text[i]="Swap"
					var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
					ds_map_add(script_map,text[i],function_scr)
					i++
			}
			
			var i=0
			repeat(array_length_1d(text)) {
				action_viable[i++]=true
			}
			
	}
}
