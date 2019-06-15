///@arg combatant
///@arg stat
///@arg amount
///@arg alteration_spd

var comb=argument0
with comb
{
	var stat=argument1
	var amount=argument2
	var alteration_spd=argument3
	
	stat_altering=true
	
	//create ds lists if necessary
	if alt_stat=noone {
			alt_stat=ds_list_create()
			alt_stat_goal=ds_list_create()
			alt_stat_spd=ds_list_create()
		}
	
	//set stat(s) to alter
	ds_list_add(alt_stat,stat)
	
	//set amount to alter stat(s)
		var startstat = stats[? stat]
		var goalstat = startstat+amount
	ds_list_add(alt_stat_goal,goalstat)
	
	//set speed(s) to alter
	if amount<0 {alteration_spd*=-1}
	ds_list_add(alt_stat_spd,alteration_spd)
}
stat_alt=true
