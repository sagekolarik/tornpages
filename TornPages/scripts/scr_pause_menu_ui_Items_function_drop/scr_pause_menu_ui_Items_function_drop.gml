var item = obj_inventory.inventory_order[| parent.index]

var droppable = script_execute(scr_get_item_info,item,"droppable")


if droppable {
	script_execute(scr_remove_item,item,1)

	//

	var message = script_execute(scr_create_message_specs,HEADSUP,noone,"item_notification")
	message.parent=parent.parent.id
		var page=0
	message.text[page++]="You dropped 1 "+item+"."
	
	}
	
if !droppable {

	var message = script_execute(scr_create_message_specs,HEADSUP,noone,"item_notification")
	message.parent=parent.parent.id
		var page=0
	message.text[page++]="You can't drop that."
	
	}


with parent {instance_destroy()}
