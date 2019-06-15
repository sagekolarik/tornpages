//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	//establish variables for actors
	GALINDA = scr_cutscene_establish_actor("GALINDA")
	GUARD = scr_cutscene_establish_actor("GUARD")
	PLAYER=obj_player
	
	event_user(ADVANCE)
	
}


if juncture=i++ {
		scr_face_towards_instance(GALINDA,PLAYER)
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="Asaf is a fool!"
		message.text[1]="By the time they find my son, he could be..."
}	

if juncture=i++ {
	scr_cutscene_wait(30)
}
	
if juncture=i++ {
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="OH TUPPY!"
		message.text[1]="I know he’s known for mischief but I’m worried that he’s in real danger!"
}	

if juncture=i++ {
	scr_cutscene_wait(30)
}

if juncture=i++ {
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[1]="...What?"
}	

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="You’re willing to go beyond the border?"
		message.text[1]="I can’t ask you to do that, Kai! I know you can handle yourself... "
		message.text[2]="But you’re forbidden to travel beyond the border."
}

if juncture=i++ {
	scr_cutscene_wait(25)
}

if juncture=i++ {
	var t=50
	scr_cutscene_create_emote(GALINDA,spr_emote_elipses,t)
	scr_cutscene_wait(t)
}

if juncture=i++ {
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="I suppose if your mind is made up, I can’t stop you."
		message.text[1]="Okay, he had to have snuck out through the corner of the meeting grounds."
		message.text[2]="The guard covering the exit over there was probably distracted today while helping set up for the festival."
		message.text[3]="That's a good place to start."
		message.text[4]="I will distract the guard while you sneak out!"
}	

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_move(GALINDA,CORRECT_SPRITE,128,206,false,4)
}

if juncture=i++ {
	scr_cutscene_set_sprite(GALINDA,DOWN,true)
	scr_cutscene_wait(10)
}

if juncture=i++ {
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="GUARD! COME QUICK! I NEED HELP!"
}	

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
		scr_cutscene_move(GUARD,CORRECT_SPRITE,128,222,false,2)
}	

if juncture=i++ {
		scr_cutscene_set_sprite(GALINDA,DOWN,true)
		scr_cutscene_set_sprite(GUARD,UP,true)
		scr_cutscene_wait(10)
}	

if juncture=i++ {
	set_plotvar(plotvar.wrld1_galindas_plan,true)
	scr_cutscene_reload_room()
}

//end
if juncture=i++ or skipped {
	
	instance_destroy()
}
