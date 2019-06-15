depth=-y

x_previous=x
y_previous=y
x_mvmt = 0
y_mvmt = 0

//execute the state script if there's no cutscene
if global.cutscene=false
{
	script_execute(state)

	//sprites
	
	//not climbing
	if !place_meeting(x,y,obj_climbable) {
	if moved=false
		{
			if facing=RIGHT {sprite_index = sprite[RIGHT]}
			if facing=UP {sprite_index = sprite[UP]}
			if facing=LEFT {sprite_index = sprite[LEFT]}
			if facing=DOWN {sprite_index = sprite[DOWN]}
		}
	if moved=true
		{
			if facing=RIGHT {sprite_index = sprite[WALKING_RIGHT]}
			if facing=UP {sprite_index = sprite[WALKING_UP]}
			if facing=LEFT {sprite_index = sprite[WALKING_LEFT]}
			if facing=DOWN {sprite_index = sprite[WALKING_DOWN]}
		}
	}
	else {
		sprite_index = sprite[CLIMBING]
		//logic for standing still?
	}


	if moved and !instance_exists(obj_btl_fade) {
	
		ds_queue_enqueue(follow_queue_x,x)
		ds_queue_enqueue(follow_queue_y,y)
	}

}

//swap partners

if obj_input.secondary_pressed and instance_exists(PARTNER) {
	
	var last_slot = ds_list_size(obj_party_stats.party)-1
	var new_partner = obj_party_stats.party[| last_slot]
	var old_partner = obj_party_stats.party[| 1]

	ds_list_delete(obj_party_stats.party,last_slot)

	ds_list_insert(obj_party_stats.party, 1, new_partner)

	with PARTNER {
		scr_partner_follower_gets_followqueue_size()
	}
}
