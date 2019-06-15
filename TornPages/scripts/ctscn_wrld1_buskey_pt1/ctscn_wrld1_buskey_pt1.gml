var i = 0

if juncture=i++ {
	
	BUSKEY = scr_cutscene_establish_actor("BUSKEY")

	PLAYER=obj_player
	PARTNER=obj_player.PARTNER
	
	event_user(ADVANCE)
	
}

//dialogue starts
if juncture=i++ {
		
		scr_cutscene_set_sprite(PLAYER,UP,true)
		scr_cutscene_set_sprite(PARTNER,UP,true)
		scr_cutscene_set_sprite(BUSKEY,DOWN,true)
		
		scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
		message.text[0]="Welcome to Buskey's! I've got good values and valuable goods!"
		message.text[1]="How can I help you, boys?"
	}
	
if juncture=i++ {
	
	var xx = PLAYER.x + tilesize
	var yy = PLAYER.y
	scr_cutscene_move(PARTNER,CORRECT_SPRITE,xx,yy,false,2)
		
}	
	
if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
		
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="Um, well."
	message.text[1]="I sort of, might have lost my staff and we have our big trial tomorrow."
	message.text[2]="Do you happen to have an extra?"
}

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
		
		scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
		message.text[0]="Son, I’m a businessman. I don’t have “extras” of anything."
		message.text[1]="I do have a beautifully crafted, mint condition warrior’s staff."
		message.text[2]="But it’s not an “extra”. It’s going to cost you."
	}
	
if juncture=i++ {
	scr_cutscene_wait(10)
}	

if juncture=i++ {
		
		scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		message.text[0]="But I don't have any money."
	}

if juncture=i++ {
	scr_cutscene_wait(10)
}	

if juncture=i++ {
		scr_cutscene_set_sprite(BUSKEY,UP,true)
		scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
		message.text[0]="Sorry, son, can't help you then."
	}
	
if juncture=i++ {
	scr_cutscene_wait(10)
}		

if juncture=i++ {
		
		scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		message.text[0]="Sir, please. I need a staff. I’ll do anything."
	}
	
if juncture=i++ {
	scr_cutscene_wait(10)
}		

if juncture=i++ {
	
	var t=45
	scr_cutscene_create_emote(BUSKEY,spr_emote_elipses,t)
	emote.sfx=noone
	scr_cutscene_wait(t)
	
}

if juncture=i++ {
		scr_cutscene_set_sprite(BUSKEY,DOWN,true)
		scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
		message.text[0]="I suppose there is something you could do. But I would you need you to move fast."
	}
	
if juncture=i++ {
	scr_cutscene_wait(5)
}		

if juncture=i++ {
		scr_cutscene_set_sprite(BUSKEY,RIGHT,true)
		scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
		message.text[0]="I’m running low on fruit to sell."
		message.text[1]="Fruit is basic eye candy that draws people in for business."
	}
	
if juncture=i++ {
		
		scr_cutscene_set_sprite(BUSKEY,DOWN,true)
		scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
		message.text[0]="Bring me six fruit and I’ll see what I can do."
}		
	
if juncture=i++ {
	scr_cutscene_wait(10)
}		

if juncture=i++ {
		
		scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		message.text[0]="You got it!"
	}
	
if juncture=i++ {
		
		scr_face_towards_instance(PLAYER,PARTNER)
		scr_face_towards_instance(PARTNER,PLAYER)
		scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		message.text[0]="C'mon, Kai! We can find them in no time."
	}	
	
if juncture=i++ {
		
		scr_cutscene_set_sprite(PLAYER,UP,true)
		scr_cutscene_set_sprite(PARTNER,UP,true)
		scr_cutscene_set_sprite(BUSKEY,DOWN,true)
		scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
		message.text[0]="And do it fast before I change my mind!"
		
	}	
	
if juncture=i++ {
	set_plotvar(plotvar.wrld1_met_buskey,true)
	scr_cutscene_reload_room()
}
	
//end
if juncture=i++ or skipped {
	/*
	thecounter=noone
	with obj_shop_counter {
		if shop_owner.name_banner="BUSKEY" {other.thecounter=id}
	}
	if instance_exists(thecounter) {
		with thecounter {
			special_instructions=spinst_create_cutscene_if_item
			check_item="Jungle Fruit"
			check_item_amount=6
			cutscene=ctscn_wrld1_buskey_pt2
		}
	}
	*/
	
	instance_destroy()
}	