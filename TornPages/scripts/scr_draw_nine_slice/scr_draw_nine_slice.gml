///scr_draw_nine_slice,sprite_index,x1,y1,x2,y2

var sprite = argument0
var x1 = argument1
var y1 = argument2
var x2 = argument3
var y2 = argument4

if object_is_ancestor(object_index,obj_message) or  object_is_ancestor(object_index,obj_ui_parent) {
	var subimage=image_index
}
else {
	var subimage=0
}

var sw=sprite_get_width(sprite)/3
var sh=sprite_get_height(sprite)/3
var w = x2-x1
var h = y2-y1

//top
draw_sprite_part_ext(sprite, subimage, 0, 0, sw, sh, x1, y1, 1, 1, c_white, 1)//left
draw_sprite_part_ext(sprite, subimage, sw, 0, sw, sh, x1+sw, y1, (w-sw*2)/sw, 1, c_white, 1)//middle
draw_sprite_part_ext(sprite, subimage, sw*2, 0, sw, sh, x2-sw, y1, 1, 1, c_white, 1)//right

//middle
draw_sprite_part_ext(sprite, subimage, 0, sh, sw, sh, x1, y1+sh, 1, (h-sh*2)/sh, c_white, 1)//left
draw_sprite_part_ext(sprite, subimage, sw, sh, sw, sh, x1+sw, y1+sh, (w-sw*2)/sw, (h-sh*2)/sh, c_white, 1)//middle
draw_sprite_part_ext(sprite, subimage, sw*2, sh, sw, sh, x2-sw, y1+sh, 1, (h-sh*2)/sh, c_white, 1)//right

//bot
draw_sprite_part_ext(sprite, subimage, 0, sh*2, sw, sh*2, x1, y2-sh, 1, 1, c_white, 1)//left
draw_sprite_part_ext(sprite, subimage, sw, sh*2, sw, sh, x1+sw, y2-sh, (w-sw*2)/sw, 1, c_white, 1)//middle
draw_sprite_part_ext(sprite, subimage, sw*2, sh*2, sw, sh, x2-sw, y2-sh, 1, 1, c_white, 1)//right

