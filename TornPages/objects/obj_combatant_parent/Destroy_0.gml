//if it's an enemy, add exp
if object_is_ancestor(object_index,obj_enemy_combatant_parent) and defeated=true
{
	if instance_exists(obj_btl_player)
	{
		//add exp to netexp
		obj_btl_ctrl.net_EXP+=stats[? "EXP"]
	}
}

//destroy stats map (to prevent memory leak)
ds_map_destroy(stats)


