event_perform_object(obj_npc, ev_create, 0)

mask_index=spr_character_mask
spd = 3
corner_slide_dis=2

//

last_room=noone

//direction_variables

facing=DOWN


//sprite variables
sprite[RIGHT]=spr_tuppy_crying
sprite[UP]=spr_tuppy_idle_up
sprite[LEFT]=spr_tuppy_crying
sprite[DOWN]=spr_tuppy_crying
sprite[WALKING_RIGHT]=spr_tuppy_walking_right_crying
sprite[WALKING_LEFT]=spr_tuppy_walking_left_crying
sprite[WALKING_UP]=spr_tuppy_walking_up
sprite[WALKING_DOWN]=spr_tuppy_walking_down_crying
sprite[ATTACKING_RIGHT]=spr_tuppy_crying
sprite[VICTORY]=spr_tuppy_crying
sprite[HURT_RIGHT]=spr_tuppy_crying

//following
name_banner="TUPPY"
font=scr_get_world_font()
text[0]="Hi."
follow_queue_size=10 //default, about to set for real
scr_partner_follower_gets_followqueue_size()
facing=obj_player.facing

if instance_exists(obj_player) {
	scr_set_player_follower_followqueue(id)
}

