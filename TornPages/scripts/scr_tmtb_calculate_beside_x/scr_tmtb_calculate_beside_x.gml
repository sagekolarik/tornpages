///@arg traveling_combatant
///@arg stationary_combatant

var comb = argument0
var targ = argument1


//is combatant traveling to right or left of target
var side = noone
if comb.x>=targ.x {
	side=RIGHT
}
if comb.x<targ.x {
	side=LEFT
}

//now calculate the distance based on sizes
var dist = (targ.stats[? "SIZE"] + comb.stats[? "SIZE"])

//and set the x
if side=LEFT {
	var xx = targ.x - dist
}
if side=RIGHT {
	var xx = targ.x + dist
}

return xx