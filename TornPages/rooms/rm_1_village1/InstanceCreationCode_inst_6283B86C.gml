/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}

var page=0 
text[page++]="Ahke women can't become warriors."
text[page++]="It's kind of unfair but I guess I don't really want to be a warrior anyway."

var page=0 
text2[page++]="Since I can't be a warrior, I guess I'll never get one of those cool bone necklaces."
ds_list_add(dialogue_options,text2)
/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_youngwoman_idle_right
sprite[UP]=spr_youngwoman_idle_up
sprite[LEFT]=spr_youngwoman_idle_left
sprite[DOWN]=spr_youngwoman_idle_down
sprite[WALKING_RIGHT]=spr_youngwoman_walking_right
sprite[WALKING_LEFT]=spr_youngwoman_walking_left
sprite[WALKING_UP]=spr_youngwoman_walking_up
sprite[WALKING_DOWN]=spr_youngwoman_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

