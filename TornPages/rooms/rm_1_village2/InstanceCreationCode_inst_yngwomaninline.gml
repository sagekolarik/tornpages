/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy()
	exit
}

if check_plotvar(plotvar.wrld1_met_galinda)=false {
	instance_destroy()
	exit
}


var page=0
text[page++]="Do you think they have eggs here?"
text[page++]="I have to wait through this line just to find out."


/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_woman5_idle_right
sprite[UP]=spr_woman5_idle_up
sprite[LEFT]=spr_woman5_idle_left
sprite[DOWN]=spr_woman5_idle_down
sprite[WALKING_RIGHT]=spr_woman5_walking_right
sprite[WALKING_LEFT]=spr_woman5_walking_left
sprite[WALKING_UP]=spr_woman5_walking_up
sprite[WALKING_DOWN]=spr_woman5_walking_down

//set direction NPC is facing
facing=UP
sprite_index=sprite[facing]

//INSTRUCTIONS//

face_when_talking=true
return_to_ogsprite=true