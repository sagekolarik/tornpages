/*//////////////////////////////////////////////////////////

				GLOOP
				
*////////////////////////////////////////////////////////////

stats = ds_map_create()
var map=stats

// RANDOM STATS

	var stat = "NAME"
	var value = "Stephen"
	ds_map_add(map,stat,value)
	
	var stat = "SIZE"
	var value = 32
	ds_map_add(map,stat,value)

	var stat = "SCARINESS"
	var value = 6
	ds_map_add(map,stat,value)

	var stat = "SPECIES"
	var value = "Stephen"
	ds_map_add(map,stat,value)
	
	var key = "PRONOUN"
	var value = "It"
	ds_map_add(map,key,value)

// BATTLE STATS

	var stat = "LVL"
	var value = 1
	ds_map_add(map,stat,round(value))
	
	var stat = "EXP"
	var value = 8
	ds_map_add(map,stat,round(value))

	var key = "HP_max"
	var value = 50 + 3*(stats[? "LVL"]-1)
	ds_map_add(map,key,floor(value))

	var key = "HP"
	var value = map[? "HP_max"]
	ds_map_add(map,key,value)

	var key = "MP_max"
	var value = 0
	ds_map_add(map,key,round(value))

	var key = "MP"
	var value = map[? "MP_max"]
	ds_map_add(map,key,round(value))

	var key = "ATK"
	var value = 3 + stats[? "LVL"]-1
	ds_map_add(map,key,round(value))

	var key = "SPATK"
	var value = 1000 + stats[? "LVL"]-1
	ds_map_add(map,key,round(value))

	var key = "DEF"
	var value = 2 + stats[? "LVL"]-1
	ds_map_add(map,key,round(value))

	var key = "SPDEF"
	var value = 4 + stats[? "LVL"]-1
	ds_map_add(map,key,round(value))

	var key = "LMT"
	var value = 0
	ds_map_add(map,key,round(value))

	var key = "DEX"
	var value = 5 + 0.2*(stats[? "LVL"]-1)
	ds_map_add(map,key,round(value))

	var key = "FATE"
	var value = 1 + 0.2*(stats[? "LVL"]-1)
	ds_map_add(map,key,round(value))
	
//resists/statusfxs

script_execute(scr_standard_combatant_status_resist_init,map)

	var stat = "POI"
	var value = false
	ds_map_replace(map,stat,round(value))
	
	var stat = "ROOT"
	var value = false
	ds_map_replace(map,stat,round(value))

	var stat = "fire_r"
	var value = 1.5
	ds_map_replace(map,stat,round(value))
	
// ACTIONS

var actions = ds_list_create()
var list=actions
	ds_list_add(list,"Nothing")
	ds_list_add(list,"Undefined Action")
	
	ds_map_add(stats,"ACTIONS",actions)
