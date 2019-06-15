
var page=0 
text[page++]="I'm preparing food for the festivitival tonight."
text[page++]="I love working with fresh fluffer meat."

if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	var page=0 
	text[page++]="Nope, I haven't seen TUPPY since this morning."
	text[page++]="If you find him, make him try some of my Fluffer stew!"
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
facing=RIGHT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////

face_when_talking=true
return_to_ogsprite=false