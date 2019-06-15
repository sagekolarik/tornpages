draw_set_font(font)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(font_color)

//get string
var txt = text
		
//nine slice
guiwidth=display_get_gui_width()
guiheight=display_get_gui_height()
display_x1=guiwidth/2 - (string_width(text)/2 + margin)
display_x2=display_x1 + (string_width(text) + 2*margin)

scr_draw_nine_slice(textbox,display_x1,display_y-(string_height(text)/2+margin),display_x2,display_y+(string_height(text)/2+margin))
		
var xx=(display_x1+display_x2)/2
var yy=display_y
draw_text(xx,yy,txt)

