//first check for combatant's turn
if instance_exists(combatant)
{
	//if it's the same turn as it was when this instance was created
	if obj_btl_ctrl.combatant=combatant and obj_btl_ctrl.btlround=startround+roundcount
	{
		with instance
			{
				event_user(0)
			}
	}
}

//if the combatant no longer exists, the previous code won't run...
//that said, it'll just wait till the start of the next round
if obj_btl_ctrl.btlround=startround+roundcount+1
{
	with instance
		{
			event_user(0)
		}
}
