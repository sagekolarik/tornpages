///@arg0 emoting_inst
///@arg1 emote_sprite
///@arg2 time

if moment=0 {

	var emoting_inst = argument0
	var emote_sprite = argument1
	var time = argument2

	emote = scr_create_emote(emoting_inst,emote_sprite)
		emote.sprite_index=emote_sprite
		emote.emoter=emoting_inst
		emote.time=time
	
	return emote

}

return noone