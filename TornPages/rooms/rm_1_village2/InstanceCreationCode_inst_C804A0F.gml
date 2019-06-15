/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}


text[0]="I'm suggestible."
text[1]="I do whatever my friends tell me."

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_littlegirl_idle_right
sprite[UP]=spr_littlegirl_idle_up
sprite[LEFT]=spr_littlegirl_idle_left
sprite[DOWN]=spr_littlegirl_idle_down
sprite[WALKING_RIGHT]=spr_littlegirl_walking_right
sprite[WALKING_LEFT]=spr_littlegirl_walking_left
sprite[WALKING_UP]=spr_littlegirl_walking_up
sprite[WALKING_DOWN]=spr_littlegirl_walking_down

//set direction NPC is facing
facing=UP
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true