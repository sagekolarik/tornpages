// Inherit the parent event
event_inherited();

if sprite_index=spr_fluffer_standing and image_index=sprite_get_number(spr_fluffer_standing)-1 {
	sprite_index=spr_fluffer_idle
}

if sprite_index=spr_gawblin_hurt and !audio_is_playing(sfx_gremlin_hurt) {
	scr_play_sfx(sfx_gremlin_hurt)
}

