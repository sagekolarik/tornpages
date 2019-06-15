///arg0 lvl
var lvl = argument0

/*//////////////////////////////////////////////////////////

				GLOOP
				
*////////////////////////////////////////////////////////////

stats = ds_map_create()
var map=stats

// RANDOM STATS

	var stat = "NAME"
	var value = "Gawblin"
	ds_map_add(map,stat,value)
	
	var stat = "SIZE"
	var value = 16
	ds_map_add(map,stat,value)

	var stat = "SCARINESS"
	var value = 2
	ds_map_add(map,stat,value)

	var stat = "SPECIES"
	var value = "Slime"
	ds_map_add(map,stat,value)
	
	var key = "PRONOUN"
	var value = "It"
	ds_map_add(map,key,value)

// BATTLE STATS

	var stat = "LVL"
	var value = lvl
	ds_map_add(map,stat,round(value))
	
	var stat = "EXP"
	var value = 12
	ds_map_add(map,stat,round(value))

	var key = "HP_max"
	var value = 15 + 3*(stats[? "LVL"]-1)
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
	var value = 4 + stats[? "LVL"]-1
	ds_map_add(map,key,round(value))

	var key = "SPATK"
	var value = 1 + stats[? "LVL"]-1
	ds_map_add(map,key,round(value))

	var key = "DEF"
	var value = 3 + stats[? "LVL"]-1
	ds_map_add(map,key,round(value))

	var key = "SPDEF"
	var value = 3 + stats[? "LVL"]-1
	ds_map_add(map,key,round(value))

	var key = "LMT"
	var value = 0
	ds_map_add(map,key,round(value))

	var key = "DEX"
	var value = 7 + 0.2*(stats[? "LVL"]-1)
	ds_map_add(map,key,round(value))

	var key = "FATE"
	var value = 2 + 0.2*(stats[? "LVL"]-1)
	ds_map_add(map,key,round(value))

//resists/statusfxs

script_execute(scr_standard_combatant_status_resist_init,map)
	
	
// ACTIONS

var actions = ds_list_create()
var list=actions
	ds_list_add(list,"Gawblin Spear")
	
	ds_map_add(stats,"ACTIONS",actions)