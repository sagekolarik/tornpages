var i = 0

if juncture=i++ {
	
	GALINDA = scr_cutscene_establish_actor("GALINDA")
	PLAYER=obj_player
	PARTNER=obj_player.PARTNER
	
	event_user(ADVANCE)
}

//dialogue starts
if juncture=i++ {
	
	scr_cutscene_set_sprite(PLAYER,DOWN,true)
	scr_cutscene_set_sprite(PARTNER,DOWN,true)
	scr_cutscene_wait(5)
}

if juncture=i++ {
		
		scr_cutscene_set_sprite(GALINDA,RIGHT,true)
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="Why does he always do this..."
	}
	
if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
		
		scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		message.text[0]="Is everything okay?"
	}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
		
		scr_face_towards_instance(GALINDA,PLAYER)
		
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="Oh, good afternoon, boys!"
		message.text[1]="Have you seen my son, TUPPY?"
		message.text[2]="He was out playing earlier and was supposed to check in with me."
	}
	
if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
		
		scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		message.text[0]="Um... I think I saw him playing near the meeting grounds earlier."
	}
	
if juncture=i++ {
	scr_cutscene_wait(10)
}	

if juncture=i++ {
		
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="I’m sure he’ll return home soon then."
		message.text[1]="Would you let him know I’m looking for him if you see him around?"
		message.text[2]="I just want to be sure he’s staying out of trouble for once."
	}
	
if juncture=i++ {
	scr_cutscene_wait(10)
}	

if juncture=i++ {
		
		scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		message.text[0]="Sure, that's no problem at all."
	}
	
if juncture=i++ {
	scr_cutscene_wait(10)
}		

if juncture=i++ {
		
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="Thank you, boys."
	}
	
if juncture=i++ {
	
		var xx = PLAYER.x - 0
		var yy = PLAYER.y + 200
		scr_cutscene_move(GALINDA,CORRECT_SPRITE,xx,yy,false,4)	
}	
if juncture=i++ {
	with GALINDA {instance_destroy()}
	event_user(ADVANCE)
}


if juncture=i++ or skipped {
	
	set_plotvar(plotvar.wrld1_met_galinda,true)
	instance_destroy()
}	