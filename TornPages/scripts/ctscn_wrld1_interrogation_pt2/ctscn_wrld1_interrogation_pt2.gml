//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	//establish variables for actors
	DAGROMM = scr_cutscene_establish_actor("DAGROMM")
	GUARD2 =scr_cutscene_establish_actor("GUARD")
	ASAFD = scr_cutscene_establish_actor("ASAFD")
	ROSAI = scr_cutscene_establish_actor("ROSAI")
	PLAYER=obj_player
	
	event_user(ADVANCE)
	
}

if juncture=i++ {
	scr_cutscene_set_sprite(ASAFD,spr_asaf_dead,false)
	scr_cutscene_move(DAGROMM,CORRECT_SPRITE,535,121,false,2)
	scr_cutscene_move(PLAYER,CORRECT_SPRITE,535,137,false,2)
}

if juncture=i++ {
	scr_cutscene_set_sprite(DAGROMM,LEFT,true)
	scr_cutscene_set_sprite(PLAYER,LEFT,true)
	scr_cutscene_wait(45)
}

if juncture=i++ {
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="Somebody carefully carried out a murder."
	message.text[1]="The Chief was struck down in cold blood."
	message.text[2]="Several witnesses have confirmed the attacker."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}
if juncture=i++ {
	scr_cutscene_set_sprite(DAGROMM,DOWN,true)
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="Your friend."
	message.text[1]="Gumper."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_set_sprite(DAGROMM,LEFT,true)
	scr_cutscene_create_emote(DAGROMM,spr_emote_elipses,30)
	scr_cutscene_wait(60)
}

if juncture=i++ {
	scr_cutscene_set_sprite(DAGROMM,DOWN,true)
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="Kai."
	message.text[1]="Did you know Gumper was planning this?"
}

if juncture=i++ {
	scr_cutscene_set_sprite(PLAYER,UP,true)
	var xx = DAGROMM.x + 0
	var yy = DAGROMM.y + 200
	scr_cutscene_move(ROSAI,CORRECT_SPRITE,xx,yy,false,10)
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="It's awfully bizarre that you weren't around when all of this happened."
	message.text[1]="Convenient."
	message.text[2]="What were you doing?"
}

if juncture=i++ {
	scr_cutscene_set_sprite(GUARD2,RIGHT,true)
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_emote(GUARD2,spr_emote_exclamation,30)
	scr_cutscene_wait(30)
}

if juncture=i++ {
	var xx = DAGROMM.x - 20
	var yy = DAGROMM.y + 0
	scr_cutscene_move(GUARD2,GUARD2.sprite[WALKING_RIGHT],xx,yy,false,2)
	scr_cutscene_set_sprite(DAGROMM,LEFT,true)
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(GUARD2,DIALOGUE,0)
	message.text[0]="Sir, a word."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_set_sprite(DAGROMM,DOWN,true)
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="Don't move."
	message.text[1]="You aren't going anywhere until we sort this out."
}


if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_set_sprite(PLAYER,LEFT,true)
	scr_cutscene_move(DAGROMM,DAGROMM.sprite[WALKING_LEFT],466,136,false,2)
	scr_cutscene_move(GUARD2,GUARD2.sprite[WALKING_LEFT],446,136,false,2)
}

if juncture=i++ {
	scr_cutscene_set_sprite(DAGROMM,LEFT,true)
	scr_cutscene_set_sprite(GUARD2,RIGHT,true)
	scr_cutscene_wait(30)
}

if juncture=i++ {
	scr_cutscene_create_message(GUARD2,DIALOGUE,0)
	message.text[0]="Sir, there's still no sign of him."
	message.text[1]="He's just... gone."
}

if juncture=i++ {
	scr_cutscene_wait(30)
}

if juncture=i++ {
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="How can that be possible?"
	message.text[1]="He has be hiding somewhere."
	message.text[2]="He attacked the chief minutes ago for heaven’s sake."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(GUARD2,DIALOGUE,0)
	message.text[0]="We’ve checked everywhere we can think to look."
	message.text[1]="I think we have to consider that he escaped somehow."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="Keep everything on lockdown."
	message.text[1]="I want to be certain he isn’t here before we broaden our search."
}


if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_move(ROSAI,ROSAI.sprite[WALKING_UP],512,145,false,2)
}

if juncture=i++ {
	scr_cutscene_set_sprite(ROSAI,LEFT,true)
	scr_cutscene_set_sprite(DAGROMM,RIGHT,true)
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="Dagromm, I must speak with you."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_set_sprite(ROSAI,RIGHT,true)
	scr_cutscene_create_message(ROSAI,DIALOGUE,0)
	message.text[0]="Kai, return home immediately and do not leave until instructed."
}

if juncture=i++ {
	scr_cutscene_set_sprite(ROSAI,LEFT,true)
	scr_cutscene_wait(30)
}

if juncture=i++ {
	set_plotvar(plotvar.wrld1_interrogation_pt2,true)
	scr_cutscene_reload_room()
}
	
	
//end
if juncture=i++ or skipped {
	
	instance_destroy()
}