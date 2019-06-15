
// Inherit the parent event
event_inherited();

if global.debug {
	stats[? "ATK"]=100
	
	if keyboard_check_pressed(ord("0")) {
		stats[? "MP"]=0
	}
}

