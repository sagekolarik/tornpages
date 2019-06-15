///scr_get_text_sound, base_sound_string, number_of_options

var base_sound_string = argument0
var number_of_options = argument1
var sound=noone

var choice = floor(random(number_of_options))+1

var i=1
repeat(number_of_options) {
	
	
	if choice=i {
		var sound_string = base_sound_string+"_"+string(i)
		sound = asset_get_index(sound_string) 
	}
	else {
		if audio_is_playing(sound) {
			audio_stop_sound(sound)
		}
	}
	
	i++
}



return sound