text[0]="Don't allow the celebration to throw off your focus."
text[1]="There's a lot riding on tomorrow."

if check_plotvar(plotvar.wrld1_confront_galinda)=true {
	instance_destroy()
	exit
}

name_banner="CHIEF ASAF"


/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_asaf_idle_right
sprite[UP]=spr_asaf_idle_up
sprite[LEFT]=spr_asaf_idle_left
sprite[DOWN]=spr_asaf_idle_down
sprite[WALKING_RIGHT]=spr_asaf_walking_right
sprite[WALKING_LEFT]=spr_asaf_walking_left
sprite[WALKING_UP]=spr_asaf_walking_up
sprite[WALKING_DOWN]=spr_asaf_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS
/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false