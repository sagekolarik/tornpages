///scr_cutscene move --- instance, sprite, xx, yy, relative?, spd

/// @desc Moves an instance in a cutscene.

/// @function cutscene_move(instance, sprite, xx, yy, relative?, spd)
/// @arg instance 
/// @arg sprite 
/// @arg x
/// @arg y
/// @arg relative?
/// @arg speed

var inst = argument0
var sprite = argument1
var xx = argument2
var yy = argument3
var relative = argument4
spd = argument5
		

	//if the instance isn't in the ds list, add it
	index = ds_list_find_index(cutscene_move_instances,inst)
	if index=-1 {
		ds_list_add(cutscene_move_instances,inst)
		//ds_list_add(cutscene_move_xcoord,xx)
		//ds_list_add(cutscene_move_ycoord,yy)
		//ds_list_add(cutscene_move_spd,spd)
	}

//move if not moving already
if inst.speed=0 {
	
	//set location
	if relative {
		inst.desired_x=inst.x+xx
		inst.desired_y=inst.y+yy
	}
	if !relative {
		inst.desired_x=xx
		inst.desired_y=yy
	}
	
	//set speed
		inst.direction=point_direction(inst.x,inst.y,inst.desired_x,inst.desired_y)
		inst.speed=spd
		
	//sprites
	inst.og_sprite=inst.sprite_index
	if sprite!=noone and sprite !=CORRECT_SPRITE{
		inst.sprite_index=sprite
	}
	
	if sprite=CORRECT_SPRITE {
		if abs(inst.hspeed)>=abs(inst.vspeed) {
			if inst.hspeed>0 {
				inst.sprite_index=inst.sprite[WALKING_RIGHT]
			}
			else {
				inst.sprite_index=inst.sprite[WALKING_LEFT]
			}
			
		}
		else {
			if inst.vspeed>0 {
				inst.sprite_index=inst.sprite[WALKING_DOWN]
			}
			else {
				inst.sprite_index=inst.sprite[WALKING_UP]
			}
		}
	}
		
		
}




//if close enough, arrive and proceed
if abs(inst.x-inst.desired_x)<spd and abs(inst.y-inst.desired_y)<spd
	{
		//if not already stopped
		if inst.speed!=0 {
			inst.x=inst.desired_x
			inst.y=inst.desired_y
			inst.speed=0
			inst.sprite_index=inst.og_sprite
			ds_list_delete(cutscene_move_instances,index)
		}
		
		//if there are no more instances to move
		if ds_list_size(cutscene_move_instances)=0 {
			event_user(ADVANCE)
		}
	}

