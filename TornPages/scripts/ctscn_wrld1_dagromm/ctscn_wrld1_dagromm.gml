//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	//establish variables for actors
	DAGROMM = scr_cutscene_establish_actor("DAGROMM")
	PLAYER=obj_player
	PARTNER=obj_player.PARTNER
	
	scr_cutscene_create_camera()
	
	event_user(ADVANCE)
	
}
//dialogue starts
if juncture=i++ {
		
		scr_face_towards_instance(PLAYER,DAGROMM)
		scr_face_towards_instance(PARTNER,DAGROMM)
		scr_face_towards_instance(DAGROMM,PLAYER)
		
		scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
		message.text[0]="Good afternoon, you two! Where are you headed?"
		
	}

if juncture=i++ {
	
		scr_cutscene_move_camera(DAGROMM.x,DAGROMM.y+8,false,2,false)
	
		var xx = DAGROMM.x - 8
		var yy = DAGROMM.y + 16
		scr_cutscene_move(PLAYER,CORRECT_SPRITE,xx,yy,false,2)
		
		var xx = DAGROMM.x + 8
		var yy = DAGROMM.y + 16
		scr_cutscene_move(PARTNER,CORRECT_SPRITE,xx,yy,false,2)
		
	}
	
if juncture=i++ {
		
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		message.text[0]="Hey, Dagromm! We're off to train with master Rosai!"
		message.text[1]="I need to master my staff skills before-"
			
	}

if juncture=i++ {
	
	scr_change_zoom(100,12)
	
	scr_cutscene_create_emote(PARTNER,spr_emote_exclamation,30)
	scr_cutscene_move_camera(PARTNER.x,PARTNER.y,false,2,true)
	
}

//Looking for staff
if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,LEFT,true)
	scr_cutscene_wait(10)
	}

if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,RIGHT,true)
	scr_cutscene_wait(10)
	}

if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,DOWN,true)
	scr_cutscene_wait(5)
}
if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,UP,true)
	scr_cutscene_wait(5)
}
if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,DOWN,true)
	scr_cutscene_wait(5)
}
if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,RIGHT,true)
	scr_cutscene_wait(5)
}
if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,UP,true)
	scr_cutscene_wait(20)
}

if juncture=i++ {
	
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="OH NO!"
	message.text[1]="My staff! Where is it?"
	message.size=1.5
}
if juncture=i++ {
	
	//scr_change_zoom(0,6)
	
	var xx = DAGROMM.x
	var yy = DAGROMM.y+tilesize
	scr_cutscene_move_camera(xx,yy,false,2,true)
}

if juncture=i++ {
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="Uh oh. Where was the last place you had it?"
}

if juncture=i++ {
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="I uh..."
	message.text[1]="I thought I had left..."
}
if juncture=i++ {
	scr_cutscene_wait(15)
}
if juncture=i++ {
	scr_face_towards_instance(PARTNER,PLAYER)
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="Kai, do you remember where I put it?"
}
if juncture=i++ {
	scr_face_towards_instance(PLAYER,PARTNER)
	scr_cutscene_wait(30)
}
if juncture=i++ {
	scr_cutscene_create_message(DAGROMM,DIALOGUE,0)
	message.text[0]="If you can't find your old one, check the markets."
	message.text[1]="Someone's bound to have something."
	
	scr_cutscene_set_sprite(PLAYER,UP,true)
	scr_cutscene_set_sprite(PARTNER,UP,true)
}
if juncture=i++ {
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	message.text[0]="Okay, thanks!"
}
if juncture=i++ {
	scr_cutscene_wait(15)
}
if juncture=i++ {
	scr_cutscene_set_sprite(PLAYER,RIGHT,true)
	scr_cutscene_set_sprite(PARTNER,LEFT,true)
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		message.text[0]="Let's hurry to the markets in the north village!"
		message.text[1]="Master will kill me if he finds out I lost my staff..."
		message.text[2]="Again."
}
if juncture=i++ {
	
	scr_change_zoom(0,6)
	scr_cutscene_move_camera(PLAYER.x,PLAYER.y,false,2,true)
	
}
if juncture=i++ {
	set_plotvar(plotvar.wrld1_met_dagromm,true)
	scr_cutscene_reload_room()
}
//end
if juncture=i++ or skipped {
	
	instance_destroy()
}
