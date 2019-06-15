if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true and check_plotvar(plotvar.wrld1_rescued_tuppy)=false {
	instance_destroy(); exit
}

if check_plotvar(plotvar.wrld1_rescued_tuppy)=false {
	var page=0 
	text[page++]="You're a natural born warrior, Kai."
	text[page++]="Your parents would be proud."
}
if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	var page=0 
	text[page++]="He was a good chief."
	text[page++]="He was a good man."
	text[page++]="He will be missed."
}


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
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS