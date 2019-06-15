

depth=-y
x_previous=x
y_previous=y

if global.cutscene=true {exit}
//set our own follow queue x and y variables to refer to the player's structure
follow_queue_x=obj_player.follow_queue_x
follow_queue_y=obj_player.follow_queue_y


if ds_queue_size(follow_queue_x)>=follow_queue_size {
	
	if instance_exists(obj_player) {
		
		if !instance_exists(obj_fade) and !instance_exists(obj_cutscene) {
	
			//var xx = ds_queue_head(follow_queue_x)
			//var yy = ds_queue_head(follow_queue_y)
			
			interacting=false
	
			if ds_queue_size(follow_queue_x)>=follow_queue_size {
	
				x = ds_queue_dequeue(follow_queue_x)
				y = ds_queue_dequeue(follow_queue_y)
			
			}
		
		
		
		
			//check for skips
			/*	
			var x_next=ds_queue_head(follow_queue_x)
			var y_next=ds_queue_head(follow_queue_y)
		
			if x_previous > x and x_next > x {
				x=x_next
			}
			if x_previous < x and x_next < x {
				x=x_next
			}
			if y_previous > y and y_next > y {
				y=y_next
			}
			if y_previous < y and x_next < y {
				y=x_next
			}
			*/
		}
		
	}
		
	
}


/*//////////////////////////////////////////////////////////////////
		SPRITES
/*//////////////////////////////////////////////////////////////////

script_execute(scr_partner_follower_getsprites)

if !interacting {
	
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

}

if x=x_previous and y=y_previous and !place_meeting(x,y,obj_climbable) {
	sprite_index=sprite[facing]
}




