///@arg0 next_room
///@arg1 fade_color
///@arg2 fade_speed

if instance_exists(obj_fade) {
	return noone
}

///room, fade_color, fade_speed, x, y
var next_room = argument0
var fade_color= argument1
var fade_spd = argument2

fade=instance_create_depth(x,y,0,obj_fade)

fade.next_room = next_room
fade.last_room=room
fade.fade_color = fade_color
fade.fade_speed = fade_spd

room_set_persistent(room, false)

return fade

