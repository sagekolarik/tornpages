/*/////////////////////////////////////////////////
	PARTNERS
/*/////////////////////////////////////////////////

if object_index=obj_partner_parent {
	
	if obj_party_stats.party[| 1]="Edgar" {
	
		follow_queue_size=11

	}

	if obj_party_stats.party[| 1]="Gumper" {
	
		follow_queue_size=8

	}
}

/*/////////////////////////////////////////////////
	NPCS
/*/////////////////////////////////////////////////

if object_index = obj_npc_follow {
	
	if name_banner="TUPPY" {
		
		follow_queue_size=13
		
		//if you rescued him, he follows much more closely behind
		if check_plotvar(plotvar.wrld1_rescued_tuppy) {
			follow_queue_size=7
		}
	}
}