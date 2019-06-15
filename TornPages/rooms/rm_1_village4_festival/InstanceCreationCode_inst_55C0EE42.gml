/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}

var page=0
text[page++]="It's the bestest time of the year!"
text[page++]="No farm work in sight."
text[page++]="When I grow up, I want to be a hunter so I never have to see another farm again."
text[page++]="I'd rather murder my food than grow it."



/*/////////////////////////////////////////////////////////////////

		SPRITES - NIGHT

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
facing=UP
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false