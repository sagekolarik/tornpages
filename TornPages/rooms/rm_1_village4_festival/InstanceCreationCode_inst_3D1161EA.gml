/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}

var page=0
text[page++]="I'll be performing my dance soon!"
text[page++]="Don't miss it, okay?"

/*/////////////////////////////////////////////////////////////////

		SPRITES-NIGHT

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_youngwoman_idle_right
sprite[UP]=spr_youngwoman_idle_up
sprite[LEFT]=spr_youngwoman_idle_left
sprite[DOWN]=spr_youngwoman_idle_down
sprite[WALKING_RIGHT]=spr_youngwoman_walking_right
sprite[WALKING_LEFT]=spr_youngwoman_walking_left
sprite[WALKING_UP]=spr_youngwoman_walking_up
sprite[WALKING_DOWN]=spr_youngwoman_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		IDLE BEHAVIOR

/*/////////////////////////////////////////////////////////////////
var i=0
wait_time=2
npc_idle_behavior[| i]=WAIT
npc_idle_behavior_sprite[| i++]=spr_youngwoman_dancing