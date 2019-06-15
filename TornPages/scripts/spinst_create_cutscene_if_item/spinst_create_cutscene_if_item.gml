if scr_check_item_amount(check_item,check_item_amount) {
	spinst_npc_create_cutscene()
}

else {
	special_instructions=noone
	event_user(ACTIVATE)
	special_instructions=spinst_create_cutscene_if_item
}