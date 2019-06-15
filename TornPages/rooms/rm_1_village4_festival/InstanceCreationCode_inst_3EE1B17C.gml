/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=false {
	instance_destroy(); exit
}
if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}

var page=0
text[page++]="They haven't found TUPPY?"
text[page++]="I haven't seen him."
text[page++]="He'll turn up eventually when he realizes he's missing all the fun!"

/*/////////////////////////////////////////////////////////////////

		SPRITES-NIGHT

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_bigboispear_idle_right
sprite[UP]=spr_bigboispear_idle_up
sprite[LEFT]=spr_bigboispear_idle_left
sprite[DOWN]=spr_bigboispear_idle_down
sprite[WALKING_RIGHT]=spr_bigboispear_walking_right
sprite[WALKING_LEFT]=spr_bigboispear_walking_left
sprite[WALKING_UP]=spr_bigboispear_walking_up
sprite[WALKING_DOWN]=spr_bigboispear_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]