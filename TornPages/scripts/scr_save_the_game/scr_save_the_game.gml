torn_pages_save_data = ds_list_create()

//REMEMBERED INFO (map) - 0
var curr_remembered_info = ds_map_create()
ds_map_copy(curr_remembered_info,global.remembered_info)
ds_list_add(torn_pages_save_data,curr_remembered_info)
ds_list_mark_as_map(torn_pages_save_data,ds_list_size(torn_pages_save_data)-1)

//INVENTORY (map,list) - 1
var curr_inventory_order = ds_list_create()
var curr_inventory = ds_map_create()

ds_map_copy(curr_inventory,obj_inventory.inventory)
ds_list_copy(curr_inventory_order,obj_inventory.inventory_order)

ds_list_add(torn_pages_save_data,curr_inventory)
ds_list_mark_as_map(torn_pages_save_data,ds_list_size(torn_pages_save_data)-1)
ds_list_add(torn_pages_save_data,curr_inventory_order)
ds_list_mark_as_list(torn_pages_save_data,ds_list_size(torn_pages_save_data)-1)

//PLAYER STATS (map) - 2
var curr_playerstats = ds_map_create()
ds_map_copy(curr_playerstats,obj_party_stats.Player)
ds_list_add(torn_pages_save_data,curr_playerstats)
ds_list_mark_as_map(torn_pages_save_data,ds_list_size(torn_pages_save_data)-1)

//PLOT VARIABLES (list) - 3
var curr_plotvar = ds_list_create()
ds_list_copy(curr_plotvar,key_plot_variables)
ds_list_add(torn_pages_save_data,curr_plotvar)
ds_list_mark_as_list(torn_pages_save_data,ds_list_size(torn_pages_save_data)-1)

//ROOM (val) - 4
var rm = room
ds_list_add(torn_pages_save_data,rm)

//WOLRD (val) - 5
var wrld = global.world
ds_list_add(torn_pages_save_data,wrld)

//PLAYER X, Y, and FACING (val) - 6, 7, 8
if instance_exists(obj_player) {
	var xx = obj_player.x
	var yy = obj_player.y
	var facing=obj_player.facing	
}
else {
	var xx = noone
	var yy = noone
	var facing = DOWN
}

ds_list_add(torn_pages_save_data,xx)
ds_list_add(torn_pages_save_data,yy)
ds_list_add(torn_pages_save_data,facing)


///////////////////////////////////////////
//Wrap the root list in a map

var wrapper = ds_map_create()
ds_map_add_list(wrapper,"torn_pages_save_data",torn_pages_save_data)

///////////////////////////////////////////
//Save all of this to a string

var data_string = json_encode(wrapper)
scr_save_string_to_file("torn_pages.sav",data_string)

///////////////////////////////////////////
//Destroy the data

ds_map_destroy(wrapper)