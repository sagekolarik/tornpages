var item = obj_inventory.inventory_order[| parent.index]

//find script from item info
var script = scr_get_item_info(item,"world_use_script")

//execute script
script_execute(script)
