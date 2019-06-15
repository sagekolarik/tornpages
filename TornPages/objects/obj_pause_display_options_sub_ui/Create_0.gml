//initialize up
enabled=true
child=noone
parent=noone
name=undefined
fnt_halign=fa_left
fnt_valign=fa_middle
font=fnt_standard
font_color=c_black
font_select_color=c_red
spacing=4
textbox=scr_get_world_textbox()
crsr_sprite=scr_get_world_cursor()
index_v=0

/*///////////////////////////////////////////////////////////////////////
TEXT FOR VERTICAL
/*///////////////////////////////////////////////////////////////////////
sfx_volume=obj_audio.sfx_volume
bgm_volume=obj_audio.bgm_volume

/*///////////////////////////////////////////////////////////////////////
TEXT FOR VERTICAL
/*///////////////////////////////////////////////////////////////////////

text_v[0]="Display"

display=obj_view.display


//set by 

guiwidth = display_get_gui_width()
guiheight = display_get_gui_height()
margin=floor(guiwidth/12)

display_x1 = margin
display_y1 = margin
display_x2 = guiwidth-margin
display_y2 = guiheight-margin


//these will be what's displayed. The list contains the order and name. The map contains the name and function
script_map=ds_map_create()