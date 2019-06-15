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



text[0]="I don't even know what I'm in line for."
text[1]="I just saw this line and thought it was exciting."

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_littleboi_idle_right
sprite[UP]=spr_littleboi_idle_up
sprite[LEFT]=spr_littleboi_idle_left
sprite[DOWN]=spr_littleboi_idle_down
sprite[WALKING_RIGHT]=spr_littleboi_walking_right
sprite[WALKING_LEFT]=spr_littleboi_walking_left
sprite[WALKING_UP]=spr_littleboi_walking_up
sprite[WALKING_DOWN]=spr_littleboi_walking_down

//set direction NPC is facing
facing=UP
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true