/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}

text[0]="All of us kids decided to put our differences aside and team up."
text[1]="Now our only rule is 'No grown-ups' instead of 'no boys'."
text[2]="One troop, united against a common foe."

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
facing=UP
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true