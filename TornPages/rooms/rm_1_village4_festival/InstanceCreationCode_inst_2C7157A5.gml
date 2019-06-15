if check_plotvar(plotvar.wrld1_rescued_tuppy)=true {
	instance_destroy(); exit
}


name_banner="MASTER ROSAI"

var page=0
text[page++]="Don't worry about tomorrow!"
text[page++]="Just enjoy yourself, boy!"


/*/////////////////////////////////////////////////////////////////

		SPRITES

/*/////////////////////////////////////////////////////////////////

//set the sprites here
sprite[RIGHT]=spr_rosai_idle_right
sprite[UP]=spr_rosai_idle_up
sprite[LEFT]=spr_rosai_idle_left
sprite[DOWN]=spr_rosai_idle_down
sprite[WALKING_RIGHT]=spr_rosai_walking_right
sprite[WALKING_LEFT]=spr_rosai_walking_left
sprite[WALKING_UP]=spr_rosai_walking_up
sprite[WALKING_DOWN]=spr_rosai_walking_down

//set direction NPC is facing
facing=UP

/*/////////////////////////////////////////////////////////////////

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////
return_to_ogsprite=true
sprite_index=sprite[facing]