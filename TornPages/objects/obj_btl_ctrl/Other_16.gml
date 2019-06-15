// 6 - EVALUATION PHASE
	//evaluates whether all combatants have performed actions and initiates the appropriate phase (1,2,7,or 8)
	alarm[0]=-1

//check for a cutscene
with cutscene_finder {event_user(EVALUATION)}
//if there's a cutscene, the cutscene finder object would have made an instance of the cutscene by now
if global.cutscene=true {
	phase=CUTSCENE
	exit
}

//has an order never been created? Go to order
if ds_list_size(order)=0 {
	combatant=noone
	current_combatant = 0
	phase=ORDER
	event_user(phase)
	exit
}

//check for end
if !instance_exists(PLAYER) or !instance_exists(obj_enemy_combatant_parent) {
	phase=END
	event_user(phase)
	exit
}

//current combatant is always 1 behind the number of combatants, because it starts at 0. however, ds_list_size(order) does not start at zero, even though order in general does
if ds_list_size(order)<=current_combatant+1
		{
		combatant=noone
		current_combatant = 0
		phase=ORDER
		}

else
	{
		if instance_exists(combatant) {current_combatant++}
		
		combatant=noone
		
		//go to next movement (but not yet)
		phase=CHOICE
	}


//if cutscene checks out
	//{go to cutscene phase}
	
//go do you, fam
alarm[0]=15
