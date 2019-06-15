/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}

var page=0 
text[page++]="TUPPY is missing?!"
text[page++]="Well sound the alarm!"
text[page++]="..."
text[page++]="That sounded a lot less insensitive in my head."


/*/////////////////////////////////////////////////////////////////

		SPRITES - NIGHT

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
facing=LEFT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////

face_when_talking=true
return_to_ogsprite=false