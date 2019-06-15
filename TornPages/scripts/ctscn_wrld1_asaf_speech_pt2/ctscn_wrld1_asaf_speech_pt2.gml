//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	//establish variables for actors
	ASAF = scr_cutscene_establish_actor("CHIEF ASAF")
	ROSAI = scr_cutscene_establish_actor("MASTER ROSAI")
	GALINDA = scr_cutscene_establish_actor("GALINDA")
	GUARD = scr_cutscene_establish_actor("GUARD")
	PLAYER=obj_player
	
	scr_cutscene_create_camera()
	
	event_user(ADVANCE)
	
}


if juncture=i++ {
	scr_change_song(bgm_nothing,.02)
	
	scr_cutscene_create_message(GUARD,DIALOGUE,0)
	message.text[0]="TUPPY?"
	message.text[1]="Nope, haven't seen him."
	}

if juncture=i++ {
	scr_cutscene_set_sprite(PLAYER,LEFT,true)
	scr_cutscene_wait(20)
	}

if juncture=i++ {
	
	scr_cutscene_create_message(ASAF,DIALOGUE,0)
	message.text[0]="Everyone, I have one more interruption!"
	}
	
if juncture=i++ {
	scr_cutscene_set_sprite(PLAYER,RIGHT,true)
	scr_cutscene_wait(20)
	}	

if juncture=i++ {
	scr_cutscene_move_camera(272,200,false,4,true)	
}	
	
if juncture=i++ {
	
		scr_cutscene_create_message(ASAF,DIALOGUE,0)
		message.text[0]="Before we continue, I would like to publicly thank our ace warrior, Master Rosai."
		message.text[1]="40 years ago, we embarked on the trial together."
		message.text[2]="To celebrate 40 years of serving together, I asked the blacksmith to construct him a blade in the style of our ancestors."
	}
		
	
if juncture=i++ {
	
		scr_cutscene_move(ROSAI,CORRECT_SPRITE,300,152,false,2)
		
	}
	
if juncture=i++ {
	
	scr_cutscene_set_sprite(ASAF,RIGHT,true)
	scr_cutscene_set_sprite(ROSAI,LEFT,true)
	scr_cutscene_wait(20)
}

if juncture=i++ {
	
	scr_cutscene_create_message(ASAF,DIALOGUE,0)
	message.text[0]="Give her a try!"
	}
	
if juncture=i++ {
	scr_cutscene_wait(25)
}
	
if juncture=i++ {

		scr_cutscene_move(ROSAI,CORRECT_SPRITE,330,152,false,3)
	}

if juncture=i++ {
	
	scr_cutscene_set_sprite(ROSAI,spr_rosai_drawing_sword,false)
	if ROSAI.image_index>= ROSAI.image_number-1 {
			ROSAI.image_speed=0
			
			event_user(ADVANCE)
		}
}

if juncture=i++ {
	
	//emote
	var t=30
	scr_cutscene_create_emote(ROSAI,spr_emote_exclamation,t)
	scr_cutscene_wait(t)
	
}

if juncture=i++ {
	scr_cutscene_wait(5)
}

if juncture=i++ {
	scr_face_towards_instance(ROSAI,ASAF)
	scr_face_towards_instance(ASAF,ROSAI)
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="Oho! She feels just like my grandfather’s blade"
	message.text[1]="You know me all too well, you old fool."
	message.text[2]="It's hard to believe it has been 40 years."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(GALINDA,DIALOGUE,0)
	message.text[0]="Chief Asaf!!!"
}

if juncture=i++ {
		scr_face_towards_instance(ROSAI,GALINDA)
		scr_cutscene_move(GALINDA,CORRECT_SPRITE,272,176,false,3)
	}
	
if juncture=i++ {
		scr_cutscene_set_sprite(ROSAI,LEFT,true)
		scr_cutscene_set_sprite(GALINDA,UP,true)
		scr_cutscene_set_sprite(ASAF,DOWN,true)
		
		scr_cutscene_wait(10)
	}	
	

if juncture=i++ {
	scr_cutscene_create_message(GALINDA,DIALOGUE,0)
	message.text[0]="Chief, you have to help me!"
	message.text[1]="I can't find my son anywhere! Something has to be wrong!"
	message.text[2]="We need to send men out to look for him!"
}

if juncture=i++ {
	scr_cutscene_create_message(ASAF,DIALOGUE,0)
	message.text[0]="Galinda, calm down."
	message.text[1]="Come, explain to me what is happening."
}

if juncture=i++ {
	scr_cutscene_move_camera(PLAYER.x,PLAYER.y,false,6,true)
}

if juncture=i++ {
		set_plotvar(plotvar.wrld1_asaf_speech_pt2,true)
	scr_cutscene_reload_room()
}

//end
if juncture=i++ or skipped {
	
	instance_destroy()
}
