/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}


var page=0
text[page++]="I always look forward to this day every year."
text[page++]="There's so much excitement in the air!"
text[page++]="I can't wait for the festival tonight!"

var page=0
text2[page++]="I'll see you tonight at the festival, Kai."
text2[page++]="It'll be so much fun!"
ds_list_add(dialogue_options, text2)
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
facing=DOWN
sprite_index=sprite[facing]