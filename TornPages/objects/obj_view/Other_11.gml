//FULLSCREEN MODE

fullscreen=true
window_set_fullscreen(true)

if display_get_width() mod view_width !=0 {
		var d = round(display_get_width()/view_width)
		view_width=display_get_width()/d
		if view_width & 1 {view_width++}
	}
	if display_get_height() mod view_height !=0 {
		var d = round(display_get_height()/view_height)
		view_height=display_get_height()/d
		if view_height & 1 {view_height++}
	}
	
if instance_exists(obj_message) {
	with obj_message {scr_set_message_positions()}
}