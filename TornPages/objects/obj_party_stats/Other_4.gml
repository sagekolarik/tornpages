//if room isn't battle, init, or gameover, (or title screen), create a player if there's not one
if room!=rm_btl
and room!=rm_gameover
and room!=rm_init 
and room!=rm_title {
	if !instance_exists(obj_player) {
		var plyr = instance_create_depth(room_width/2,room_height/2,depth,obj_player)
		if instance_exists(obj_start_position) {
			plyr.x=obj_start_position.x
			plyr.y=obj_start_position.y
		}
	}
}