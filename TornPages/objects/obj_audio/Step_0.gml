//MUSIC
scr_set_track_positions()

//mute
if muted=true
	{var play_volume=0}
if muted=false {
	var play_volume=bgm_volume
	if obj_pause.paused=true {
		play_volume/=2
	}
}

//VOLUME
audio_emitter_gain(global.bgm_emitter, play_volume/10) //the over 10 is because it's out of 10.
audio_emitter_gain(global.sfx_emitter, sfx_volume/10) //the over 10 is because it's out of 10.


