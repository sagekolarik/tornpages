if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy()
	exit
}

text[0]="You're gonna be a real warrior tomorrow, Kai!"
text[1]="I wanna be as strong as you when I get older."
text[2]="Will you teach me?"

//new dialogue
var page=0 
text2[page++]="I've already been practicing fighting with a staff like you."
text2[page++]="Can you show me some of your moves sometime?"
ds_list_add(dialogue_options,text2)
/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_dreadboi_idle_right
sprite[UP]=spr_dreadboi_idle_up
sprite[LEFT]=spr_dreadboi_idle_left
sprite[DOWN]=spr_dreadboi_idle_down
sprite[WALKING_RIGHT]=spr_dreadboi_walking_right
sprite[WALKING_LEFT]=spr_dreadboi_walking_left
sprite[WALKING_UP]=spr_dreadboi_walking_up
sprite[WALKING_DOWN]=spr_dreadboi_walking_down

//set direction NPC is facing
facing=UP
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false

/*/////////////////////////////////////////////////////////////////

		IDLE BEHAVIOR

/*/////////////////////////////////////////////////////////////////
var i=0
wait_time=5
spd=3
repeat(2) {
npc_idle_behavior[| i++]=WALKING_DOWN
}
repeat(3) {
npc_idle_behavior[| i++]=WALKING_RIGHT
}
repeat(2) {
npc_idle_behavior[| i++]=WALKING_UP
}
repeat(3) {
npc_idle_behavior[| i++]=WALKING_LEFT
}

var s=0
repeat(i) {
	npc_idle_behavior_sprite[| s++]=noone
}