//unpause game event

		paused=false
		instance_activate_all()
		
		//fix the music
		audio_emitter_gain(global.bgm_emitter, obj_audio.bgm_volume)
		
		//change surface again
		surface_free(pause_surface)
		
		if instance_exists(child)
			{with child instance_destroy()}
			
		scr_play_sfx(sfx_deselect)
		
		
		//change display if need be
		if obj_view.display=FULLSCREEN {with obj_view {event_user(1)}}
		else {with obj_view {event_user(0)}}
