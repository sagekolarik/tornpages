intro_length=0
total_length=audio_sound_length(bgm)

//specific
if bgm=bgm_village {
	intro_length=0.963
	total_length=57.112
	
}
if bgm=bgm_fighting_to_learn {
	intro_length=0.857
	total_length=55.714
	
}
if bgm=bgm_common_house {
	intro_length=0
	total_length=65.217
	
}
if bgm=bgm_gumper_theme {
	intro_length=0
	total_length=40.421
	
}
if bgm=bgm_village_night {
	intro_length=0
	total_length=46.452
	
}
if bgm=bgm_basic_victory {
	intro_length=0
	total_length=30.720
	
}
if bgm=bgm_game_battle {
	intro_length=3.429
	total_length=58.286
	
}
if bgm=bgm_jg_nature {
	intro_length=0
	total_length=27.000
}

loop_length=total_length-intro_length

//current position
var pos=audio_sound_get_track_position(bgm_sound_index)
if pos>=total_length {
	audio_sound_set_track_position(bgm_sound_index,pos-loop_length)
}