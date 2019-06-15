/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}


text[0]="Grown-ups stink! They ruin EVERYTHING!"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_otherboi_idle_right
sprite[UP]=spr_otherboi_idle_up
sprite[LEFT]=spr_otherboi_idle_left
sprite[DOWN]=spr_otherboi_idle_down
sprite[WALKING_RIGHT]=spr_otherboi_walking_right
sprite[WALKING_LEFT]=spr_otherboi_walking_left
sprite[WALKING_UP]=spr_otherboi_walking_up
sprite[WALKING_DOWN]=spr_otherboi_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=false
return_to_ogsprite=false