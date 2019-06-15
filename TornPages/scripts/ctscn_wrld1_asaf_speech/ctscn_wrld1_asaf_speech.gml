//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	//establish variables for actors
	ASAF = scr_cutscene_establish_actor("CHIEF ASAF")
	PLAYER=obj_player
	
	scr_cutscene_create_camera()
	
	event_user(ADVANCE)
	
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
		
		scr_face_towards_instance(PLAYER,ASAF)
		
		scr_cutscene_create_message(ASAF,DIALOGUE,0)
		message.text[0]="Excuse me, everyone!"
		message.text[1]="May I have your attention?"
		
}
	
if juncture=i++ {
	scr_change_zoom(80,2)
	scr_cutscene_move_camera(ASAF.x,ASAF.y,false,4,true)	
}	
	
if juncture=i++ {
		
	scr_cutscene_create_message(ASAF,DIALOGUE,0)
		message.text[0]="Good people of Ahke Village! The time of year is upon us again."
		message.text[1]="Tonight, we celebrate the faithful warriors who have protected our village for generations."
	}
	
if juncture=i++ {
	
	scr_cutscene_set_sprite(ASAF,RIGHT,true)
	
	scr_cutscene_create_message(ASAF,DIALOGUE,0)
		message.text[0]="But we also celebrate several boys who will embark on the Warrior's Trial."
	}
	
if juncture=i++ {
	
	scr_cutscene_set_sprite(ASAF,LEFT,true)
	
	scr_cutscene_create_message(ASAF,DIALOGUE,0)
		message.text[0]="Tomorrow, they begin their journey into adulthood to carry the responsibility of protecting our great village."
	}	
	
if juncture=i++ {
	
	scr_cutscene_set_sprite(ASAF,DOWN,true)
	
	scr_cutscene_create_message(ASAF,DIALOGUE,0)
		message.text[0]="They will brave the creatures that inhabit The Outside and retrieve a piece of the Great Beast's corpse."
		message.text[1]="Tomorrow, we step into the future of our village."
		message.text[2]="But tonight... We celebrate!"
	}		

if juncture=i++ {
	scr_change_zoom(0,4)
	scr_cutscene_move_camera(PLAYER.x,PLAYER.y,false,4,true)	
	set_plotvar(plotvar.wrld1_asaf_speech,true)
}

if juncture=i++ {
	scr_cutscene_reload_room()
}


//end
if juncture=i++ or skipped {
	
	instance_destroy()
}
