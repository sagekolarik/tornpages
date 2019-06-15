if instance_exists(obj_fade) {exit}

if engaged and instance_exists(obj_player) {
	
	//facing_direction
	if obj_player.x>x and abs(point_distance(x,y,obj_player.x,obj_player.y))>4 {
		facing_direction=1
	}
	if obj_player.x<x and abs(point_distance(x,y,obj_player.x,obj_player.y))>4 {
		facing_direction=-1
	}
	image_xscale=facing_direction
}

if dissappearing {
	image_index-=dissappearing_spd
}
depth=-y
x_previous=x
y_previous=y

if global.cutscene=true {exit}

//check for engagement
if point_distance(x,y,obj_player.x,obj_player.y)<=engaged_distance and engaged=false {
	engaged=true
	//special case
	if object_index=obj_enemy_fluffer {sprite_index=spr_fluffer_standing}
}
if point_distance(x,y,obj_player.x,obj_player.y)>engaged_distance {
	engaged=false
}

if instance_exists(obj_player) and engaged and !stunned {
	
	if alarm[2]=-1 and pursue {
		alarm[2]=pursue_time
	}
	
	if pursue {
	
		//FOLLOWING WHEN CLOSE ENOUGH
		if point_distance(x,y,obj_player.x,obj_player.y)<=follow_distance and !triggered {
			mp_potential_step_object(obj_player.x,obj_player.y,spd, obj_solid)
		}
	
		//TRIGGER IF CLOSE ENOUGH
		if point_distance(x,y,obj_player.x,obj_player.y)<=trigger_distance and !triggered {
		
			global.btlcd=btlcd
			fade = instance_create_depth(x,y,depth,obj_btl_fade)
			triggered=true
			obj_player.state=scr_player_passive_state
			stunned=true
		
			//sfx
			
		
		}
	
	}

}

//AFTER BATTLE
if triggered and !instance_exists(obj_btl_fade) {
	
	//this means they got back
	sprite_index=sprite[HURT_RIGHT]
	if global.victory {
		event_user(0)
		instance_destroy()
	}
	else {
		triggered=false
		alarm[1]=45
	}
	
	
}

//sprites

if instance_exists(obj_player) {
	
	if abs(obj_player.x-x)>6 {
		
		if x>obj_player.x {facing_direction=-1}
		if x<obj_player.x {facing_direction=1}
		
	}
	
}




//for a special case - this will be done manually
if object_index!=obj_enemy_fluffer {
	
/*///////////////////////////////////////////////////////////////

		//Sprites

/*///////////////////////////////////////////////////////////////

if y!=yprevious { //if it moved in the y direction
	
		//partner went up
		if y<yprevious {
			sprite_index=sprite[WALKING_DOWN]
			facing=UP
		}
		//partner went down
		if y>yprevious {
			sprite_index=sprite[WALKING_DOWN]
			facing=DOWN
		}	
	
	}
if x!=xprevious { //if it moved in the y direction
	
		//partner went up
		if x>xprevious {
			sprite_index=sprite[WALKING_DOWN]
			facing=RIGHT
		}
		//partner went down
		if x<xprevious {
			sprite_index=sprite[WALKING_DOWN]
			facing=LEFT
		}	
	
	}
if x=x_previous and y=y_previous {
	sprite_index=sprite[DOWN]
}


//////////////////////////////////////////////////////////////////

}