//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	//establish variables for actors
	DAGROMM = scr_cutscene_establish_actor("DAGROMM")
	GALINDA = scr_cutscene_establish_actor("GALINDA")
	TUPPY = scr_cutscene_establish_actor("TUPPY")
	GUARD = scr_cutscene_establish_actor("GUARD")
	PLAYER=obj_player
	
	event_user(ADVANCE)
	
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
		scr_change_song(bgm_nothing,0.02)
		
		scr_face_towards_instance(PLAYER,GALINDA)
		scr_face_towards_instance(TUPPY,GALINDA)
		scr_face_towards_instance(GALINDA,TUPPY)
		
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="TUPPY!"
}	


if juncture=i++ {
	var xx = GALINDA.x - 16
	var yy = GALINDA.y + 0
	scr_cutscene_move(TUPPY,CORRECT_SPRITE,xx,yy,false,3)
}
	
if juncture=i++ {
		scr_cutscene_create_message(TUPPY,DIALOGUE,0)
		message.text[0]="Mommy, it was so scary!"
		message.text[1]="I was attacked by a monster out there!"
}	

if juncture=i++ {
		scr_cutscene_move(PLAYER,CORRECT_SPRITE,106,392,false,3)
}

if juncture=i++ {
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="Why would you run off?! You know better!"
		message.text[1]="You almost gave me a heart attack!"
}	

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
		scr_cutscene_create_message(TUPPY,DIALOGUE,0)
		message.text[0]="I was..."
		message.text[1]="I was kidnapped."
		message.spd=0.5
}

if juncture=i++ {
	scr_face_towards_instance(PLAYER,TUPPY)
	scr_face_towards_instance(TUPPY,PLAYER)
	scr_cutscene_wait(30)
	scr_change_song(bgm_unsettling,0.05)
	
}

if juncture=i++ {
		scr_cutscene_create_message(TUPPY,DIALOGUE,0)
		message.text[0]="By his friend."
}	
if juncture=i++ {
		scr_cutscene_create_message(TUPPY,DIALOGUE,0)
		message.text[0]="Gumper."
		message.size=2
}	

if juncture=i++ {
	scr_cutscene_create_message(TUPPY,DIALOGUE,0)
	message.text[0]="I screamed and I cried. But he just kept dragging me."
}	

if juncture=i++ {
	scr_face_towards_instance(TUPPY,GALINDA)
	scr_cutscene_create_message(TUPPY,DIALOGUE,0)
	message.text[0]="He wouldn't say anything."
	message.text[1]="He just smiled at me."
}

if juncture=i++ {
		scr_cutscene_create_message(GALINDA,DIALOGUE,0)
		message.text[0]="Gumper?"
		message.text[1]="But... why?"
}		

if juncture=i++ {
	
	//emote
	var t=30
	scr_cutscene_create_emote(GALINDA,spr_emote_exclamation,t)
	scr_cutscene_wait(t)
	scr_cutscene_set_sprite(GALINDA,UP,true)
}
	
if juncture=i++ {
	scr_cutscene_set_sprite(TUPPY,UP,true)
	scr_cutscene_set_sprite(PLAYER,UP,true)
	var xx = GALINDA.x - 20
	var yy = GALINDA.y - 40
	scr_cutscene_move(DAGROMM,CORRECT_SPRITE,xx,yy,false,3)

	var xx = GALINDA.x - 20
	var yy = GALINDA.y - 60
	scr_cutscene_move(GUARD,CORRECT_SPRITE,xx,yy,false,3)
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
		scr_cutscene_set_sprite(GUARD,DOWN,true)
		scr_cutscene_set_sprite(DAGROMM,UP,true)
		scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
		message.text[0]="Block the perimeter!"
		message.text[1]="No one moves until we find him."
}	

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
		scr_cutscene_create_message(GUARD,DIALOGUE,0)
		message.text[0]="Yes, sir!"
}	

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
	var xx = 10
	var yy = 482
	scr_cutscene_move(GUARD,CORRECT_SPRITE,xx,yy,false,3)
}

if juncture=i++ {
	scr_cutscene_wait(30)
	scr_cutscene_set_sprite(DAGROMM,LEFT,true)
	scr_cutscene_set_sprite(GUARD,RIGHT,true)
}

if juncture=i++ {
	var xx = GALINDA.x - 0
	var yy = GALINDA.y - 30
	scr_cutscene_move(DAGROMM,DAGROMM.sprite[WALKING_DOWN],xx,yy,false,1)
}

if juncture=i++ {
		scr_cutscene_set_sprite(DAGROMM,DOWN,true)
		scr_cutscene_set_sprite(PLAYER,RIGHT,true)
		scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
		message.text[0]="Return to your home."
}	

if juncture=i++ {
	scr_cutscene_wait(15)
}

if juncture=i++ {
		scr_cutscene_create_message(TUPPY,DIALOGUE,0)
		message.text[0]="What's going on?"
}	

if juncture=i++ {
	scr_cutscene_wait(15)
}

if juncture=i++ {
		scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
		message.text[0]="For your own safety, all villagers must return home immediately!"
}	

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_face_towards_instance(GALINDA,TUPPY)
	scr_face_towards_instance(TUPPY,GALINDA)
	scr_cutscene_create_message(GALINDA,DIALOGUE,0)
	message.text[0]="Come quickly, Tuppy."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_set_sprite(DAGROMM,LEFT,true)
	var xx = 552
	var yy = 392
	scr_cutscene_move(GALINDA,CORRECT_SPRITE,xx,yy,false,4)

	var xx = 552
	var yy = 392
	scr_cutscene_move(TUPPY,CORRECT_SPRITE,xx,yy,false,4)
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	var xx = PLAYER.x - 20
	var yy = PLAYER.y - 0
	scr_cutscene_move(DAGROMM,CORRECT_SPRITE,xx,yy,false,2)
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="Kai..."
	message.text[1]="Where have you been?"
	message.text[2]="Have you seen Gumper recently?"
}

if juncture=i++ {
	scr_cutscene_wait(25)
}

if juncture=i++ {
	scr_cutscene_set_sprite(DAGROMM,RIGHT,true)
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="..."
	message.text[1]="I'm afraid I have some bad news."
}

if juncture=i++ {
	scr_cutscene_wait(25)
}

if juncture=i++ {
	scr_cutscene_set_sprite(DAGROMM,LEFT,true)
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="But maybe you knew that already."
	message.text[1]="You need to come with me."
	
}
if juncture=i++ {
	set_plotvar(plotvar.wrld1_interrogation,true)
	event_user(ADVANCE)
}

if juncture=i++ {
	
	if room!=rm_1_village3 {
	
		var xx = 552
		var yy = 392
		scr_cutscene_move(DAGROMM,DAGROMM.sprite[WALKING_RIGHT],xx,yy,false,2)

		var xx = 150
		var yy = 392
		scr_cutscene_move(PLAYER,PLAYER.sprite[WALKING_RIGHT],xx,yy,false,2)
		
		scr_room_transition_fadeout(rm_1_village3,c_black,0.02)
	}
	
	
	if room=rm_1_village3 {
		//position player/partner in right spot
		PLAYER.x=535
		PLAYER.y=432
		scr_cutscene_set_sprite(PLAYER,UP,true)
		event_user(ADVANCE)
	}
	
}

//end
if juncture=i++ or skipped {
	
	instance_destroy()
}