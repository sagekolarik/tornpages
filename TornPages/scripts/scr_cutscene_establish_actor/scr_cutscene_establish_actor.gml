///@arg0 name

the_actor_name = argument0
the_actor = noone
with obj_npc {
	if name_banner=other.the_actor_name {other.the_actor=id}
}

return the_actor