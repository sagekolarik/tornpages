//cycle through HP levels. See if anybody died.
var i = 0
repeat(ds_list_size(order))
{
	if i<=ds_list_size(order)-1
		{
		var comb = order[| i]
		if instance_exists(comb) and comb.stats[? "HP"]=0
			{
				
				scr_btl_ctrl_create_defeated_combatant(comb,i)
				
				//exit so only 1 death object is created at a time
				exit
				
			}
		else
			{
				i++
			}
		}
	
}

//get current combatant number again
combatant_num = script_execute(scr_get_combatant_num)

if !instance_exists(combatant)
{
	phase=BTLFLD_EVENT
	event_user(phase)
}
