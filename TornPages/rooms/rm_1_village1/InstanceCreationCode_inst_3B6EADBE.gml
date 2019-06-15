/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}


text[0]="I don't know how I feel about the warrior ceremony."
text[1]="Forcing young boys into danger all alone, just to test them?"
text[2]="There has to be another way..."
text[3]="Like an intensive oral exam."
text[4]="Or a competitive game of checkers."
text[5]="Obviously, not those things..."
text[6]="Just something LIKE those things." 

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
return_to_ogsprite=true

