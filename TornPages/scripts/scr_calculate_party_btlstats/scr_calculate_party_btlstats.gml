///(scr_calculate_party_btlstats, lvl)

var thelvl = argument0

//NOTE: All partners levels are set to the players level.

/*//////////////////////////////////////////////////////
// PLAYER'S BATTLE STATS
/*//////////////////////////////////////////////////////

var map=Player

	var key = "LVL"
	var value = thelvl
	map[? key] = floor(value)

	var key = "EXP_max"
	var value = 10 + (Player[? "LVL"]*Player[? "LVL"]) - (2*Player[? "LVL"]) + 2*Player[? "LVL"]
	map[? key] = floor(value)

	var key = "HP_max"
	var value = 12 + 2.5*(Player[? "LVL"]-1)
	map[? key] = floor(value)
	
	//if first_time {
	if first_time {
		var key = "HP"
		var value = map[? "HP_max"]
		map[? key] = floor(value)
	}

	var key = "MP_max"
	var value = 5 + 2.5*(Player[? "LVL"]-1)
	map[? key] = floor(value)

	if first_time {
		var key = "MP"
		var value = map[? "MP_max"]
		map[? key] = round(value)
	}

	var key = "ATK"
	var value = 5 + Player[? "LVL"]-1
	map[? key] = round(value)

	var key = "SPATK"
	var value = 4 + Player[? "LVL"]-1
	map[? key] = round(value)

	var key = "DEF"
	var value = 4 + Player[? "LVL"]-1
	map[? key] = round(value)

	var key = "SPDEF"
	var value = 4 + Player[? "LVL"]-1
	map[? key] = round(value)

	var key = "LMT"
	var value = 0
	map[? key] = round(value)

	var key = "DEX"
	var value = 3 + 0.35*(Player[? "LVL"]-1)
	map[? key] = round(value)

	var key = "FATE"
	var value = 2 + 0.35*(Player[? "LVL"]-1)
	map[? key] = round(value)
	
/*//////////////////////////////////////////////////////
// GUMPER'S BATTLE STATS
/*//////////////////////////////////////////////////////

var map=Gumper

	var key = "LVL"
	var value = Player[? "LVL"]
	map[? key] = floor(value)

	var key = "EXP_max"
	var value = Player[? "EXP_max"]
	map[? key] = floor(value)

	var key = "HP_max"
	var value = 8 + 2.5*(Gumper[? "LVL"]-1)
	map[? key] = floor(value)

	//if first_time {
	if first_time {
		var key = "HP"
		var value = map[? "HP_max"]
		map[? key] = floor(value)
	}

	var key = "MP_max"
	var value = 1 + 2.5*(Gumper[? "LVL"]-1)
	map[? key] = floor(value)

	if first_time {
		var key = "MP"
		var value = map[? "MP_max"]
		map[? key] = round(value)
	}

	var key = "ATK"
	var value = 1 + Gumper[? "LVL"]-1
	map[? key] = round(value)

	var key = "SPATK"
	var value = 1 + Gumper[? "LVL"]-1
	map[? key] = round(value)

	var key = "DEF"
	var value = 2 + Gumper[? "LVL"]-1
	map[? key] = round(value)

	var key = "SPDEF"
	var value = 2 + Gumper[? "LVL"]-1
	map[? key] = round(value)

	var key = "LMT"
	var value = 0
	map[? key] = round(value)

	var key = "DEX"
	var value = 2 + 0.35*(Gumper[? "LVL"]-1)
	map[? key] = round(value)

	var key = "FATE"
	var value = 1 + 0.35*(Gumper[? "LVL"]-1)
	map[? key] = round(value)
	
/*//////////////////////////////////////////////////////
// EDGAR'S BATTLE STATS
/*//////////////////////////////////////////////////////

var map=Edgar

	var key = "LVL"
	var value = Player[? "LVL"]
	map[? key] = floor(value)

	var key = "EXP_max"
	var value = Player[? "EXP_max"]
	map[? key] = floor(value)

	var key = "HP_max"
	var value = 10 + 2.5*(Edgar[? "LVL"]-1)
		map[? key] = floor(value)

	//if first_time {
	if first_time {
		var key = "HP"
		var value = map[? "HP_max"]
		map[? key] = floor(value)
	}

	var key = "MP_max"
	var value = 14 + 2.5*(Edgar[? "LVL"]-1)
		map[? key] = round(value)

	if first_time {
		var key = "MP"
		var value = map[? "MP_max"]
		map[? key] = round(value)
	}

	var key = "ATK"
	var value = 3 + Edgar[? "LVL"]-1
	map[? key] = round(value)

	var key = "SPATK"
	var value = 5 + Edgar[? "LVL"]-1
	map[? key] = round(value)

	var key = "DEF"
	var value = 3 + Edgar[? "LVL"]-1
	map[? key] = round(value)

	var key = "SPDEF"
	var value = 6 + Edgar[? "LVL"]-1
	map[? key] = round(value)

	var key = "LMT"
	var value = 0
	map[? key] = round(value)

	var key = "DEX"
	var value = 2 + 0.35*(Edgar[? "LVL"]-1)
	map[? key] = round(value)

	var key = "FATE"
	var value = 4 + 0.35*(Edgar[? "LVL"]-1)
	map[? key] = round(value)