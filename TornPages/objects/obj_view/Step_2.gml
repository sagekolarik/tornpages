

/*///////////////////////////////////////////////////////////
	SIZING
/*///////////////////////////////////////////////////////////

var w = view_width
var h = view_height

scr_view_change_zoom()

w+=ceil(currently_visible_zoom_amount)

if fullscreen=false {
	h=w/game_aspect_ratio
}
if fullscreen=true {
	h=w/display_aspect_ratio
}

if !obj_pause.paused { //for whatever reason this breaks the pause method...idk why but whatever
	camera_set_view_size(view,w,h)
	surface_resize(application_surface,w*window_scale,h*window_scale)
	
	view_gui_width=4*view_width
	view_gui_height=4*view_height
	display_set_gui_size(view_gui_width,view_gui_height)
}



/*///////////////////////////////////////////////////////////
	FOLLOWING
/*///////////////////////////////////////////////////////////

if instance_exists(following) {
	
	x=clamp(following.x-w/2,0,room_width-w)
	y=clamp(following.y-h/2,0,room_height-h)
	
	if w>room_width {
		x+= (w-room_width)/2
	}
	if h>room_height {
		y+= (h-room_height)/2
	}
	
}

if room=rm_btl and !instance_exists(following) {
	x=room_width/2-(w)/2
	y=room_height/2-(h)/2
}

/*///////////////////////////////////////////////////////////
	FUNCTIONS
/*///////////////////////////////////////////////////////////

//SCREEN SHAKE
if screen_shake {
	x+=floor(random_range(-shake_range,shake_range))
	y+=floor(random_range(-shake_range,shake_range))
}
if keyboard_check_pressed(ord("E")) {
	if screen_shake {
		screen_shake=false; exit
	}
	else {
		screen_shake=true; exit
	}
}

/*///////////////////////////////////////////////////////////
	TOGGLE FULLSCREEN
/*///////////////////////////////////////////////////////////
camera_set_view_pos(view,x,y)

/*///////////////////////////////////////////////////////////
	TOGGLE FULLSCREEN
/*///////////////////////////////////////////////////////////
if keyboard_check_pressed(ord("F")) 
	{
		if fullscreen=false {
			fullscreen=true
			event_user(1)
			exit
		}
		if fullscreen=true {
			fullscreen=false
			event_user(0)
			exit
		}
	}