var page=0
text[page++]="Hi, Kai! You look nice today!"
text[page++]="I'm performing a special dance at the festival tonight! It's a traditional dance that honors our ancestors."
text[page++]="You'll be there to watch me, won't you, Kai?"

var page=0
text2[page++]="You'll be a great warrior, Kai! You're really strong."
text2[page++]="I feel safe with you protecting me."
ds_list_add(dialogue_options,text2)

/*/////////////////////////////////////////////////////////////////

		SPRITES

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

		INSTRUCTIONS

/*/////////////////////////////////////////////////////////////////

face_when_talking=true
return_to_ogsprite=true