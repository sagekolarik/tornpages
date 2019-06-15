var my_key = script_execute(scr_save_key)

		if !ds_map_exists(global.remembered_info,my_key) {
			var y_offset=0
		}
	
		else {
			var number_of_times_spoken_to = global.remembered_info[? my_key]
			var y_offset=number_of_times_spoken_to
		}

cutscene_inst=instance_create_depth(xstart,ystart+y_offset,-ystart,obj_cutscene)
if instance_exists(cutscene_inst) {
	cutscene_inst.cutscene=cutscene
	special_instructions=noone
}