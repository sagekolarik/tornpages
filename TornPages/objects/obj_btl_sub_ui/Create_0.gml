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
index=0

guiwidth = display_get_gui_width()
guiheight = display_get_gui_height()
margin=guiwidth/24

display_x1 = margin
display_y1 = (guiwidth/3)+margin
display_x2 = guiwidth-margin
display_y2 = guiheight-margin

//these will be what's displayed. The list contains the order and name. The map contains the name and function
script_map=ds_map_create()
