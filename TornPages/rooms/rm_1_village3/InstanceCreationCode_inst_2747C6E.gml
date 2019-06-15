if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}

if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=false {
	var page=0 
	text[page++]="Villagers are not allowed outside without clearance from the chief."
	text[page++]="You will be cleared tomorrow if you complete the ceremony!"
	text[page++]="Good luck!"
}
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	var page=0 
	text[page++]="It's too bad I have to guard the trail during the festival."
	text[page++]="Can you save me some fluffer steaks?"
}


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
return_to_ogsprite=false