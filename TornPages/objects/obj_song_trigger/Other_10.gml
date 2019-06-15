//trigger cutscene

if instance_exists(obj_bgm) {
	
	obj_bgm.song=song
	
	script_execute(scr_change_song,song,fadeoutamount)
	
}

if destroy_after_trigger=true {
	
	ds_map_add(global.remembered_info,script_execute(scr_save_key),1)

	instance_destroy()

}


