/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_rescued_tuppy)=false {
	instance_destroy(); exit
}

name_banner="TUPPY"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_tuppy_idle_right
sprite[UP]=spr_tuppy_idle_up
sprite[LEFT]=spr_tuppy_idle_left
sprite[DOWN]=spr_tuppy_idle_down
sprite[WALKING_RIGHT]=spr_tuppy_walking_right
sprite[WALKING_LEFT]=spr_tuppy_walking_left
sprite[WALKING_UP]=spr_tuppy_walking_up
sprite[WALKING_DOWN]=spr_tuppy_walking_down

//set direction NPC is facing
facing=RIGHT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true
