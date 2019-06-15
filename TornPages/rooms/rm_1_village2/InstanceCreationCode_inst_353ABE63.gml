/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}

text[0]="This here is my gang. We basically own this village."
text[1]="No grown-ups allowed!"
text[2]="Sorry, Kai. You'll be a grown-up tomorrow so you can't join."

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_dreadboi_idle_right
sprite[UP]=spr_dreadboi_idle_up
sprite[LEFT]=spr_dreadboi_idle_left
sprite[DOWN]=spr_dreadboi_idle_down
sprite[WALKING_RIGHT]=spr_dreadboi_walking_right
sprite[WALKING_LEFT]=spr_dreadboi_walking_left
sprite[WALKING_UP]=spr_dreadboi_walking_up
sprite[WALKING_DOWN]=spr_dreadboi_walking_down

//set direction NPC is facing
facing=LEFT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true