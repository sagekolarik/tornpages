if check_plotvar(plotvar.wrld1_rescued_tuppy)=true  {
	instance_destroy(); exit
}

if check_plotvar(plotvar.wrld1_met_asaf)=false {
var page=0
text[page++]="Ah! Gumper! Kai!"
text[page++]="You two are early for your lessons."
text[page++]="Why don't you drop by right before sunset so I can prepare a few things."
face_when_talking=true
}

if check_plotvar(plotvar.wrld1_met_asaf)=true
and check_plotvar(plotvar.wrld1_completed_tutorial_battle)=false  {
var page=0
text[page++]="Excellent work as always, Kai!"
text[page++]="I cannot wait for the day you fight alongside me as an equal."
face_when_talking=true
}


if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true  {
var page=0
text[page++]="Come on, Gumper! Put your back into it!"
face_when_talking=false
}


name_banner="Master Rosai"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_rosai_idle_right
sprite[UP]=spr_rosai_idle_up
sprite[LEFT]=spr_rosai_idle_left
sprite[DOWN]=spr_rosai_idle_down
sprite[WALKING_RIGHT]=spr_rosai_walking_right
sprite[WALKING_LEFT]=spr_rosai_walking_left
sprite[WALKING_UP]=spr_rosai_walking_up
sprite[WALKING_DOWN]=spr_rosai_walking_down

//set direction NPC is facing
facing=UP

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
return_to_ogsprite=false