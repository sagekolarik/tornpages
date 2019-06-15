depth=-y
x_previous = x
y_previous = y

if global.cutscene {exit}


if !instance_exists(obj_message) {
	
	if interacting=true {
		
		if return_to_ogsprite=true and global.cutscene=false {
			sprite_index=og_sprite
			facing=og_facing
			
		}
		
		interacting=false
	}
	
	
	
}

//IDLE BEHAVIOR
if interacting=false {
	if ds_list_size(npc_idle_behavior)>0 {
		script_execute(scr_npc_idle_behavior)
	}
}


//SPRITE
if default_spriting {
	if !place_meeting(x,y,obj_climbable) {

		if y!=y_previous { //if it moved in the y direction
	
			//partner went up
			if y<y_previous {
				sprite_index=sprite[WALKING_UP]
				facing=UP
			}
			//partner went down
			if y>y_previous {
				sprite_index=sprite[WALKING_DOWN]
				facing=DOWN
			}	
	
		}
		if x!=x_previous { //if it moved in the y direction
	
			//partner went up
			if x>x_previous {
				sprite_index=sprite[WALKING_RIGHT]
				facing=RIGHT
			}
			//partner went down
			if x<x_previous {
				sprite_index=sprite[WALKING_LEFT]
				facing=LEFT
			}	
	
		}
	}
	else {
		sprite_index=sprite[CLIMBING]
	}

	if x=x_previous and y=y_previous and !place_meeting(x,y,obj_climbable) {
		sprite_index=sprite[facing]
	}

}