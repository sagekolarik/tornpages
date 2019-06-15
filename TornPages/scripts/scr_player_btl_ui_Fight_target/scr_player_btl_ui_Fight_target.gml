child = instance_create_depth(x,y,depth,obj_btl_target_ui)
child.parent=id
child.combatant=obj_btl_ctrl.combatant

with child {
			
		//make a list of all combatants
		name="player_btl_ui_target"
	
		//var size = ds_list_size(possible_targets)
		var i=0
		repeat(ds_list_size(possible_targets)) {
					
				var list = possible_targets
				text[i]=list[| i]
				var function_scr="scr_player_btl_ui_target_selected"
				ds_map_add(script_map,text[i],function_scr)
				i++
		}
}
