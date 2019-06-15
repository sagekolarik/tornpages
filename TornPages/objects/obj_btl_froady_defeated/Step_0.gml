
// Inherit the parent event
event_inherited();

if sprite_index=spr_frog_floating and image_index>=sprite_get_number(sprite_index)-1 {
	image_index=sprite_get_number(sprite_index)-1
	image_speed=0
}


