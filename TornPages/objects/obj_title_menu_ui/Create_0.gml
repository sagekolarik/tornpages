// Inherit the parent event
event_inherited();

global.world=0
textbox=scr_get_world_textbox()
crsr_sprite=scr_get_world_cursor()

depth=100

margin=display_get_gui_width()/16
guiwidth=display_get_gui_width()
guiheight=display_get_gui_height()
display_y=guiheight*2/3
display_x=guiwidth/2

fnt_halign=fa_left

name="title_menu_ui"

var i=0

if file_exists("torn_pages.sav") {
	text[i]="Continue"
	var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
	ds_map_add(script_map,text[i],function_scr)
	i++
	
}

text[i]="New Game"
var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
ds_map_add(script_map,text[i],function_scr)
i++



text[i]="Options"
var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
ds_map_add(script_map,text[i],function_scr)
	i++
			
text[i]="Quit"
var function_scr="scr_"+string(name)+"_"+string_letters(text[i])
ds_map_add(script_map,text[i],function_scr)
	i++

