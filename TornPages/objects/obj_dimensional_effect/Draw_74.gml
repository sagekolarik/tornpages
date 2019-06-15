if obj_pause.paused=true {exit}

//create surface if there isn't one
if !surface_exists(dimension_layer) {
	dimension_layer = surface_create(view_wport,view_hport)
}

surface_resize(dimension_layer,obj_view.view_gui_width+2,obj_view.view_gui_height+2)

var xpos = camera_get_view_x(view)
var ypos = camera_get_view_y(view)
var gui_w = obj_view.view_gui_width
var gui_h = obj_view.view_gui_height
//draw rectangle on surface, then reset
surface_set_target(dimension_layer)

draw_set_alpha(1)
var scale=gui_h/sprite_height
draw_sprite_ext(sprite_index,image_index,0,0,scale,scale,0,c_white,image_alpha)

surface_reset_target()
draw_set_alpha(1)
draw_set_color(c_black)

//draw canvass
draw_surface(dimension_layer,0,0)

