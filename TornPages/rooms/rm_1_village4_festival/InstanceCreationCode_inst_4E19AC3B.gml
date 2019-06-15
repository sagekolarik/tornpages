/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_rescued_tuppy)=false {
	instance_destroy(); exit
}

name_banner="GUARD"



/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_bigboispear_idle_right
sprite[UP]=spr_bigboispear_idle_up
sprite[LEFT]=spr_bigboispear_idle_left
sprite[DOWN]=spr_bigboispear_idle_down
sprite[WALKING_RIGHT]=spr_bigboispear_walking_right
sprite[WALKING_LEFT]=spr_bigboispear_walking_left
sprite[WALKING_UP]=spr_bigboispear_walking_up
sprite[WALKING_DOWN]=spr_bigboispear_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false