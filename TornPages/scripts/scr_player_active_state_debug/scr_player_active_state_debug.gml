//fast
if obj_input.back_button {
	spd=debug_fast_spd
}
else {
	spd=normal_spd
}

//check if climbing
if place_meeting(x,y,obj_climbable) {
	spd=normal_spd
}


x_mvmt = obj_input.right_button - obj_input.left_button
y_mvmt = obj_input.down_button - obj_input.up_button

//set direction - if using mirroring, also mirror correctly here
if y_mvmt>0 {
	facing=DOWN
	//image_xscale=abs(image_xscale)
}
if y_mvmt<0 {
	facing=UP
	//image_xscale=abs(image_xscale)
}
if x_mvmt>0 {
	facing=RIGHT
	//image_xscale=abs(image_xscale)
}
if x_mvmt<0 {
	facing=LEFT
	//image_xscale=-abs(image_xscale)
}


script_execute(scr_activate_interactable)

//movement
if facing=RIGHT or facing=LEFT
	{
		var i = spd
		repeat(spd)
		{
			//if !place_meeting(x+x_mvmt*i, y,obj_solid)
				{
					x+=x_mvmt*i
					break
				}
			i-=1
		}
	}
if facing=UP or facing=DOWN
	{
		var i = spd
		repeat(spd)
		{
			//if !place_meeting(x,y+y_mvmt*i,obj_solid)
				{
					y+=y_mvmt*i
					break
				}
			i-=1
		}
	}
	
if x_previous=x and y_previous=y {moved=false}
else {moved=true}

//snap to 4x4 grid
if !moved {
	if x_previous!=x {
		var change_x = x mod 4
		if change_x<2 {x-=change_x}
		else {x+=change_x}
	}
	if y_previous!=y {
		var change_y = y mod 4
		if change_y<2 {y-=change_y}
		else {y+=change_y}
	}
}
