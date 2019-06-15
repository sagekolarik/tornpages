if holding_tuppy {
	draw_sprite_ext(spr_tuppy_being_held,image_index,x,y,-2,2,0,c_white,1)
	draw_sprite_ext(spr_shadow,image_index,x-32,y,-2,2,0,c_white,0.5)
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)

if shadow_hand {
	draw_sprite_ext(shadow_hand_sprite,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	if image_index>= sprite_get_number(shadow_hand_sprite) {
		shadow_hand_sprite=spr_shadowcreature_hand
	}
}


if draw_face {
	draw_sprite_ext(spr_shadowcreature_face,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	draw_sprite_ext(spr_shadowcreature_face,image_index,x,y+4,image_xscale*1.5,image_yscale*1.5,0,c_white,0.3)
}