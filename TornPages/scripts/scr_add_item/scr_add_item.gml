///@arg item
///@arg amount


with obj_inventory
{
var item = argument0
var amount = argument1

//check if item is already in inventory
if ds_map_exists(inventory,item)
	{
		//find current amount [NOTE: IN THE FUTURE CHECK TO SEE IF IT'S ABOVE THE LIMIT]
		var current_amount=inventory[? item]
		//add current amount
		ds_map_replace(inventory,item,current_amount+amount)
	}
//if not already in inventory, add a new slot
else
	{
		//if there's open inventory space
		if ds_map_size(inventory) < inventory_max_size
			{
				ds_map_add(inventory,item,amount)
				ds_list_add(inventory_order,item)
			}
		//if there's no more space
		else
			{
				//TEMP
				var message = scr_create_message_specs(HEADSUP,0,"inventory_notification")
					message.text[0]="There's no more room."

				instance_destroy()
			}
	}

}	
