///@arg item
///@arg amount

var item = argument0
var check_amount = argument1

if ds_map_exists(obj_inventory.inventory,item) {
		
		//find current amount [NOTE: IN THE FUTURE CHECK TO SEE IF IT'S ABOVE THE LIMIT]
		var current_amount=obj_inventory.inventory[? item]
		
		if current_amount >= check_amount {
			return true
		}
		
}

return false