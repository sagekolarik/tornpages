///scr_change_song, song, fadeoutamount

///@arg0 song
///@arg1 fadeooutamount

with obj_audio
{
	var song = argument0
	fadeoutamount = argument1
	
	//set BGM
	new_song=song

	//make sure song isn't already playing
	if audio_is_playing(song) {exit}
	
	alarm[0]=1
	
}
