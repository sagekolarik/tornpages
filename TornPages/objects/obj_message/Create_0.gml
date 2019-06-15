//init dialogue obj
text[0]="No text was given to this message object."

parent=noone
text_visible=""
text_page=0
text_count=0
cutscene=noone
spd=1
margin=display_get_gui_width()/32
enabled=true
text_length=0
name_banner=noone

//assets
sound="sfx_basic_text"
textbox=scr_get_world_textbox()
crsr_sprite=scr_get_world_cursor()
font=fnt_standard
size=1
alpha=1
color=c_black
fnt_halign = fa_left
fnt_valign = fa_top

cursor=noone

//disable_player
if instance_exists(obj_player)
{
	obj_player.state=scr_player_passive_state
}

next_ready=false
the_index=0

scr_set_message_positions()

wait_time=45




