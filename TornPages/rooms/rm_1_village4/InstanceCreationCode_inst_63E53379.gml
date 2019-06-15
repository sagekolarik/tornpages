/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_met_buskey)=true {
	instance_destroy(); exit
}

name_banner="TUPPY"

text[0]="I love playing over here."
text[1]="There's so much room to run around!"


/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_tuppy_idle_right
sprite[UP]=spr_tuppy_idle_up
sprite[LEFT]=spr_tuppy_idle_left
sprite[DOWN]=spr_tuppy_idle_down
sprite[WALKING_RIGHT]=spr_tuppy_walking_right
sprite[WALKING_LEFT]=spr_tuppy_walking_left
sprite[WALKING_UP]=spr_tuppy_walking_up
sprite[WALKING_DOWN]=spr_tuppy_walking_down

//set direction NPC is facing
facing=RIGHT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true


var i=0
wait_time=0
spd=3

npc_idle_behavior[| i++]=WAIT
npc_idle_behavior[| i++]=WALKING_UP
npc_idle_behavior[| i++]=WALKING_RIGHT
npc_idle_behavior[| i++]=RIGHT
npc_idle_behavior[| i++]=WAIT
npc_idle_behavior[| i++]=WALKING_UP
npc_idle_behavior[| i++]=WALKING_LEFT
npc_idle_behavior[| i++]=LEFT
npc_idle_behavior[| i++]=WAIT
npc_idle_behavior[| i++]=WALKING_LEFT
npc_idle_behavior[| i++]=WALKING_DOWN
npc_idle_behavior[| i++]=DOWN
npc_idle_behavior[| i++]=WAIT
npc_idle_behavior[| i++]=WALKING_RIGHT
npc_idle_behavior[| i++]=WALKING_DOWN
npc_idle_behavior[| i++]=DOWN