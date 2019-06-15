/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}


text[0]="I just love flowers."
text[1]="I'd plant them on my own face if I could."

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_littlegirl_idle_right
sprite[UP]=spr_littlegirl_idle_up
sprite[LEFT]=spr_littlegirl_idle_left
sprite[DOWN]=spr_littlegirl_idle_down
sprite[WALKING_RIGHT]=spr_littlegirl_walking_right
sprite[WALKING_LEFT]=spr_littlegirl_walking_left
sprite[WALKING_UP]=spr_littlegirl_walking_up
sprite[WALKING_DOWN]=spr_littlegirl_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true

var i=0
wait_time=60
spd=2

npc_idle_behavior[| i++]=WAIT
npc_idle_behavior[| i++]=WALKING_DOWN
npc_idle_behavior[| i++]=WALKING_DOWN
npc_idle_behavior[| i++]=DOWN
npc_idle_behavior[| i++]=WAIT
npc_idle_behavior[| i++]=WALKING_UP
npc_idle_behavior[| i++]=WALKING_UP
npc_idle_behavior[| i++]=UP