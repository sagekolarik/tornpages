image_alpha=0
image_alpha=0
next_room=rm_gameover
last_room=room
fade_speed=0.05
fade_color=c_red
walk_in=false
kai_sprite=spr_kai_defeated

text[0]="Game Over"

room_set_persistent(room, false)
if instance_exists(obj_player) {with obj_player persistent=true}

//fadeout music
scr_change_song(noone,0.05)
