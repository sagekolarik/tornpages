//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	TUPPY = scr_cutscene_establish_actor("TUPPY")
	PLAYER = obj_player
	event_user(ADVANCE)
}

if juncture=i++ {
		
		scr_cutscene_create_message(TUPPY,DIALOGUE,0)
		message.text[0]="Don't hurt me!"
		message.size=2
	}
if juncture=i++ {
		
		scr_cutscene_move(TUPPY,TUPPY.sprite[WALKING_DOWN],0,-32,true,5)
		scr_cutscene_set_sprite(PLAYER,UP,true)
		
	}
if juncture=i++ {
	var t = 60
	scr_cutscene_create_emote(TUPPY,spr_emote_elipses,t)
	scr_cutscene_wait(t)
}

if juncture=i++ {
		
		scr_cutscene_create_message(TUPPY,DIALOGUE,0)
			var page=0
			message.text[page++]="Oh, it's you, Kai!"
			message.text[page++]="I thought you were... him..."
			message.text[page++]="I want mommy!"
			message.text[page++]="Please take me to mommy!"
			message.text[page++]="Hurry, before..."

			
	}
		
if juncture=i++ {
		scr_cutscene_set_sprite(TUPPY,RIGHT,true)
		scr_cutscene_wait(10)
	
}
if juncture=i++ {
		scr_cutscene_set_sprite(TUPPY,LEFT,true)
		scr_cutscene_wait(10)
	
}
if juncture=i++ {
		scr_cutscene_set_sprite(TUPPY,UP,true)
		scr_cutscene_wait(30)
	
}
if juncture=i++ {
		scr_cutscene_set_sprite(TUPPY,DOWN,true)
		scr_cutscene_wait(10)
	
}

if juncture=i++ {
	
	scr_cutscene_create_message(TUPPY,DIALOGUE,0)
			var page=0
			message.text[page++]="He comes back."
			message.spd=0.5
			message.size=2

			
	}


if juncture=i++ {
	
	set_plotvar(plotvar.wrld1_found_tuppy,true)
	
	
	//make new follower
	var newTUPPY = instance_create_depth(TUPPY.x,TUPPY.y,TUPPY.depth,obj_npc_follow)
	newTUPPY.sprite=TUPPY.sprite
	newTUPPY.name_banner="TUPPY"
	newTUPPY.facing=DOWN
	newTUPPY.text[0]="Take me to mommy!"
	scr_set_player_follower_followqueue(newTUPPY)
	
	with TUPPY {instance_destroy()}
	
	with obj_cutscene_trigger {
		y=504
	}
	
	instance_destroy()
		
}
