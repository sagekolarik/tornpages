//if there's a defeat object, don't do anything else. Only allow 1 combatant to die at a time
if instance_exists(obj_defeatedcombatant_parent)
	{exit}
	
//is anybody dead?
script_execute(scr_btl_ctrl_defeatcheck)

//if there's a defeat obj now, also leave

if instance_exists(obj_defeatedcombatant_parent)
	{exit}

//is anyone still altering stats?
var success=true
var i=0
repeat(ds_list_size(order))
{
	var inst=order[| i]
	if instance_exists(inst) and inst.stat_altering=true
	{
		success=false
	}

	i++
}

//if nobody is altering stats...
if success=true
	{
		stat_alt=false
		
		//reset DMG --- all DMG if eventually a ds list
		DMG=0
			
		//enemies gone?
		if instance_number(obj_enemy_combatant_parent)=0
			{
				phase=END
				event_user(phase)
				exit
			}
		
		//if kai's here and there are enemies, the battle rages on!
		
		
		//will only go to the next thing if not currently in a timetable
		if !execute_action_tmtb {
			
			//set phase
			if phase = BTLFLD_EVENT
				{
					phase = BTLFLD_EVENT
				}
			if phase = STATUS_FX
				{
					phase = STATUS_FX
				}
			if phase = ACTION
				{
					phase = STATUS_FX
				}
			alarm[0]=1
			
		}
		
		
	}
		


