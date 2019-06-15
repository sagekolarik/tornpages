/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////

var page=0
text[page++]="This is what a slow death must feel like."

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

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true