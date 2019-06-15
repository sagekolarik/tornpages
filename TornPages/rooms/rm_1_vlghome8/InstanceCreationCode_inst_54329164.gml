if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true and check_plotvar(plotvar.wrld1_rescued_tuppy)=false  {
	instance_destroy(); exit
}

if check_plotvar(plotvar.wrld1_rescued_tuppy)==false {
	var page=0
	text[page++]="I'm getting ready for the festival tonight!"
	text[page++]="Don't think too much about the ceremony tomorrow, just enjoy the party."

	var page=0
	text2[page++]="See you tonight!"
	ds_list_add(dialogue_options, text2)
}

if check_plotvar(plotvar.wrld1_rescued_tuppy)==true {
	var page=0
	text[page++]="I heard that the chief was attacked!"
	text[page++]="And by a child, no less."
	text[page++]="I had no idea Gumper was such an awful boy."

	var page=0
	text2[page++]="That Gumper child is a monster!"
	ds_list_add(dialogue_options, text2)
}


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
facing=DOWN
sprite_index=sprite[facing]