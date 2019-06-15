//if there's no more instructions, loop

switch npc_idle_behavior[| juncture] {
	
	case WALKING_DOWN: {
		
		//if the start of this juncture
		if x=desired_x and y=desired_y {
			desired_x=x
			desired_y=y+16
		}
		//if the start of this juncture
		if !place_meeting(x,y+spd,obj_solid) and !place_meeting(x,y+spd,obj_player){
			
			y+=spd
							
			//if it's over, end this juncture
			if y>=desired_y {
				
				y=desired_y
				juncture++
			}
		}

		
		break
	}
	
	case WALKING_RIGHT: {
		
		//if the start of this juncture
		if x=desired_x and y=desired_y {
			desired_x=x+16
			desired_y=y
		}
		//if the start of this juncture
		if !place_meeting(x+spd,y,obj_solid) and !place_meeting(x+spd,y,obj_player) {
			
			x+=spd
						
			//if it's over, end this juncture
			if x>=desired_x {
				
				x=desired_x
				juncture++
			}
		}
		
		break
	}
	
	case WALKING_UP: {
		
		//if the start of this juncture
		if x=desired_x and y=desired_y {
			desired_x=x
			desired_y=y-16
		}
		//if the start of this juncture
		if !place_meeting(x,y-spd,obj_solid) and !place_meeting(x,y-spd,obj_player){
			
			y-=spd
							
			//if it's over, end this juncture
			if y<=desired_y {
				
				y=desired_y
				juncture++
			}
		}
		
		break
	}
	
	case WALKING_LEFT: {
		
		//if the start of this juncture
		if x=desired_x and y=desired_y {
			desired_x=x-16
			desired_y=y
		}
		//if the start of this juncture
		if !place_meeting(x-spd,y,obj_solid) and !place_meeting(x-spd,y,obj_player) {
			
			x-=spd
			
			//if it's over, end this juncture
			if x<=desired_x {
				
				x=desired_x
				juncture++
			}
		}
		
		break
	}
	
	case DOWN: {
		
		facing=DOWN
		juncture++
		break
		
	}
	
	case RIGHT: {
		
		facing=RIGHT
		juncture++
		break
		
	}
	case UP: {
		
		facing=UP
		juncture++
		break
		
	}
	case LEFT: {
		
		facing=LEFT
		juncture++
		break
		
	}
	
	case WAIT: {
		
		if moment=wait_time {
			moment=0
			juncture++
		}
		
		moment++
		
		break
	}
	
}

//make sure juncture never gets above where it should be
if juncture=ds_list_size(npc_idle_behavior) {juncture=0}

//set sprite if not default
if juncture<=ds_list_size(npc_idle_behavior_sprite)-1 {
	if npc_idle_behavior_sprite[| juncture]!=noone {
		default_spriting=false
		sprite_index=npc_idle_behavior_sprite[| juncture]
	}
	if npc_idle_behavior_sprite[| juncture]=noone {
		default_spriting=true
	}
}
else {
	default_spriting=true
}