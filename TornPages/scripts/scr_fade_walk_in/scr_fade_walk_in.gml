//put this somewhere else?
walk_in_distance=20
walk_out_distance=16

if !currently_walking_in and room=next_room {
	currently_walking_in=true
	ogx=obj_player.x
	ogy=obj_player.y

	
	if obj_player.facing=UP {
		obj_player.y+=walk_in_distance
		//partner
		if instance_exists(obj_player.PARTNER) {
			obj_player.PARTNER.y+=abs(walk_in_distance+4)
		}
	}
	
	if obj_player.facing=DOWN {
		obj_player.y-=walk_in_distance
		//partner
		if instance_exists(obj_player.PARTNER) {
			obj_player.PARTNER.y-=abs(walk_in_distance+4)
		}
	}
	
	if obj_player.facing=LEFT {
		obj_player.x+=walk_in_distance
		//partner
		if instance_exists(obj_player.PARTNER) {
			obj_player.PARTNER.x+=abs(walk_in_distance+4)
		}
	}
	
	if obj_player.facing=RIGHT {
		obj_player.x-=walk_in_distance
		//partner
		if instance_exists(obj_player.PARTNER) {
			obj_player.PARTNER.x-=abs(walk_in_distance+4)
		}
	}
	
	exit
}

if currently_walking_in {
	
	if obj_player.facing=UP {
		obj_player.y-=obj_player.spd
			obj_player.sprite_index=obj_player.sprite[WALKING_UP]
		if instance_exists(obj_player.PARTNER) {
			obj_player.PARTNER.y-=obj_player.spd
			obj_player.PARTNER.sprite_index=obj_player.PARTNER.sprite[WALKING_UP]
		}
		if obj_player.y<=ogy-walk_out_distance {
			obj_player.y=ogy-walk_out_distance
			currently_walking_in=false
		}
	}
	
	if obj_player.facing=DOWN {
		obj_player.y+=obj_player.spd
			obj_player.sprite_index=obj_player.sprite[WALKING_DOWN]
		if instance_exists(obj_player.PARTNER) {
			obj_player.PARTNER.y+=obj_player.spd
			obj_player.PARTNER.sprite_index=obj_player.PARTNER.sprite[WALKING_DOWN]
		}
		if obj_player.y>=ogy+walk_out_distance {
			obj_player.y=ogy+walk_out_distance
			currently_walking_in=false
		}
	}
	
	if obj_player.facing=LEFT {
		obj_player.x-=obj_player.spd
			obj_player.sprite_index=obj_player.sprite[WALKING_LEFT]
		if instance_exists(obj_player.PARTNER) {
			obj_player.PARTNER.x-=obj_player.spd
			obj_player.PARTNER.sprite_index=obj_player.PARTNER.sprite[WALKING_LEFT]
		}
		if obj_player.x<=ogx-walk_out_distance {
			obj_player.x=ogx-walk_out_distance
			currently_walking_in=false
		}
	}
	
	if obj_player.facing=RIGHT {
		obj_player.x+=obj_player.spd
			obj_player.sprite_index=obj_player.sprite[WALKING_RIGHT]
		if instance_exists(obj_player.PARTNER) {
			obj_player.PARTNER.x+=obj_player.spd
			obj_player.PARTNER.sprite_index=obj_player.PARTNER.sprite[WALKING_RIGHT]
		}
		if obj_player.x>=ogx+walk_out_distance {
			obj_player.x=ogx+walk_out_distance
			currently_walking_in=false
		}
	}
	
	//if it was walking in but now is not, reset followqueue
	if !currently_walking_in {
		if instance_exists(obj_player.PARTNER) {
			scr_set_player_follower_followqueue(obj_player.PARTNER)
			with obj_player.PARTNER {scr_partner_follower_gets_followqueue_size()}
		}
	}
	
	
}
