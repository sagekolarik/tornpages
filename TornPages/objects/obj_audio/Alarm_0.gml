//if not playing music
if bgm=noone
	{
		bgm=new_song
		new_song=noone
		bgm_sound_index = audio_play_sound_on(global.bgm_emitter,bgm,true,5)
		exit
	}

//if transitioning
var gain = audio_sound_get_gain(bgm)
if gain >= fadeoutamount
	{
    audio_sound_gain(bgm, audio_sound_get_gain(bgm) - fadeoutamount, 0);
    alarm[0] = 1;
	} 
else
	{	
    audio_stop_sound(bgm)
	audio_sound_gain(bgm, 1, 0)
	
	//set new song
	bgm=new_song
	if !audio_is_playing(bgm)
		{
			bgm_sound_index = audio_play_sound_on(global.bgm_emitter,bgm,true,5)
		}
		
	new_song=noone
	}
