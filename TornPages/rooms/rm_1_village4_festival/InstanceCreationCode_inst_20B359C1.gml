/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////

if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}

text[0]="So they still can't find the kid?"
text[1]="That's rough. Let me know if you need help looking."

/*/////////////////////////////////////////////////////////////////

		SPRITES - NIGHT

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
facing=RIGHT
sprite_index=sprite[facing]