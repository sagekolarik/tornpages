//cutscene junctures... run in the step event
var i = 0

if juncture=i++ { //init
	
	GUMPER = instance_create_depth(920,600,depth,obj_npc)
	with GUMPER {
		sprite[RIGHT]=spr_gumper_idle_right
		sprite[UP]=spr_gumper_idle_up
		sprite[LEFT]=spr_gumper_idle_left
		sprite[DOWN]=spr_gumper_idle_down
		sprite[WALKING_RIGHT]=spr_gumper_walking_right
		sprite[WALKING_LEFT]=spr_gumper_walking_left
		sprite[WALKING_UP]=spr_gumper_walking_up
		sprite[WALKING_DOWN]=spr_gumper_walking_down
	}
	
	PLAYER = obj_player
	
	scr_face_towards_instance(PLAYER,GUMPER)
	scr_cutscene_set_sprite(GUMPER,LEFT,true)
	
	scr_cutscene_create_camera()
	
	event_user(ADVANCE)
}

if juncture=i++ {
	scr_cutscene_move_camera(820,592,false,4,true)
}
if juncture=i++ {
	scr_cutscene_wait(15)
}
if juncture=i++ {
	scr_cutscene_set_sprite(GUMPER,UP,true)
	scr_cutscene_wait(10)
}
if juncture=i++ {
	scr_cutscene_set_sprite(GUMPER,DOWN,true)
	scr_cutscene_wait(10)
}
if juncture=i++ {
	scr_cutscene_set_sprite(GUMPER,LEFT,true)
	scr_cutscene_wait(10)
}
if juncture=i++ {
	scr_cutscene_set_sprite(GUMPER,RIGHT,true)
	scr_cutscene_wait(10)
}
if juncture=i++ {
	scr_cutscene_move_camera(820,592,false,6,true)
}

if juncture=i++ {
	
	with GUMPER {instance_destroy()}
	
	instance_destroy()
		
}
