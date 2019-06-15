//what each instance does after "death"
instance_destroy()

body = instance_create_depth(x,y,depth,obj_ally_body)
body.sprite_index=sprite_index
body.facing_direction=facing_direction
body.sprite=sprite
body.stats=stats
body.image_index=image_index
body.fixed_x=fixed_x
body.fixed_y=fixed_y


with obj_btl_ctrl {
	
	if instance_exists(obj_passive_message) 
			{instance_destroy(obj_passive_message)}
		var message = instance_create_depth(x,y,depth-1,obj_passive_message)
			message.wait_time=10
			message.name="fallen_ally_notification"
			/*
			message.display_x=message.dialogue_bot_x
			message.display_y=message.dialogue_bot_y
			message.display_h=message.dialogue_bot_h
			message.display_w=message.dialogue_bot_w
			*/
			var page=0
			message.text[page++]="Edgar has passed out!"
	
}