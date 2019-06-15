var item = obj_inventory.inventory_order[| parent.index]

var desc = script_execute(scr_get_item_info,item,"desc")

//

var message = script_execute(scr_create_message_specs,HEADSUP,noone,"item_notification")
message.parent=parent.parent.id
message.parent=parent.id
	var page=0
message.text[page++]=desc

instance_destroy()
