if facing_direction=-1 {image_xscale=-(abs(image_xscale))}
if facing_direction=1 {image_xscale=(abs(image_xscale))}

if stats[? "HAS_SHADOW"]=true {
	draw_sprite_ext(spr_shadow,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha/2)
}

draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,0,c_white,image_alpha)
