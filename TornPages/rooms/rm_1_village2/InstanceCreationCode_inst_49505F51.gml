/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy()
	exit
}

if check_plotvar(plotvar.wrld1_aquired_staff)=false {
	instance_destroy()
	exit
}


text[0]="Are you trying to cut?!"
text[1]="Don't even think about it! Back of the line!"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_woman_idle_right
sprite[UP]=spr_woman_idle_up
sprite[LEFT]=spr_woman_idle_left
sprite[DOWN]=spr_woman_idle_down
sprite[WALKING_RIGHT]=spr_woman_walking_right
sprite[WALKING_LEFT]=spr_woman_walking_left
sprite[WALKING_UP]=spr_woman_walking_up
sprite[WALKING_DOWN]=spr_woman_walking_down

//set direction NPC is facing
facing=UP
sprite_index=sprite[facing]

//INSTRUCTIONS//

face_when_talking=true
return_to_ogsprite=true