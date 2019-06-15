// Inherit the parent event
event_inherited();

if sprite_index=spr_fluffer_standing and image_index=sprite_get_number(spr_fluffer_standing)-1 {
	sprite_index=spr_fluffer_idle
}

