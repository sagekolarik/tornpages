depth=-y

script_execute(scr_zchange)
script_execute(scr_scalechange)


//script later...stat altering

if stat_altering=true
{
	var i=0
	repeat(ds_list_size(alt_stat))
	{		
		//variables for current stat
		var currstat = alt_stat[| i]
		var currgoal = alt_stat_goal[| i]
			if currgoal<0 {currgoal=0}
		var currspd = alt_stat_spd[| i]
		
		//verify goals for current stat
		if currstat="HP"
		{
			if currgoal>stats[? "HP_max"] {currgoal=stats[? "HP_max"]}
		}
		if currstat="MP"
		{
			if currgoal>stats[? "MP_max"] {currgoal=stats[? "MP_max"]}
		}
		
		//if finished altering currstat
		var checkval = abs(abs(currgoal)-abs(stats[? currstat]))
		if checkval<=abs(currspd)
			{
				//set stat to goal
				stats[? currstat]=currgoal
				
				//delete this section of the ds lists
				ds_list_delete(alt_stat, i)
				ds_list_delete(alt_stat_goal, i)
				ds_list_delete(alt_stat_spd, i)
				
			}
		//if not finished altering currstat
		else
			{
				//finally, we'll actually change the stat
				stats[? currstat]+=currspd
				
				//alter next stat (if there are multiple)
				i++
			}
		exit
	}
	//if finished
if ds_list_size(alt_stat)=0 and alt_stat!=noone
	{
		ds_list_destroy(alt_stat)
		ds_list_destroy(alt_stat_goal)
		ds_list_destroy(alt_stat_spd)
			
		alt_stat=noone
		alt_stat_goal=noone
		alt_stat_spd=noone
			
		stat_altering=false
	}

}
