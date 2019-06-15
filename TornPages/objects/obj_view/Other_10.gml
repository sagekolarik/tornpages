//WINDOWED MODE

fullscreen=false
window_set_fullscreen(false)

if display=LARGESCREEN {
	window_scale=large_window_scale
}
if display=SMALLSCREEN {
	window_scale=small_window_scale
}

view_width=ideal_view_width
view_height=ideal_view_height

window_set_size(view_width*window_scale,view_height*window_scale)
alarm[0]=1 //center

surface_resize(application_surface,view_width,view_height)

if instance_exists(obj_message) {
	with obj_message {scr_set_message_positions()}
}