var i = 0

if juncture=i++ {
	
	//set actors
	PLAYER=obj_player
	PARTNER=PLAYER.PARTNER
		
	//set actor positions
	PLAYER.x=296
	PLAYER.y=165
	PARTNER.x=PLAYER.x + 2*tilesize
	PARTNER.y=PLAYER.y
		
	//set actor sprites
	scr_cutscene_set_sprite(PLAYER,spr_kai_fishing,false)
	scr_cutscene_set_sprite(PARTNER,spr_gumper_fishing,false)
		
	//set view
	scr_cutscene_create_camera()
	var xx = floor((obj_player.PARTNER.x+PLAYER.x)/2) //find the middle of them
	cutscene_camera.x=xx
	
	//change song
	script_execute(scr_change_song,bgm_jg_nature,0.1)
		
	event_user(ADVANCE)
		
}
if juncture=i++ {
	
	scr_cutscene_wait(80)
	
}
		
if juncture=i++ {
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="Anything yet?"
}
if juncture=i++ {
	scr_cutscene_wait(45)
}
if juncture=i++ {
		
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		var page=0
		message.text[page++]="..."
		message.text[page++]="Me neither."
		

}
if juncture=i++ {
	script_execute(scr_cutscene_wait,45)
}
	
if juncture=i++ {
		
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		var page=0
		message.text[page++]="This is weird, don't you think?"
		message.text[page++]="I mean, we've been fishing together in this exact spot since we were kids."
}
if juncture=i++ {
	scr_cutscene_wait(45)
}
	
if juncture=i++ {
		
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		var page=0
		message.text[page++]="I know, I know. Nothing is really changing."
		message.text[page++]="But tomorrow, nothing will really be the same either, y'know?"
		message.text[page++]="I guess we're officially not kids anymore."
}
if juncture=i++ {
	scr_cutscene_wait(15)
}
if juncture=i++ {
	scr_cutscene_wait(10)
	scr_cutscene_set_sprite(PARTNER,LEFT,true)
}
if juncture=i++ {
		
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)	
		var page=0
		message.text[page++]="We should head back. You and I need to train with Master Rosai one more time before our trial."
		message.text[page++]="...Let’s be honest, you’re not the one who needs it. I'm not cut out to be a great warrior."
		message.text[page++]="My goal is just to not die."
}
if juncture=i++ {
	//reset camera
	scr_cutscene_move_camera(PLAYER.x,PLAYER.y,false,1,true)
}
if juncture=i++ or skipped {
	
	//player sprite
	scr_cutscene_set_sprite(PLAYER,DOWN,true)
	scr_cutscene_set_sprite(PARTNER,LEFT,true)
	
	instance_destroy()
		
}
