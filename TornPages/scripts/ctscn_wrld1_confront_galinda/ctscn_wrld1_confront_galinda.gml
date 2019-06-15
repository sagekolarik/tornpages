//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	//establish variables for actors
	ASAF = scr_cutscene_establish_actor("CHIEF ASAF")
	GALINDA = scr_cutscene_establish_actor("GALINDA")
	PLAYER=obj_player
	
	event_user(ADVANCE)
	
}


if juncture=i++ {
		scr_face_towards_instance(PLAYER,GALINDA)
	
		scr_cutscene_create_message(ASAF,DIALOGUE,0)
		message.text[0]="I hear what you are saying, Galinda."
		message.text[1]="But I do not want to dispatch any men outside our borders."
		message.text[2]="I am certain your son is just causing trouble again."
}	

if juncture=i++ {
	scr_cutscene_wait(20)
}
	
if juncture=i++ {
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="He has NEVER been gone this long before!"
		message.text[1]="I know he’s known for mischief but I’m worried that he’s in real danger!"
}	

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
		scr_cutscene_create_message(ASAF,DIALOGUE,0)
		message.text[0]="He will turn up soon."
		message.text[1]="We will search beyond the borders first thing in the morning if he has not been found by then."
}	

if juncture=i++ {
	scr_cutscene_wait(5)
}

if juncture=i++ {
	
	//emote
	var t=30
	scr_cutscene_create_emote(GALINDA,spr_emote_exclamation,t)
	scr_cutscene_wait(t)
	
}

if juncture=i++ {
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="MORNING?!"
		message.text[1]="Is your head screwed on straight?!"
		message.text[2]="My sweetheart could be out there all alone!"
		message.text[3]="And you want to wait?!"
}

if juncture=i++ {
	scr_cutscene_wait(5)
}

if juncture=i++ {
		scr_cutscene_create_message(ASAF,DIALOGUE,0)
		message.text[0]="Galinda, please. "
		message.text[1]="I empathize with you."
		message.text[2]="But I simply cannot justify sending several men into danger on a hunch."
		message.text[3]="Especially a hunch that involves somebone like TUPPY."
}	
		
if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
		scr_cutscene_move(ASAF,CORRECT_SPRITE,50,0,true,2)
	}
	
if juncture=i++ {
		scr_cutscene_set_sprite(ASAF,RIGHT,true)
		scr_cutscene_set_sprite(GALINDA,RIGHT,true)
	
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="ASAF, PLEASE!"
}		
	
if juncture=i++ {
	
	//emote
	var t=50
	scr_cutscene_create_emote(ASAF,spr_emote_elipses,t)
	scr_cutscene_wait(t)	
}

if juncture=i++ {
		scr_cutscene_create_message(ASAF,DIALOGUE,0)
		message.text[0]="I’m sorry, Galinda."
		message.text[1]="I have to think of everyone here."
}	

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	
		scr_cutscene_move(ASAF,CORRECT_SPRITE,210,0,true,3)
		
	}

if juncture=i++ {
	set_plotvar(plotvar.wrld1_confront_galinda,true)
	scr_cutscene_reload_room()
}

//end
if juncture=i++ or skipped {
	
	instance_destroy()
}
