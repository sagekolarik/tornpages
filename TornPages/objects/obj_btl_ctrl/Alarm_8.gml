battle_end=true //if not already set, this variable should be set

script_execute(scr_room_transition_fadeout,last_room,c_black,0.1)

//BGM
script_execute(scr_change_song,noone,0.04)

//check if anybody's at zero and set them to 1
with obj_party_stats {
	if Player[? "HP"]<=0 {Player[? "HP"]=1}
	if Gumper[? "HP"]<=0 {Gumper[? "HP"]=1}
	if Edgar[? "HP"]<=0 {Edgar[? "HP"]=1}
}

obj_view.following=obj_player

