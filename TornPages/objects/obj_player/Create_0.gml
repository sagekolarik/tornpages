spd = 3
normal_spd=spd
og_fast_spd=4
fast_spd=og_fast_spd
debug_fast_spd=10
corner_slide_dis=2
climb_spd=1

mask_index=spr_character_mask


//

last_room=noone
door_number=noone
start_at_door=true

location="UNDEFINED"

//direction_variables

facing=DOWN
z=0
has_shadow=true

//state
state=scr_player_active_state

//followque
follow_queue_x = ds_queue_create()
follow_queue_y = ds_queue_create()
partner_starting_distance=12
partner_follow_queue_size=7
PARTNER=noone

name_banner=obj_party_stats.Player[? "NAME"]
font=scr_get_world_font()


//sprite variables
sprite[RIGHT]=spr_kai_idle_right
sprite[UP]=spr_kai_idle_up
sprite[LEFT]=spr_kai_idle_left
sprite[DOWN]=spr_kai_idle_down
sprite[WALKING_RIGHT]=spr_kai_walking_right
sprite[WALKING_LEFT]=spr_kai_walking_left
sprite[WALKING_UP]=spr_kai_walking_up
sprite[WALKING_DOWN]=spr_kai_walking_down
sprite[ATTACKING_RIGHT]=spr_kai_attacking
sprite[VICTORY]=spr_kai_victory
sprite[HURT_RIGHT]=spr_kai_hurt
sprite[CLIMBING]=spr_kai_climbing

//no duplicates in playtesting
if instance_number(obj_player)>=2 {instance_destroy()}







