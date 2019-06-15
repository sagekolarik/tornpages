/*/////////////////////////////////////////////////////////////////
		VARIABLES
/*/////////////////////////////////////////////////////////////////
if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	instance_destroy(); exit
}

var page=0
text[page++]="Farming is the joy of life!"
text[page++]="It is but the pinnacle of simple living."
text[page++]="..."
text[page++]="I heard my dad say that. I don't know even know what that means."

var page=0
text2[page++]="I hate farming. Don't tell my dad."
ds_list_add(dialogue_options,text2)

/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_otherboi_idle_right
sprite[UP]=spr_otherboi_idle_up
sprite[LEFT]=spr_otherboi_idle_left
sprite[DOWN]=spr_otherboi_idle_down
sprite[WALKING_RIGHT]=spr_otherboi_walking_right
sprite[WALKING_LEFT]=spr_otherboi_walking_left
sprite[WALKING_UP]=spr_otherboi_walking_up
sprite[WALKING_DOWN]=spr_otherboi_walking_down

//set direction NPC is facing
facing=DOWN
sprite_index=sprite[facing]

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
face_when_talking=true
return_to_ogsprite=false