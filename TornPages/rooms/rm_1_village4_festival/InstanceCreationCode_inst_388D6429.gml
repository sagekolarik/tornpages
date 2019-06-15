/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_rescued_tuppy)=false {
	instance_destroy(); exit
}

special_instructions=spinst_npc_create_cutscene
	cutscene=ctscn_wrld1_confront_galinda

name_banner="DAGROMM"



/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_dagromm_idle_right
sprite[UP]=spr_dagromm_idle_up
sprite[LEFT]=spr_dagromm_idle_left
sprite[DOWN]=spr_dagromm_idle_down
sprite[WALKING_RIGHT]=spr_dagromm_walking_right
sprite[WALKING_LEFT]=spr_dagromm_walking_left
sprite[WALKING_UP]=spr_dagromm_walking_up
sprite[WALKING_DOWN]=spr_dagromm_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false