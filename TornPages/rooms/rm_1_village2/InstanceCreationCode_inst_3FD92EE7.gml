if check_plotvar(plotvar.wrld1_met_buskey)=false {
	text[0]="My husband and I run this store together."
	text[1]="I do most of the work. He's 'farming'."
	text[2]="Sure, like that's ACTUAL work."
}

if check_plotvar(plotvar.wrld1_met_buskey)=true {
	var page=0
	text[page++]="A staff?"
	text[page++]="Sorry, hun. Don't have anything of the sort."
}

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

//INSTRUCTIONS//

face_when_talking=true
return_to_ogsprite=true