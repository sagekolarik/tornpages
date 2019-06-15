event_inherited()

/*///////////////////////////////////////////////////////////////

		//Sprites

/*///////////////////////////////////////////////////////////////

//special case

if engaged {
	
	if !pursue and sprite_index!=spr_fluffer_idle {
		
		sprite_index=spr_fluffer_standing
		
		if image_index>=sprite_get_number(spr_fluffer_standing)-1 {
			pursue=true
			sprite_index=spr_fluffer_idle
		}
	}
		
	
	if pursue {
		
	
		if y!=y_previous { //if it moved in the y direction
	
			//partner went up
			if y<y_previous {
				sprite_index=sprite[WALKING_DOWN]
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
				sprite_index=sprite[WALKING_DOWN]
				facing=RIGHT
			}
			//partner went down
			if x<x_previous {
				sprite_index=sprite[WALKING_DOWN]
				facing=LEFT
			}	
	
		}
		
	if x=x_previous and y=y_previous {
		sprite_index=sprite[DOWN]
		}
			
	}

}



