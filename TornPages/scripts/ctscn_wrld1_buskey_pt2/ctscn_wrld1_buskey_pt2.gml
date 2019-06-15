var i=0

if juncture=i++ {
	BUSKEY = scr_cutscene_establish_actor("BUSKEY")
	PLAYER=obj_player
	PARTNER=obj_player.PARTNER
	event_user(ADVANCE)
}

if juncture=i++ {
	scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
	message.text[0]="What do you have for me?"
}

if juncture=i++ {
	scr_cutscene_wait(5)
}


if juncture=i++ {
	
	var xx = PLAYER.x + tilesize
	var yy = PLAYER.y
	scr_cutscene_move(PARTNER,CORRECT_SPRITE,xx,yy,false,2)
}	

if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,UP,true)
	scr_cutscene_wait(10)
}

if juncture=i++ {
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="Here!"
	message.text[1]="Six of the freshest fruit we could find."
}

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
	scr_cutscene_set_sprite(BUSKEY,UP,true)
	var t=45
	scr_cutscene_create_emote(BUSKEY,spr_emote_elipses,t)
	emote.sfx=noone
	scr_cutscene_wait(t)
}

if juncture=i++ {
	scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
	message.text[0]="Hmm..."
	message.text[1]="A little too ripe."
}

if juncture=i++ {
	scr_cutscene_set_sprite(BUSKEY,DOWN,true)
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_set_sprite(BUSKEY,DOWN,true)
	scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
	message.text[0]="But you kept your end of the deal so I'll keep mine."
	message.text[1]="Here you go."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(BUSKEY,HEADSUP,0)
	message.text[0]="Received cracked staff!"
}

if juncture=i++ {
	
	//add staff
	scr_add_item("Cracked Staff",1)
	
	//remove fruit
	scr_remove_item("Jungle Fruit",6)
	
	event_user(ADVANCE)
	
}

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="Wow, thanks!"
}

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,DOWN,true)
	var t=45
	scr_cutscene_create_emote(PARTNER,spr_emote_elipses,t)
	emote.sfx=noone
	scr_cutscene_wait(t)
}

if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,UP,true)
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="...HEY!"
	message.text[1]="This staff has a huge crack in it!"
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(BUSKEY,DIALOGUE,0)
	message.text[0]="Of course it does!"
	message.text[1]="You thought I was going to give you a perfectly good staff for only 6 pieces of fruit?"
	message.text[2]="If you ask me, you got the better end of this deal."
}

if juncture=i++ {
	scr_cutscene_wait(20)
}

if juncture=i++ {
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="Well thanks... I guess."
}

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,LEFT,true)
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="Okay, let's go see Master Rosai!"
}

if juncture=i++ {
	scr_cutscene_wait(10)
}

if juncture=i++ {
	set_plotvar(plotvar.wrld1_aquired_staff,true)
	scr_cutscene_reload_room()
}
if juncture=i++ or skipped {
	
	instance_destroy()
}