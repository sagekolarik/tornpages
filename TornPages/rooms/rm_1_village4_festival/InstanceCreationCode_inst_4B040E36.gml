/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
scr_destroy_if_plotvar(plotvar.wrld1_rescued_tuppy,true)

//Did it survive?
if !instance_exists(id) {exit}

/*/////////////////////////////////////////////////////////////////
		TEXT
/*/////////////////////////////////////////////////////////////////

text[0]="Do you think I could run through that fire fast enough that it wouldn't burn me?"
text[1]="I'm a pretty fast kid."


/*/////////////////////////////////////////////////////////////////
		SPRITES
/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_littleboi_walking_right
sprite[UP]=spr_littleboi_walking_up
sprite[LEFT]=spr_littleboi_walking_left
sprite[DOWN]=spr_littleboi_walking_down
sprite[WALKING_RIGHT]=spr_littleboi_walking_right
sprite[WALKING_LEFT]=spr_littleboi_walking_left
sprite[WALKING_UP]=spr_littleboi_walking_up
sprite[WALKING_DOWN]=spr_littleboi_walking_down

//set direction NPC is facing
facing=RIGHT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=true

/*/////////////////////////////////////////////////////////////////

		IDLE BEHAVIOR

/*/////////////////////////////////////////////////////////////////
var i=0
wait_time=5
spd=3
repeat(11) {
npc_idle_behavior[| i++]=WALKING_DOWN
}
repeat(16) {
npc_idle_behavior[| i++]=WALKING_RIGHT
}
repeat(11) {
npc_idle_behavior[| i++]=WALKING_UP
}
repeat(16) {
npc_idle_behavior[| i++]=WALKING_LEFT
}