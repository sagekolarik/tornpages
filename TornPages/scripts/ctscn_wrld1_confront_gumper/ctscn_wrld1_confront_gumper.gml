//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	//establish variables for actors
	GUMPER = scr_cutscene_establish_actor("GUMPER")
	PLAYER=obj_player
	
	scr_face_towards_instance(PLAYER,GUMPER)
	scr_cutscene_set_sprite(GUMPER,UP,true)
	
	scr_cutscene_create_camera()
	
	event_user(ADVANCE)
	
}

if juncture=i++ {
	scr_cutscene_move(PLAYER,CORRECT_SPRITE,0,-32,true,PLAYER.fast_spd)
}

if juncture=i++ {
	scr_change_zoom(70,0.5)
	scr_cutscene_move_camera(GUMPER.x,GUMPER.y,false,4,true)	
}

if juncture=i++ {
	scr_cutscene_wait(40)
	}

if juncture=i++ {
		
	
		scr_cutscene_create_message(GUMPER,DIALOGUE,0)
		message.text[0]="You know, I always had ideas about what the great beast might look like..."
		message.text[1]="Large teeth, razor sharp claws, a ferocious demon."
		message.text[2]="But these remains... They paint a much more terrifying picture than what I had in my head."
}	

if juncture=i++ {
	scr_cutscene_wait(30)
}

if juncture=i++ {
		scr_cutscene_create_message(GUMPER,DIALOGUE,0)
		message.text[0]="Asaf never told you about the weapon that was used to defeat it, did he?"
		message.text[1]="A weapon of the gods..."
}		

if juncture=i++ {
	scr_cutscene_wait(30)
	}
	
if juncture=i++ {
		scr_cutscene_create_message(GUMPER,DIALOGUE,0)
		message.text[0]="And the idiot kept it locked away."
		message.text[1]="So arrogant."
		message.text[2]="Hiding a force that could permanently keep our village safe."
		message.text[3]="With it, we could exterminate all monsters. We could live in peace."
}			
	
if juncture=i++ {
		scr_cutscene_create_message(GUMPER,DIALOGUE,0)
		message.text[0]="He manipulated us. He kept us in the dark so he could control us."
		message.text[1]="But now..."
}		

if juncture=i++ {
	scr_cutscene_wait(15)
	}
	
if juncture=i++ {
		scr_change_zoom(120,8)
		scr_cutscene_set_sprite(GUMPER,spr_evilgumper_idle,false)
		
		scr_cutscene_create_message(GUMPER,DIALOGUE,0)
		message.text[0]="Now, we’re free to choose our own path."
}			

if juncture=i++ {
		scr_cutscene_create_message(GUMPER,DIALOGUE,0)
		message.text[0]="..."
		message.text[1]="..."
		message.text[2]="I see."
		message.text[3]="Then you've already chosen yours."
}	
if juncture=i++ {
	scr_cutscene_set_sprite(GUMPER,spr_evilgumper_idle_glowing,false)
	scr_cutscene_wait(15)
}

if juncture=i++ {
	scr_cutscene_move(GUMPER,spr_evilgumper_idle_glowing,PLAYER.x,PLAYER.y,false,6)
	scr_cutscene_move_camera(PLAYER.x,PLAYER.y,false,6,false)
}

if juncture=i++ {
	scr_cutscene_create_message(GUMPER,DIALOGUE,0)
	message.text[0]="So this is where the battle happens."
	message.text[1]="Can't wait!"
	message.name_banner="The Developers."
}

//end
if juncture=i++ or skipped {
	
	instance_destroy()
}
