//FOR NOW

var therm = room_next(room)
set_plotvar(plotvar.game_started,true)

//var therm = rm_1_fishinghole

scr_room_transition_fadeout(therm,c_black,0.05)
scr_change_song(noone,0.05)

global.world=1

enabled=false

//sfx
scr_play_sfx(sfx_select)

