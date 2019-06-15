///@arg0 xx
///@arg1 yy
///@arg2	relative
///@arg3 cam_spd
///@arg4 advance_upon_arrival

var xx = argument0
var yy = argument1
var relative = argument2
var cam_spd = argument3
var advance_upon_arrival = argument4

/*/////////////////////////////////////////////////
	Exit if appropriate
/*/////////////////////////////////////////////////
if !instance_exists(obj_cutscene_camera) {exit}
if obj_cutscene_camera.x=xx and obj_cutscene_camera.y=yy {exit}

/*/////////////////////////////////////////////////
	Set correct destination based on specifications
/*/////////////////////////////////////////////////
//if relative, set it so
if relative {
		xx=obj_cutscene_camera.x+xx
		yy=obj_cutscene_camera.x+yy
	}
//if outside the view border, bring it back	
h_border = obj_view.view_width/2
v_border = obj_view.view_height/2
if xx<h_border {xx=h_border}
if xx>room_width-h_border {xx=room_width-h_border}
if yy<v_border {yy=v_border}
if yy>room_height-v_border {yy=room_height-v_border}

/*/////////////////////////////////////////////////
	If not moved yet
/*/////////////////////////////////////////////////
if obj_cutscene_camera.speed=0 {
	
	//Jump to border if at the edge
	
	with obj_cutscene_camera {
	
		if x<other.h_border {x=other.h_border}
		if x>room_width-other.h_border {x=room_width-other.h_border}
		if y<other.v_border {y=other.v_border}
		if y>room_height-other.v_border {y=room_height-other.v_border}
		
	}
	
	//start moving
	obj_cutscene_camera.direction=point_direction(obj_cutscene_camera.x,obj_cutscene_camera.y,xx,yy)
	obj_cutscene_camera.speed=cam_spd
	
}

/*/////////////////////////////////////////////////
	check for arrival
/*/////////////////////////////////////////////////
if abs(point_distance(obj_cutscene_camera.x,obj_cutscene_camera.y,xx,yy))<=cam_spd {
		obj_cutscene_camera.x=xx
		obj_cutscene_camera.y=yy
		obj_cutscene_camera.speed=0
		
		if advance_upon_arrival {event_user(ADVANCE)}
		
}