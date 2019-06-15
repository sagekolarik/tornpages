/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}


text[0]="None of us have seen TUPPY since this morning."
text[1]="He was playing around here but he didn't mention pulling any pranks like this..."

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
face_when_talking=false
return_to_ogsprite=false