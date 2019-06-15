script_execute(scr_add_item,item,amount)
		
var message = script_execute(scr_create_message_specs,HEADSUP,noone,"item_pickup_notification")
message.text=text
message.spd=1

instance_destroy()

ds_map_add(global.remembered_info,script_execute(scr_save_key),1)
