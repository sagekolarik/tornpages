// 2 - CHOICE PHASE
	//gives the current combatant the opportunity to decide what to do
	alarm[0]=-1
	
//find the combatant who's turn it is
combatant = ds_list_find_value(order,current_combatant)	



//make sure comnbatant exists --- if not, go straight to battlefield events
if !instance_exists(combatant)
{
	phase=BTLFLD_EVENT
	event_user(phase)
	exit
}


//if the combatant does exist
if instance_exists(combatant)
{


	with combatant
	{
		event_user(CHOICE)
	}

}

