if obj_pause.paused=true {exit}

//create surface if there isn't one
if !surface_exists(global.light_surface) {
	global.light_surface = surface_create(view_wport,view_hport)
}

surface_resize(global.light_surface,obj_view.view_gui_width+2,obj_view.view_gui_height+2)

var xpos = camera_get_view_x(view)
var ypos = camera_get_view_y(view)
var gui_w = obj_view.view_gui_width
var gui_h = obj_view.view_gui_height
//draw rectangle on surface, then reset
surface_set_target(global.light_surface)
draw_set_color(color)

draw_set_alpha(1)
draw_rectangle(0,0,gui_w,gui_h,false)

//draw lights
if instance_exists(obj_light) {
	
	with obj_light {
		
		var w = obj_view.view_width
		var offset = w/(w+obj_view.currently_visible_zoom_amount)
		//var h = obj_view.view_width/obj_view.game_aspect_ratio
		var difference = round(gui_w/w)
		
		var xx1 = difference*( (x-xpos)-size/2 )*offset
		var yy1 = difference*( (y-ypos)-size/2 )*offset
		var xx2 = difference*( (x-xpos)+size/2 )*offset
		var yy2 = difference*( (y-ypos)+size/2 )*offset
		draw_set_alpha(strength)
		draw_ellipse_color(xx1,yy1,xx2,yy2,c_black,color,false)
		
	}
	
}


surface_reset_target()
draw_set_alpha(1)
draw_set_color(c_black)

//draw canvass
gpu_set_blendmode(bm_subtract)
draw_surface(global.light_surface,-1,-1)
gpu_set_blendmode(bm_normal)
