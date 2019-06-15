		//pause game event

		paused=true
		//create a surface
		var app_w = surface_get_width(application_surface)
		var app_h = surface_get_height(application_surface)
		pause_surface=surface_create(app_w, app_h)
		surface_set_target(pause_surface)
		surface_copy(pause_surface, 0, 0, application_surface)
		surface_reset_target()
		
		
		view_surface_id[0] = pause_surface
		
		//determine menu type
		if global.cutscene=true or room=rm_btl
			{simple_menu = true}
		else
			{simple_menu = false}
		
		//deactivate and reactivate
		
		instance_deactivate_all(true)
		instance_activate_object(obj_inventory)
		instance_activate_object(obj_party_stats)
		instance_activate_object(obj_input)
		instance_activate_object(obj_audio)
		instance_activate_object(obj_save)
		instance_activate_object(obj_view)
		instance_activate_object(obj_light_ctrl)
		
		/////////////////////
		//   CREATE MENU   //
		/////////////////////
		
		
	//simple
	if simple_menu=true
	{
		//do nothing - simple menu is drawn through this object's draw gui event
	}
	else
	{
		
		child = instance_create_depth(x,y,depth,obj_ui_list)
		child.parent=id
		with child
		{
			name="pause_menu_ui"
			display_x=64
			display_y=64
			
			var i=0
			
			//assign each option a name and function
			
			
			text[i]="Party"
				var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
				ds_map_add(script_map,text[i],function_scr)
				i++
			text[i]="Items"
				var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
				ds_map_add(script_map,text[i],function_scr)
				i++
			text[i]="Options"
				var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
				ds_map_add(script_map,text[i],function_scr)
				i++
			text[i]="Quicksave"
				var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
				ds_map_add(script_map,text[i],function_scr)
				i++
			text[i]="Quit"
				var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
				ds_map_add(script_map,text[i],function_scr)
				i++
		
		//audio... bring music down and play pause sound
		audio_emitter_gain(global.bgm_emitter, obj_audio.bgm_volume/10)		
		scr_play_sfx(sfx_pause)	
		}
	}

