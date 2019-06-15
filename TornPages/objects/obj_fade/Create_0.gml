image_alpha=0
next_room=room
fade_speed=0.1
walk_in=false
currently_walking_in=false
arrived_in_new_room=false

room_set_persistent(room, false)
if instance_exists(obj_player) {with obj_player persistent=true}
