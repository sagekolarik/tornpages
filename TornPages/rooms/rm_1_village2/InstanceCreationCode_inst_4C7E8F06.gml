if check_plotvar(plotvar.wrld1_met_buskey)=false {

	special_instructions=spinst_npc_create_cutscene
	cutscene=ctscn_wrld1_buskey_pt1
	
	var page=0
	text[page++]="Don't make me rethink this deal."
	text[page++]="Hurry up and bring me those fruits."
	
}

if check_plotvar(plotvar.wrld1_met_buskey)=true and check_plotvar(plotvar.wrld1_aquired_staff)=false {

	special_instructions=spinst_create_cutscene_if_item
	check_item="Jungle Fruit"
	check_item_amount=6
	cutscene=ctscn_wrld1_buskey_pt2

	var page=0
	text[page++]="No fruit, no staff!"
	text[page++]="Hurry up and bring me those six fruits."

}

if check_plotvar(plotvar.wrld1_aquired_staff)=true {
	var page=0
	text[page++]="It's been a pleasure doing business with you boys."
	text[page++]="Now buy something or go away. Preferably both."
}

shop_owner=noone
if place_meeting(x,y-tilesize,obj_npc) {
	 shop_owner = instance_nearest(x,y-tilesize,obj_npc)
}