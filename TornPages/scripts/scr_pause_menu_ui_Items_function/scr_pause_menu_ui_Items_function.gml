child = instance_create_depth(200,200,depth-1,obj_ui_list)
child.name="pause_menu_ui_items_function"
child.parent=id
child.depth=depth-1
with child
{
	display_x=display_get_gui_width()/2
	display_y=display_get_gui_height()/3
			
	var i=0
			
	//assign each option a name and function
	text[i]="Use"
			var item = obj_inventory.inventory_order[| parent.index]
			var function_scr="scr_pause_menu_ui_Items_function_use"
			ds_map_add(script_map,text[i],function_scr)
			i++
	text[i]="Info"
			var function_scr="scr_pause_menu_ui_Items_function_info"
			ds_map_add(script_map,text[i],function_scr)
			i++
	text[i]="Drop"
			var function_scr="scr_pause_menu_ui_Items_function_drop"
			ds_map_add(script_map,text[i],function_scr)
			i++
	
}
