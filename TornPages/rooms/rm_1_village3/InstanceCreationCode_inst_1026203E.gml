/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_rescued_tuppy)=false {
	instance_destroy(); exit
}

if check_plotvar(plotvar.wrld1_interrogation_pt2)=true {
	instance_destroy(); exit
}

name_banner="ROSAI"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_rosai_idle_right
sprite[UP]=spr_rosai_idle_up
sprite[LEFT]=spr_rosai_idle_left
sprite[DOWN]=spr_rosai_idle_down
sprite[WALKING_RIGHT]=spr_rosai_walking_right
sprite[WALKING_LEFT]=spr_rosai_walking_left
sprite[WALKING_UP]=spr_rosai_walking_up
sprite[WALKING_DOWN]=spr_rosai_walking_down

//set direction NPC is facing
facing=RIGHT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false