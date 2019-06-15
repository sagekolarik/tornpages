if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true
{instance_destroy(); exit}

text[0]="Kai!"
text[1]="Tomorrow, you'll finally be one of us!"
text[2]="You'll journey to the Sanctuary of the Beast and retrieve a bone for your necklace."
text[3]="That's the mark of an Akhe warrior."
text[4]="Don't worry, you'll be fine. It's easy!"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_bigboi_idle_right
sprite[UP]=spr_bigboi_idle_up
sprite[LEFT]=spr_bigboi_idle_left
sprite[DOWN]=spr_bigboi_idle_down
sprite[WALKING_RIGHT]=spr_bigboi_walking_right
sprite[WALKING_LEFT]=spr_bigboi_walking_left
sprite[WALKING_UP]=spr_bigboi_walking_up
sprite[WALKING_DOWN]=spr_bigboi_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false