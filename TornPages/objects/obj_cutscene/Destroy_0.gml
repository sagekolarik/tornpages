global.cutscene=false

if instance_exists(obj_player)
	{
		obj_player.state=scr_player_active_state
		if instance_exists(cutscene_camera) {
			with cutscene_camera {instance_destroy()}
		}
		obj_view.following=obj_player
		
		if instance_exists(obj_partner_parent) {
			scr_set_player_follower_followqueue(obj_partner_parent)
		}
		if instance_exists(obj_npc_follow) {
			scr_set_player_follower_followqueue(obj_npc_follow)
		}
	}
	
if never_appear_again {
	ds_map_add(global.remembered_info,script_execute(scr_save_key),1)
}

ds_list_destroy(cutscene_move_instances)
