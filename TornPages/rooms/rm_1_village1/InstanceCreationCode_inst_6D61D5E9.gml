/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////


var page=0
text[page++]="Cluck cluck cluck."

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_chickyboi_idle_right
sprite[UP]=spr_chickyboi_idle_up
sprite[LEFT]=spr_chickyboi_idle_left
sprite[DOWN]=spr_chickyboi_idle_down
sprite[WALKING_RIGHT]=spr_chickyboi_walking_right
sprite[WALKING_LEFT]=spr_chickyboi_walking_left
sprite[WALKING_UP]=spr_chickyboi_walking_up
sprite[WALKING_DOWN]=spr_chickyboi_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=false

var i=0
wait_time=60

npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=noone

npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=spr_chickyboi_pecking_down