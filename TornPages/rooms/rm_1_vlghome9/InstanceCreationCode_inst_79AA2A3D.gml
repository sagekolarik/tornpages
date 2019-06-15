if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true and check_plotvar(plotvar.wrld1_rescued_tuppy)=false  {
	instance_destroy(); exit
}

if check_plotvar(plotvar.wrld1_rescued_tuppy)=false {
	var page=0
	text[page++]="I really need two jungle fruits for a dish I'm making..."
	text[page++]="but I just realized that I'm fresh out."
	text[page++]="If only I realized that BEFORE I started cooking."
}

if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	var page=0
	text[page++]="Kai, do you know why Gumper would..."
	text[page++]="would..."
	text[page++]="I can't even bring myself to say it."
}

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_biggurl_idle_right
sprite[UP]=spr_biggurl_idle_up
sprite[LEFT]=spr_biggurl_idle_left
sprite[DOWN]=spr_biggurl_idle_down
sprite[WALKING_RIGHT]=spr_biggurl_walking_right
sprite[WALKING_LEFT]=spr_biggurl_walking_left
sprite[WALKING_UP]=spr_biggurl_walking_up
sprite[WALKING_DOWN]=spr_biggurl_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]