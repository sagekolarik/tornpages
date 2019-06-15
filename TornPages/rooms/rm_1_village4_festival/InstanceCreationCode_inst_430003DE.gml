/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}


text[0]="Tomorrow you'll be a grown and you'll STINK!"
text[1]="...But I guess today, you're fine."

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
facing=LEFT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=false
return_to_ogsprite=false