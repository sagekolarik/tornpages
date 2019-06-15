///@arg0 emoting_inst
///@arg1 emote_sprite

var emoting_inst = argument0
var emote_sprite = argument1

var emote = instance_create_depth(emoting_inst.x,emoting_inst.y,emoting_inst.depth,obj_emote)
	emote.sprite_index=emote_sprite
	emote.emoter=emoting_inst
	emote.time=45
	
return emote