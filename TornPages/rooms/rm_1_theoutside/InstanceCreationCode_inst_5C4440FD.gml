if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}

text[0]="I want mommy!"
text[1]="Please take me to mommy!"

special_instructions=spinst_npc_create_cutscene
cutscene=ctscn_wrld1_tuppy_pt1

name_banner="TUPPY"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_tuppy_walking_right_crying
sprite[UP]=spr_tuppy_walking_up
sprite[LEFT]=spr_tuppy_walking_left_crying
sprite[DOWN]=spr_tuppy_crying
sprite[WALKING_RIGHT]=spr_tuppy_walking_right_crying
sprite[WALKING_LEFT]=spr_tuppy_walking_left_crying
sprite[WALKING_UP]=spr_tuppy_walking_up
sprite[WALKING_DOWN]=spr_tuppy_walking_down_crying

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false