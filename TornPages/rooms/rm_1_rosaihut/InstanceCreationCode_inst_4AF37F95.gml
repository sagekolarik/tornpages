if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=false  {
	instance_destroy(); exit
}
if check_plotvar(plotvar.wrld1_rescued_tuppy)=true  {
	instance_destroy(); exit
}

var page=0
text[page++]="I'm gonna get strong."
text[page++]="Just you watch, Kai!"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_gumper_idle_right
sprite[UP]=spr_gumper_idle_up
sprite[LEFT]=spr_gumper_idle_left
sprite[DOWN]=spr_gumper_idle_down
sprite[WALKING_RIGHT]=spr_gumper_walking_right
sprite[WALKING_LEFT]=spr_gumper_walking_left
sprite[WALKING_UP]=spr_gumper_walking_up
sprite[WALKING_DOWN]=spr_gumper_walking_down

//set direction NPC is facing
facing=RIGHT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false

var i=0
wait_time=45
npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=spr_gumper_idle_battle

npc_idle_behavior[| i]=WALKING_RIGHT
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WALKING_RIGHT
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WALKING_RIGHT
npc_idle_behavior_sprite[| i++]=noone

npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=spr_gumper_attacking

npc_idle_behavior[| i]=WALKING_LEFT
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WALKING_LEFT
npc_idle_behavior_sprite[| i++]=noone
npc_idle_behavior[| i]=WALKING_LEFT
npc_idle_behavior_sprite[| i++]=noone


