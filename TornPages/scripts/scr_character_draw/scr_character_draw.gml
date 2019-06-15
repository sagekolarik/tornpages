//draw shadow
if has_shadow {
	
	var y_offset = 0
	if place_meeting(x,y,obj_climbable) {
		while place_meeting(x,y+y_offset,obj_climbable) {
			y_offset+=1
		}
		y_offset-=4
	}
	
	draw_sprite_ext(spr_shadow,image_index,x,y+y_offset,image_xscale,image_yscale,0,c_white,image_alpha/2)
	
}

//draw self
draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,0,c_white,image_alpha)