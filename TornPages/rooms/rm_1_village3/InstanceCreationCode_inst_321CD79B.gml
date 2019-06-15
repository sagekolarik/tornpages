if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy()
	exit
}


text[0]="The other kids said that you won't have time to play with us when you become a warrior."
text[1]="But I told them that's not true. Is it, Kai?"

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
facing=UP
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		IDLE BEHAVIOR

/*/////////////////////////////////////////////////////////////////
var i=0
wait_time=5
spd=3
repeat(3) {
npc_idle_behavior[| i++]=WALKING_LEFT
}
repeat(2) {
npc_idle_behavior[| i++]=WALKING_DOWN
}
repeat(3) {
npc_idle_behavior[| i++]=WALKING_RIGHT
}
repeat(2) {
npc_idle_behavior[| i++]=WALKING_UP
}