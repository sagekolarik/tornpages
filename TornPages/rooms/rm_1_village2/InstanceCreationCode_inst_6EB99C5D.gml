/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}


text[0]="Guys, let's do something bad!"
text[1]="Not too bad though. Like, something medium bad."
text[2]="Maybe like medium-low bad. Like not that bad but kinda bad."

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
facing=RIGHT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=false
return_to_ogsprite=false