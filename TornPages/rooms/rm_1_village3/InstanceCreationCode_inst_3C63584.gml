/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}


text[0]="I love that my dad is the chief. I can basically do whatever I want. No one can do anything about it."
text[1]="Hey you, you're fired."
text[2]="Fired from what? I don't know. But you can't do anything about it. Tough luck."

//new dialogue
var page=0 
text2[page++]="Listen, don't try to change my mind. What's done is done."
text2[page++]="Stay out of my way or I'll have to fire you again."
ds_list_add(dialogue_options,text2)
/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_littleboi_idle_right
sprite[UP]=spr_littleboi_idle_up
sprite[LEFT]=spr_littleboi_idle_left
sprite[DOWN]=spr_littleboi_idle_down
sprite[WALKING_RIGHT]=spr_littleboi_walking_right
sprite[WALKING_LEFT]=spr_littleboi_walking_left
sprite[WALKING_UP]=spr_littleboi_walking_up
sprite[WALKING_DOWN]=spr_littleboi_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false