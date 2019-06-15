///@arg item
///@arg amount

with obj_inventory
{

var item = argument0
var amount = argument1

//if item is not in inventory
if !ds_map_exists(inventory,item)
	{
		exit
	}
//if item is in inventory
else
	{
		//will there still be some left?
		if ds_map_find_value(inventory,item)>amount
			{
				var current_amount=ds_map_find_value(inventory,item)
				//just remove the specified amount
				ds_map_replace(inventory,item,current_amount-amount)
			}
		//will there be none left?
		else
			{
				//remove from inventory map
				ds_map_delete(inventory,item)
				//...and from list
				var pos = ds_list_find_index(inventory,item)
				ds_list_delete(inventory_order,pos)
			}
	}

}
