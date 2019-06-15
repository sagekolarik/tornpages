var page=0
text[page++]="The guy in front of me can't make up his mind."
text[page++]="I have been standing here for over 20 minutes."

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
facing=UP
sprite_index=sprite[facing]

//INSTRUCTIONS//

face_when_talking=true
return_to_ogsprite=true