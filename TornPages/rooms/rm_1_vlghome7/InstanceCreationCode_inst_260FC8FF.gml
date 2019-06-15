/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=false {

text[0]="Welcome, Kai."
text[1]="You're always welcome to peruse my collection."

//new dialogue
var page=0 
text2[page++]="Have you ever read 'The Forgotten King'?"
text2[page++]="It's an absolutely fascinating read."
text2[page++]="Fictional, of course, but still fascinating."
ds_list_add(dialogue_options,text2)

}

if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	text[0]="The festival?"
	text[1]="Why would I go to the festival?"
	text[2]="I have books!"
}

if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	text[0]="I heard something happened to the chief? How tragic!"
	text[1]="You should return home!"
	text[2]="It's best to grab a good book and get your mind off of the situation."
}

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_anotherwoman_idle_right
sprite[UP]=spr_anotherwoman_idle_up
sprite[LEFT]=spr_anotherwoman_idle_left
sprite[DOWN]=spr_anotherwoman_idle_down
sprite[WALKING_RIGHT]=spr_anotherwoman_walking_right
sprite[WALKING_LEFT]=spr_anotherwoman_walking_left
sprite[WALKING_UP]=spr_anotherwoman_walking_up
sprite[WALKING_DOWN]=spr_anotherwoman_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false