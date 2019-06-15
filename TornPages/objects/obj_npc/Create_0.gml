mask_index=spr_character_mask
depth=-y
child=noone
text[0]="Undefined"
interacting=false
desired_x=x
desired_y=y
z=0
has_shadow=true
wait_time=15

name_banner="UNDEFINED NAME"
font=scr_get_world_font()

dialogue_options=ds_list_create()
ds_list_add(dialogue_options,text)

message_type=DIALOGUE

check_item=noone
check_item_amount=0

choice[0]="Yes"
choice[1]="No"

special_instructions=noone //this can be changed to a script
cutscene=noone

facing=DOWN
face_when_talking=true
return_to_ogsprite=false
og_facing=facing
og_sprite=sprite_index

//give default sprites
sprite[RIGHT]=spr_tuppy_idle_right
sprite[UP]=spr_tuppy_idle_up
sprite[LEFT]=spr_tuppy_idle_left
sprite[DOWN]=spr_tuppy_idle_down
sprite[WALKING_RIGHT]=spr_tuppy_walking_right
sprite[WALKING_LEFT]=spr_tuppy_walking_left
sprite[WALKING_UP]=spr_tuppy_walking_up
sprite[WALKING_DOWN]=spr_tuppy_walking_down
sprite[CLIMBING]=spr_tuppy_walking_up

og_sprite=sprite[DOWN]
default_spriting=true

//idle behavior
npc_idle_behavior=ds_list_create()
npc_idle_behavior_sprite=ds_list_create()
juncture=0
moment=0
spd=2

