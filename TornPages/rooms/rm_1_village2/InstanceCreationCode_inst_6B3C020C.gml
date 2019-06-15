var page=0 
text[page++]="Nobody knows the truth about the beast's skeleton. No one but me!"
text[page++]="Not even the chief will admit it, but I think I know what happened."
text[page++]="My theory is that the beast created all life. And then it probably died by choking on its food or something."

//new dialogue
var page=0 
text2[page++]="You think my theory sounds ridiculous?"
text2[page++]="Well I think you're ridiculous!"
ds_list_add(dialogue_options,text2)

/*/////////////////////////////////////////////////////////////////

		SPRITES

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
facing=LEFT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////

face_when_talking=true
return_to_ogsprite=true