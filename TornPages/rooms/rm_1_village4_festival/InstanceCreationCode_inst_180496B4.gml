/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////

if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}

text[0]="TUPPY?"
text[1]="No, I haven't heard from that brat all day."
text[2]="He's probably pulling another one of his 'pranks'."

/*/////////////////////////////////////////////////////////////////

		SPRITES - NIGHT

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_bigboi_idle_right
sprite[UP]=spr_bigboi_idle_up
sprite[LEFT]=spr_bigboi_idle_left
sprite[DOWN]=spr_bigboi_idle_down
sprite[WALKING_RIGHT]=spr_bigboi_walking_right
sprite[WALKING_LEFT]=spr_bigboi_walking_left
sprite[WALKING_UP]=spr_bigboi_walking_up
sprite[WALKING_DOWN]=spr_bigboi_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false