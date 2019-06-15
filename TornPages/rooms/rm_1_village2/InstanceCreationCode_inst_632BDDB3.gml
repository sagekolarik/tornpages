if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=false {
	text[0]="Life in this village can be so boring."
	text[1]="Somedays, I think about ending it all."
	text[2]="...What? I meant ending my boredom! Why did you have to make that so dark?"

	//new dialogue
	var page=0 
	text2[page++]="Maybe I just need to get married. It should be easy, I'm basically the prettiest girl in this village."
	text2[page++]="...Sorry, you're a little young for me, honey."
	ds_list_add(dialogue_options,text2)
}

if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true and check_plotvar(plotvar.wrld1_rescued_tuppy)=false {
	text[0]="You look sweaty, sweety."
	text[1]="You should get a bath or something."
}

if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	text[0]="You need to get inside, Kai!"
}

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_yetanotherwoman_idle_right
sprite[UP]=spr_yetanotherwoman_idle_up
sprite[LEFT]=spr_yetanotherwoman_idle_left
sprite[DOWN]=spr_yetanotherwoman_idle_down
sprite[WALKING_RIGHT]=spr_yetanotherwoman_walking_right
sprite[WALKING_LEFT]=spr_yetanotherwoman_walking_left
sprite[WALKING_UP]=spr_yetanotherwoman_walking_up
sprite[WALKING_DOWN]=spr_yetanotherwoman_walking_down

//set direction NPC is facing
facing=UP
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false