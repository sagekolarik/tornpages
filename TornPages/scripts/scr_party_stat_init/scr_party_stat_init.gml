/*//////////////////////////////////////////////////////////

				Player
				
*////////////////////////////////////////////////////////////
first_time=true

Player = ds_map_create()
var map=Player

// Player'S RANDOM STATS

	var key = "NAME"
	var value = "Kai"
	ds_map_add(map,key,value)
	
	var key = "SIZE"
	var value = 16
	ds_map_add(map,key,value)

	var key = "SCARINESS"
	var value = 3
	ds_map_add(map,key,value)

	var key = "SPECIES"
	var value = "Human"
	ds_map_add(map,key,value)

	var key = "PRONOUN"
	var value = "He"
	ds_map_add(map,key,value)
	
// Player'S BATTLE STATS

	var key = "LVL"
	var value = 2
	ds_map_add(map,key,value)
	
	var key = "EXP"
	var value = 0
	ds_map_add(map,key,value)



// Player'S RESISTS/STATUS EFFECTS

script_execute(scr_standard_combatant_status_resist_init,map)


/*//////////////////////////////////////////////////////////

				Edgar
				
*////////////////////////////////////////////////////////////

Edgar = ds_map_create()
var map=Edgar

// Player'S RANDOM STATS

	var key = "NAME"
	var value = "Edgar"
	ds_map_add(map,key,value)
	
	var key = "SIZE"
	var value = 16
	ds_map_add(map,key,value)

	var key = "SCARINESS"
	var value = 2
	ds_map_add(map,key,value)

	var key = "SPECIES"
	var value = "Human"
	ds_map_add(map,key,value)

	var key = "PRONOUN"
	var value = "He"
	ds_map_add(map,key,value)
	
// Edgar'S BATTLE STATS

	var key = "LVL"
	var value = Player[? "LVL"]
	ds_map_add(map,key,value)



// Edgar'S RESISTS/STATUS EFFECTS

script_execute(scr_standard_combatant_status_resist_init,map)


/*//////////////////////////////////////////////////////////

				Gumper
				
*////////////////////////////////////////////////////////////

Gumper = ds_map_create()
var map=Gumper

// Player'S RANDOM STATS

	var key = "NAME"
	var value = "Gumper"
	ds_map_add(map,key,value)
	
	var key = "SIZE"
	var value = 16
	ds_map_add(map,key,value)

	var key = "SCARINESS"
	var value = 2
	ds_map_add(map,key,value)

	var key = "SPECIES"
	var value = "Human"
	ds_map_add(map,key,value)

	var key = "PRONOUN"
	var value = "He"
	ds_map_add(map,key,value)



// GUMPER'S RESISTS/STATUS EFFECTS

scr_standard_combatant_status_resist_init(map)
	
/*//////////////////////////////////////////////////////////

				PARTY
				
*////////////////////////////////////////////////////////////

scr_party_list_create()

scr_calculate_party_btlstats(Player[? "LVL"])

first_time=false
