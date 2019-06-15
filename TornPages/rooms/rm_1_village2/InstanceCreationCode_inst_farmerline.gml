/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy()
	exit
}

if check_plotvar(plotvar.wrld1_met_buskey)=false {
	instance_destroy()
	exit
}


var page=0
text[page++]="What on earth is taking so long?"
text[page++]="Some of us have other things to do!"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_farmerman_idle_right
sprite[UP]=spr_farmerman_idle_up
sprite[LEFT]=spr_farmerman_idle_left
sprite[DOWN]=spr_farmerman_idle_down
sprite[WALKING_RIGHT]=spr_farmerman_walking_right
sprite[WALKING_LEFT]=spr_farmerman_walking_left
sprite[WALKING_UP]=spr_farmerman_walking_up
sprite[WALKING_DOWN]=spr_farmerman_walking_down

//set direction NPC is facing
facing=UP
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true