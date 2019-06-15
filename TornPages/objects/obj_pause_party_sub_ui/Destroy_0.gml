// Inherit the parent event
event_inherited();

var slot=0

repeat(ds_list_size(party)) {
	
	ds_map_destroy(stats[slot])
	
	slot++
	
}


