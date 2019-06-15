if ds_list_size(obj_party_stats.party)<=1 {
	exit
}

///scr_player_create_partner

if facing=UP {
		var xx=x
		var yy=y+partner_starting_distance
}

if facing=DOWN {
		var xx=x
		var yy=y-partner_starting_distance
}

if facing=RIGHT {
		var xx=x-partner_starting_distance
		var yy=y
}

if facing=LEFT {
		var xx=x+partner_starting_distance
		var yy=y
}
	


PARTNER=instance_create_depth(xx,yy,depth,obj_partner_parent)
PARTNER.follow_queue_size=partner_follow_queue_size

scr_set_player_follower_followqueue(PARTNER)
