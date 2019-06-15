if !obj_input.action_pressed {exit}

var interactable = instance_nearest(x,y,obj_interactable_parent)
var success=false

//instance_place(x, y, obj_interactable_parent)

if facing=RIGHT {
	if place_meeting(x+spd,y,obj_partner_parent) {
		var interactable=instance_place(x+spd,y,obj_partner_parent)
		success=true
	}
	if place_meeting(x+spd,y,obj_interactable_parent) {
		var interactable=instance_place(x+spd,y,obj_interactable_parent)
		success=true
	}
	
}
if facing=LEFT {
	if place_meeting(x-spd,y,obj_partner_parent) {
		var interactable=instance_place(x-spd,y,obj_partner_parent)
		success=true
	}
	if place_meeting(x-spd,y,obj_interactable_parent) {
		var interactable=instance_place(x-spd,y,obj_interactable_parent)
		success=true
	}
}
if facing=UP {
	if place_meeting(x,y-spd,obj_partner_parent) {
		var interactable=instance_place(x,y-spd,obj_partner_parent)
		success=true
	}
	if place_meeting(x,y-spd,obj_interactable_parent) {
		var interactable=instance_place(x,y-spd,obj_interactable_parent)
		success=true
	}
}
if facing=DOWN {
	if place_meeting(x,y+spd,obj_partner_parent) {
		var interactable=instance_place(x,y+spd,obj_partner_parent)
		success=true
	}
	if place_meeting(x,y+spd,obj_interactable_parent) {
		var interactable=instance_place(x,y+spd,obj_interactable_parent)
		success=true
	}
}


/*

if point_distance(x,y,interactable.x,interactable.y)<=ceil((abs(interactable.sprite_height)+abs(interactable.sprite_width))*2/3)
	{
		if facing=RIGHT or facing=LEFT
			{
				if facing=RIGHT and abs(y-interactable.y)<8 and x<interactable.x
					{success=true}
				if facing=LEFT and abs(y-interactable.y)<8 and x>=interactable.x
					{success=true}
			}
		if facing=UP or facing=DOWN
			{
				if facing=UP and abs(x-interactable.x)<8 and y>interactable.y
					{success=true}
				if facing=DOWN and abs(x-interactable.x)<8 and y<=interactable.y
					{success=true}
			}
	}
*/
	
if success
	{
		with interactable
		{
			event_user(ACTIVATE)
		}
	}