name_banner="GALINDA"

if check_plotvar(plotvar.wrld1_galindas_plan)=false {
	instance_destroy()
	exit
}

if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}

text[0]="I'm telling you, I think someone is following me!"
text[1]="I need you to stay right here and don't take your eyes off me."


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

/*/////////////////////////////////////////////////////////////////
face_when_talking=false
return_to_ogsprite=true