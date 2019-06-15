child = instance_create_depth(200,200,depth-1,obj_ui_list)
child.name="pause_menu_ui_items"
child.depth=depth-1
child.parent=id
with child
{
	display_x=display_get_gui_width()/4
	display_y=display_get_gui_height()/4
	
	if ds_list_size(obj_inventory.inventory_order)<1
				{
				text[0]="-empty-"
				var function_scr="scr_cancel_noise"
				ds_map_add(script_map,text[0],function_scr)	
				}
			
	var i=0
	
	//assign each option a name and function
	var inv_list = obj_inventory.inventory_order
	var inv_map = obj_inventory.inventory
	repeat(ds_list_size(obj_inventory.inventory_order))
		{
			var item = inv_list[| i] 
			var item_num = inv_map[? item]
			if item_num<=1
				{
					var option_text = string(item)
				}
			if item_num>1
				{
					var option_text=string(item)+" {x"+string(item_num)+"}"
				}
			
			//now set it
			text[i]=option_text	
				var function_scr="scr_pause_menu_ui_Items_function"
				ds_map_add(script_map,text[i],function_scr)
				i++
		}
		
	
}
