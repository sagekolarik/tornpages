child = instance_create_depth(x,y,depth-1,obj_btl_sub_ui)
child.name="pause_menu_ui_items"
child.parent=id
child.combatant=obj_btl_ctrl.combatant
with child
{
	
	if ds_list_size(obj_inventory.inventory_order)<1
				{
				text[0]="-empty-"
				var function_scr="scr_cancel_noise"
				ds_map_add(script_map,text[0],function_scr)	
				}
			
	var item_num=0
	var slot=0
	
	//assign each option a name and function
	var inv_list = obj_inventory.inventory_order
		//var inv_map = obj_inventory.inventory
	repeat(ds_list_size(obj_inventory.inventory_order))
		{
			var item = inv_list[| item_num] 
			
			if scr_get_item_info(item,"battle_use") {
				//now set it
				text[slot]=item
					var function_scr="scr_player_btl_ui_Item_function"
					ds_map_add(script_map,text[slot],function_scr)
					
				slot++
			}
				
				
			item_num++
		}
		
	
}