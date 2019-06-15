/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}

var page=0
text[page++]="Good to see you, Kai!"
text[page++]="Are you ready for the big ceremony tomorrow?"
text[page++]="To think that you're already old enough to become an Akhe warrior..."
text[page++]="That makes me feel ancient!"

var page=0
text2[page++]="You kids grew up so fast!"
ds_list_add(dialogue_options,text2)

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_farmerman_idle_right
sprite[UP]=spr_farmerman_idle_up
sprite[LEFT]=spr_farmerman_idle_left
sprite[DOWN]=spr_farmerman_idle_down
sprite[WALKING_RIGHT]=spr_farmerman_walking_right
sprite[WALKING_LEFT]=spr_farmerman_walking_left
sprite[WALKING_UP]=spr_farmerman_walking_up
sprite[WALKING_DOWN]=spr_farmerman_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true

var i=0
wait_time=25
spd=1

npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=spr_farmerman_farming

npc_idle_behavior[| i]=WALKING_DOWN
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WALKING_DOWN
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=spr_farmerman_farming

npc_idle_behavior[| i]=WALKING_DOWN
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WALKING_DOWN
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=spr_farmerman_farming


npc_idle_behavior[| i]=WALKING_RIGHT
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=spr_farmerman_farming_mirrored

npc_idle_behavior[| i]=WALKING_UP
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WALKING_UP
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=spr_farmerman_farming_mirrored

npc_idle_behavior[| i]=WALKING_UP
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WALKING_UP
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=spr_farmerman_farming_mirrored

npc_idle_behavior[| i]=WALKING_LEFT
npc_idle_behavior_sprite[| i++]=noone