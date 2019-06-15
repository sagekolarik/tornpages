/// @desc load game
if file_exists("torn_pages.sav") {
	
	var wrapper = scr_load_json_from_file("torn_pages.sav")
	torn_pages_save_data = wrapper[? "torn_pages_save_data"]
	
	
	
	/////////////////////////////
	
	var i = 0
	
	//REMEMBERED INFO (map) - 0
	var curr_remembered_info = torn_pages_save_data[| i++]
	ds_map_clear(global.remembered_info)
	ds_map_copy(global.remembered_info,curr_remembered_info)
	

	//INVENTORY (map, list) - 1,2
	var curr_inventory = torn_pages_save_data[| i++]
	var curr_inventory_order = torn_pages_save_data[| i++]
	ds_map_clear(obj_inventory.inventory)
	ds_list_clear(obj_inventory.inventory_order)
	ds_map_copy(obj_inventory.inventory,curr_inventory)
	ds_list_copy(obj_inventory.inventory_order,curr_inventory_order)
	

	//PLAYER STATS (map) - 3
	var curr_playerstats = torn_pages_save_data[| i++]
	ds_map_clear(obj_party_stats.Player)
	ds_map_copy(obj_party_stats.Player,curr_playerstats)
			//probably need to change this so that the partners stast change based off newfound player stats
	

	//PLOT VARIABLES (list) - 4
	var curr_plotvar = torn_pages_save_data[| i++]
	ds_list_clear(key_plot_variables)
	ds_list_copy(key_plot_variables,curr_plotvar)
	

	//ROOM (val) - 5
	var rm = torn_pages_save_data[| i++]
	room_goto(rm)
	

	//WOLRD (val) - 6
	global.world = torn_pages_save_data[| i++]
	

	//PLAYER X, Y, and FACING (val) - 7, 8, 9
	var xx = torn_pages_save_data[| i++]
	var yy = torn_pages_save_data[| i++]
	var facing = torn_pages_save_data[| i++]
	
	if xx!=noone and yy!=noone {
		
		if !instance_exists(obj_player) {
			instance_create_depth(xx,yy,depth,obj_player)
		}
		
		obj_player.x=xx
		obj_player.y=yy
		obj_player.facing=facing 
		obj_player.start_at_door=false
	}
	
	
}

//destroy everything

ds_map_destroy(wrapper)