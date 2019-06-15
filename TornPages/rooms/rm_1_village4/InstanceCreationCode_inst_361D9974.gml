if check_plotvar(plotvar.wrld1_aquired_staff)=false {
var page=0 
text[page++]="The Outside is off limits."
text[page++]="Only those with clearance from the chief may venture beyond our borders."
}

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
facing=RIGHT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////

face_when_talking=true
return_to_ogsprite=false