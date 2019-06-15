if instance_exists(obj_player) and create_playerlight=true {
	if !instance_exists(playerlight) {
		playerlight=instance_create_depth(obj_player.x,obj_player.y,obj_player.depth,obj_light)
		playerlight.following=obj_player
		playerlight.size=playerlight_size
		
		playerlight.my_own_color=true
		playerlight.strength=0.3
		playerlight.color=c_black
	}
}


//CHANGE COLOR (debug)

if keyboard_check(ord("1")) {
	color=$AAA9A9
}
if keyboard_check(ord("2")) {
	color=$9A9A9A
}
if keyboard_check(ord("3")) {
	color=$DAD9D9
}

if keyboard_check_pressed(ord("9")) {
	playerlight.strength+=0.1
}
if keyboard_check_pressed(ord("0")) {
	playerlight.strength-=0.1
}