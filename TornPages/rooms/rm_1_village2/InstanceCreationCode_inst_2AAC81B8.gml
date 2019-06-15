var page=0 
text[page++]="New warriors have to venture to the Sanctuary of the beast. It houses bones a large skeleton."
text[page++]="My husband claims the beast is some kind of god."
text[page++]="He has an imagination, I'll give him that."

//new dialogue
var page=0 
text2[page++]="I love him, but his imagination gets the better of him."
ds_list_add(dialogue_options,text2)


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
facing=RIGHT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////

face_when_talking=true
return_to_ogsprite=true