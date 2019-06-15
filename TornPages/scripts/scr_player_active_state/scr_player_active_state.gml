if global.debug {
	scr_player_active_state_debug()
	exit
}

//fast
if obj_input.back_button {
	spd=fast_spd
}
else {
	spd=normal_spd
}

//check if climbing
if place_meeting(x,y,obj_climbable) {
	spd=climb_spd
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
			if !place_meeting(x+x_mvmt*i, y,obj_solid)
				{
					x+=x_mvmt*i
					break
				}
			var dis = 0
			repeat(corner_slide_dis)
				{
				if place_meeting(x+x_mvmt*i, y,obj_solid)
					{
						dis+=1
						if !place_meeting(x+x_mvmt*i,y+dis,obj_solid)
							{
								x+=x_mvmt*i
								y+=dis
								break
							}
						if !place_meeting(x+x_mvmt*i,y-dis,obj_solid)
							{
								x+=x_mvmt*i
								y-=dis
								break
							}
					}
				}
			i-=1
		}
	}
if facing=UP or facing=DOWN
	{
		var i = spd
		repeat(spd)
		{
			if !place_meeting(x,y+y_mvmt*i,obj_solid)
				{
					y+=y_mvmt*i
					break
				}
			var dis = 0
			repeat(corner_slide_dis)
				{
				if place_meeting(x, y+y_mvmt*i,obj_solid)
					{
						dis+=1
						if !place_meeting(x+dis,y+y_mvmt*i,obj_solid)
							{
								y+=y_mvmt*i
								x+=dis
								break
							}
						if !place_meeting(x-dis,y+y_mvmt*i,obj_solid)
							{
								y+=y_mvmt*i
								x-=dis
								break
							}
					}
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
