///followerid

with obj_player {
	
	ds_queue_clear(follow_queue_x)
	ds_queue_clear(follow_queue_y)
	
	var follower = argument0
	//var follower_current_distance = point_distance(x,y,follower.x,follower.y)
	var follower_current_xdistance = point_distance(x,y,follower.x,y)
	var follower_current_ydistance = point_distance(x,y,x,follower.y)
	
	//will it need to go up or down in both the x and y direction
	var plusorminus_x = (x-follower.x)/(abs(x-follower.x)) //results in -1 if it should travel to the left or +1 if it should go to the right
	var plusorminus_y = (y-follower.y)/(abs(y-follower.y)) //results in -1 if it should travel to the left or +1 if it should go to the right
	
	//change in x primarily
	var follower_current_distance=max(follower_current_xdistance,follower_current_ydistance)
	
	
	var xx=follower.x
	var yy=follower.y
	repeat(ceil(follower_current_distance/spd)) {
		
		//xdir
		if xx!=x {
			if abs(x-xx)<spd {//if the distance between them is less than speed 
				x=xx
			}
			else {
				xx+=spd*plusorminus_x
			}
		}
		
		if yy!=y {
			if abs(y-yy)<spd {//if the distance between them is less than speed 
				y=yy
			}
			else {
				yy+=spd*plusorminus_y
			}
		}
		
		ds_queue_enqueue(follow_queue_x,xx)
		ds_queue_enqueue(follow_queue_y,yy)
		
	}
	
}