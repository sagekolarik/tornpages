depth=-y

script_execute(scr_zchange)
script_execute(scr_scalechange)

//never dies
if stat_altering {
	stat_altering=false
	stats[? "HP"] = stats[? "HP_max"]
}