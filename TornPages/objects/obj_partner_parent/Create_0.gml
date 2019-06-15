event_perform_object(obj_npc, ev_create, 0)

mask_index=spr_character_mask

spd = 3
corner_slide_dis=2

last_room=noone

//direction_variables

facing=DOWN
z=0
has_shadow=true

//state
state=scr_player_active_state

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

scr_partner_follower_getsprites()

//following
follow_queue_size=10 //default, about to set for real
scr_partner_follower_gets_followqueue_size()

facing=obj_player.facing

text[0]="Hi, Kai."

name_banner=obj_party_stats.party[| 1]
font=scr_get_world_font()



