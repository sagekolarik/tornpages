/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy()
	exit
}

if check_plotvar(plotvar.wrld1_met_buskey)=false {
	instance_destroy()
	exit
}


text[0]="I'm annoyed that this is slow. I would confront the shop owner but I tend to be passive aggressive."
text[1]="I'd rather make my point by scowling and tapping my foot."

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_yetanotherwoman_idle_right
sprite[UP]=spr_yetanotherwoman_idle_up
sprite[LEFT]=spr_yetanotherwoman_idle_left
sprite[DOWN]=spr_yetanotherwoman_idle_down
sprite[WALKING_RIGHT]=spr_yetanotherwoman_walking_right
sprite[WALKING_LEFT]=spr_yetanotherwoman_walking_left
sprite[WALKING_UP]=spr_yetanotherwoman_walking_up
sprite[WALKING_DOWN]=spr_yetanotherwoman_walking_down

//set direction NPC is facing
facing=UP
sprite_index=sprite[facing]

//INSTRUCTIONS//

face_when_talking=true
return_to_ogsprite=true