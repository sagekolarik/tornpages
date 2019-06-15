//we only need to swap if there are three or more party members (kai, partner, and swappable partner).
if ds_list_size(obj_party_stats.party)>2 {

	child = instance_create_depth(x,y,depth,obj_btl_sub_ui)
	child.parent=id
	child.combatant=obj_btl_ctrl.combatant
	with child
		{
				name="player_battle_ui_swap_type"
	
				var i=1
				var t=0
				repeat(ds_list_size(obj_party_stats.party)-1)
					{
						var list = obj_party_stats.party
					
						//only draws the name if it's not the current combatant or kai
						if list[| i]!=obj_btl_ctrl.PARTNER.stats[? "NAME"]
							{
								//success or nah
								var success=true
								if list[| i]="Gumper" and obj_party_stats.Gumper[? "HP"]=0 {success=false}
								if list[| i]="Edgar" and obj_party_stats.Edgar[? "HP"]=0 {success=false}
								
								//if hp is good
								if success {
									text[t]=list[| i]
										var function_scr="scr_player_btl_ui_Swap_begin"
										ds_map_add(script_map,text[t],function_scr)
								}
									
								//if hp is zero
								if !success {
									text[t]=list[| i]+" (KO'd)"
										var function_scr="scr_cancel_noise"
										ds_map_add(script_map,text[t],function_scr)
								}
								
								t++
							}
						i++
					
					}
		}
	
	}

else
{
	script_execute(scr_na)
}


