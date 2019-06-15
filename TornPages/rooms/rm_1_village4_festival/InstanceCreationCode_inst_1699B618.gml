/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}

text[0]="I don't usually like being around adults, but the festival is always fun!"
text[1]="I guess grown-ups aren't always bad."

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_dreadsgirl_idle_right
sprite[UP]=spr_dreadsgirl_idle_up
sprite[LEFT]=spr_dreadsgirl_idle_left
sprite[DOWN]=spr_dreadsgirl_idle_down
sprite[WALKING_RIGHT]=spr_dreadsgirl_walking_right
sprite[WALKING_LEFT]=spr_dreadsgirl_walking_left
sprite[WALKING_UP]=spr_dreadsgirl_walking_up
sprite[WALKING_DOWN]=spr_dreadsgirl_walking_down

//set direction NPC is facing
facing=LEFT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true