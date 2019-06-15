var i=0

if juncture=i++ {
	
	scr_change_song(bgm_unsettling,0.05)
	PARTNER=obj_btl_ctrl.PARTNER
	PLAYER=obj_btl_ctrl.PLAYER
	
	scr_cutscene_create_camera()
	cutscene_camera.x=obj_view.x
	cutscene_camera.y=obj_view.y
	
	event_user(ADVANCE)
	
}
if juncture=i++ {
	
	scr_cutscene_wait(10)
	
}

if juncture=i++ {
	
	scr_change_zoom(100,1)
	scr_cutscene_move_camera(PLAYER.x,PLAYER.y,false,2,false)
	scr_cutscene_wait(30)
	
}

//message
if juncture=i++ {
	
	
	if instance_exists(obj_message) {instance_destroy(obj_message)}
	if !instance_exists(obj_btl_ctrl.PARTNER) {
		scr_cutscene_create_message(HEADSUP,200,"battle_defeat_message")
			message.text[0]="The world is fading away."
	}
	
	if instance_exists(PARTNER) {
		scr_cutscene_create_message(DIALOGUE,200,"battle_defeat_message_partner")
			message.name_banner=PARTNER.stats[? "NAME"]
			
		if message.name_banner="Gumper" {
			message.text[0]="Kai?! Kai! Get up, bud! Come on!"
		}
		
		if message.name_banner="Edgar" {
			message.text[0]="Kai! This is no time for a nap! Please, snap out of it!"
		}
	}
	
	event_user(ADVANCE)
	
}

if juncture=i++ {
	
	scr_cutscene_wait(wait_time)
	
}

if juncture=i++ {
	
	scr_room_transition_fadeout(rm_gameover,c_black,0.007)
	
	if instance_exists(obj_fade) and instance_exists(obj_message) {
		obj_message.depth=obj_fade.depth+1
	}
	
	if room=rm_gameover {
		event_user(ADVANCE)
	}
}

if juncture=i++ {
	
	scr_cutscene_wait(40)
	
}

//message
if juncture=i++ {
	
	
	scr_cutscene_create_message(DIALOGUE,15,"battle_defeat_message")	
		message.text[0]="Your friends need you."
		message.spd=0.5
		
}
if juncture=i++ {
	
	
	scr_cutscene_create_message(CHOICE,0,"battle_defeat_message_choice")	
		message.text[0]="Continue?"
		message.spd=0.5
		message.choice[0]="Yes"
		message.choice[1]="Quit to Main Menu"
		
	if instance_exists(obj_message) {
		if obj_message.chosen[0]=true or obj_message.chosen[1]=true {
			if obj_message.chosen[0]=true {
				//continue
				instance_destroy()
				with obj_save event_user(1)
				exit
			
			}
				
			if obj_message.chosen[1]=true {
				//quit to main menu
				instance_destroy()
				scr_room_transition_fadeout(rm_title,c_black,0.05)
				exit
			}
		}
	}
		
}

////END
if juncture=i++ {
	instance_destroy()
}