/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy()
	exit
}

if check_plotvar(plotvar.wrld1_aquired_staff)=false {
	instance_destroy()
	exit
}


text[0]="Whatever they are selling here must be really good!"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_anotherwoman_idle_right
sprite[UP]=spr_anotherwoman_idle_up
sprite[LEFT]=spr_anotherwoman_idle_left
sprite[DOWN]=spr_anotherwoman_idle_down
sprite[WALKING_RIGHT]=spr_anotherwoman_walking_right
sprite[WALKING_LEFT]=spr_anotherwoman_walking_left
sprite[WALKING_UP]=spr_anotherwoman_walking_up
sprite[WALKING_DOWN]=spr_anotherwoman_walking_down

//set direction NPC is facing
facing=UP
sprite_index=sprite[facing]

//INSTRUCTIONS//

face_when_talking=true
return_to_ogsprite=true