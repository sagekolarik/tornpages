if check_plotvar(plotvar.wrld1_galindas_plan)=true {
	instance_destroy(); exit
}

var page=0 
text[page++]="I'm sure the kid will turn up soon."

if check_plotvar(plotvar.wrld1_asaf_speech_pt2)=false {

special_instructions=spinst_npc_create_cutscene
	cutscene=ctscn_wrld1_asaf_speech_pt2
	
}

name_banner="GUARD"

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_bigboi_idle_right
sprite[UP]=spr_bigboi_idle_up
sprite[LEFT]=spr_bigboi_idle_left
sprite[DOWN]=spr_bigboi_idle_down
sprite[WALKING_RIGHT]=spr_bigboi_walking_right
sprite[WALKING_LEFT]=spr_bigboi_walking_left
sprite[WALKING_UP]=spr_bigboi_walking_up
sprite[WALKING_DOWN]=spr_bigboi_walking_down

//set direction NPC is facing
facing=RIGHT
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////

face_when_talking=true
return_to_ogsprite=false