child = instance_create_depth(x,y,depth,obj_btl_sub_ui)
child.parent=id
child.combatant=obj_btl_ctrl.combatant
with child
	{
			name="player_battle_ui_fight_type"
	
			var i=0
			repeat(ds_list_size(combatant.stats[? "ATTACKS"]))
				{
					var list = combatant.stats[? "ATTACKS"]
					text[i]=list[| i] //should access the attack list in the combatant stats
						var function_scr="scr_player_btl_ui_Fight_target"
						ds_map_add(script_map,text[i],function_scr)
						i++
				}
	}
