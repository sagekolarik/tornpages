//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	TUPPY = obj_npc_follow
	//the_y = TUPPY.y
	
	CREATURE = instance_create_depth(TUPPY.x+96,TUPPY.y,TUPPY.depth,obj_shadowcreature_wrldobj)
	CREATURE.triggered=true
	CREATURE.spd=8
	CREATURE.leave_direction=LEFT
	CREATURE.image_xscale=1.5
	PLAYER = obj_player	
	event_user(ADVANCE)
}

if juncture=i++ {
		scr_cutscene_move(CREATURE,noone,TUPPY.x,TUPPY.y,false,14)
	}
	
if juncture=i++ {
		
		with TUPPY instance_destroy()
		event_user(ADVANCE)
		
	}
if juncture=i++ {
		scr_cutscene_move(CREATURE,noone,-96,0,true,10)
	}
if juncture=i++ {
		with CREATURE {instance_destroy()}
		scr_cutscene_wait(5)
	}
if juncture=i++ {
		scr_cutscene_set_sprite(PLAYER,UP,true)
		scr_cutscene_wait(45)
	}
	
if juncture=i++ {
		scr_cutscene_set_sprite(PLAYER,LEFT,true)
		script_execute(scr_cutscene_wait,5)
	}
if juncture=i++ {
		scr_cutscene_set_sprite(PLAYER,RIGHT,true)
		scr_cutscene_wait(5)
	}
if juncture=i++ {
		scr_cutscene_set_sprite(PLAYER,UP,true)
		scr_cutscene_wait(5)
	}

if juncture=i++ {
	
	held_tuppy = instance_create_depth(obj_player.x-96,the_y-32,depth,obj_shadowCREATURE_wrldobj)
	held_tuppy.sprite_index=spr_tuppy_being_held
	held_tuppy.dont_fade=true
	held_tuppy.image_alpha=1
	
	CREATURE = instance_create_depth(obj_player.x-96,the_y-32,depth,obj_shadowCREATURE_wrldobj)
	CREATURE.leave_direction=LEFT
	CREATURE.sprite_index=spr_shadowCREATURE_body_holding
	CREATURE.image_xscale=1.5
	CREATURE.dont_fade=true
	CREATURE.image_alpha=1
		
	juncture++
}
if juncture=i++ {
	scr_cutscene_move(CREATURE,noone,PLAYER.x,CREATURE.y,false,14)
	scr_cutscene_move(held_tuppy,noone,PLAYER.x,CREATURE.y,false,14)
}
if juncture=i++ {
	CREATURE.image_xscale=1
	scr_cutscene_wait(45)
}

if juncture=i++ {
	scr_cutscene_create_message(TUPPY,DIALOGUE,1)
	message.text[0]="AHHHHHHHHHHHHHHH!"
	message.size=2
	message.spd=2
		
}

if juncture=i++ {
	scr_cutscene_move(PLAYER,CORRECT_SPRITE,CREATURE.x,CREATURE.y+10,false,PLAYER.fast_spd)
}

if juncture=i++ {
	
	//make battle
	global.btlcd=102
	instance_create_depth(x,y,depth,obj_btl_fade)
	
	with CREATURE {instance_destroy()}
	with held_tuppy {instance_destroy()}
	
	ctscn_inst = instance_create_depth(obj_player.x,obj_player.y,depth,obj_cutscene_trigger)
	ctscn_inst.cutscene=ctscn_wrld1_tuppy_pt3
	ctscn_inst.image_xscale=2
	ctscn_inst.image_yscale=2
	
	instance_destroy()
}




