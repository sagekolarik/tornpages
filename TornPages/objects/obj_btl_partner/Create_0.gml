//if there's a partner, create the right one
if ds_list_size(obj_party_stats.party)>1 {
			
	if obj_party_stats.party[| 1]= "Gumper"
			{theid=obj_btl_gumper}
	if obj_party_stats.party[| 1]= "Edgar"
			{theid=obj_btl_edgar}
	if obj_party_stats.party[| 1]= "Avi"
			{theid=obj_btl_avi}
	if obj_party_stats.party[| 1]= "Mona"
			{theid=obj_btl_edgar}
	if obj_party_stats.party[| 1]= "Florance"
			{theid=obj_btl_edgar}
	if obj_party_stats.party[| 1]= "Shaide"
			{theid=obj_btl_edgar}
			
	PARTNER = instance_create_depth(x,y,depth,theid)
	obj_btl_ctrl.PARTNER = PARTNER
			
}
else {
	obj_btl_ctrl.PARTNER=noone
	PARTNER=noone
	instance_destroy()
}