/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_interrogation_pt2)=false {
	instance_destroy(); exit
}

name_banner="DAGROMM"

text[0]="Do as Master Rosai says."

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
if check_plotvar(plotvar.wrld1_interrogation_pt2)=true {
	facing=RIGHT
}
if check_plotvar(plotvar.wrld1_vendetta)=true {
	facing=LEFT
}
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true