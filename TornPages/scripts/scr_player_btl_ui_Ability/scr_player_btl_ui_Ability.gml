//if there's more than 1 attack
child = instance_create_depth(x,y,depth,obj_btl_sub_ui)
child.parent=id
child.combatant=obj_btl_ctrl.combatant
with child
	{
		name="player_battle_ui_Ability_type"
	
		var i=0
		var ability_list_size =ds_list_size(combatant.stats[? "ABILITIES"])
		repeat(ability_list_size)
			{
				var list = combatant.stats[? "ABILITIES"]
				text[i]=list[| i] //should access the attack list in the combatant stats
					var function_scr="scr_player_btl_ui_Ability_target"
					ds_map_add(script_map,text[i],function_scr)
					i++
			}
		if ability_list_size=0
		{
			text[0]="-no abilities known-"
				var function_scr="scr_cancel_noise"
					ds_map_add(script_map,text[i],function_scr)
		}
		
	}
