//draw sprite
var thesprite=spr_scroll
draw_sprite_ext(thesprite,image_index,guiwidth/2,guiheight/3,4,4,0,c_white,1)

//DON'T DRAW IF NOT ENABLED
if !enabled {exit}

draw_set_font(font)
draw_set_halign(fnt_halign)
draw_set_valign(fnt_valign)
draw_set_color(font_color)

////////draw 9 slice///////

var arr_len = array_length_1d(text)
var str_h = string_height(text[0])

//find widest string
var str_w=string_width(text[0])
var i = 0
repeat(arr_len)
{
	if string_width(text[i])>=str_w
		{str_w=string_width(text[i])}
	i++
}

guiwidth=display_get_gui_width()
guiheight=display_get_gui_height()
display_x=guiwidth/2 - str_w*2/3
display_y=guiheight*3/5

//draw 9 slice

if fnt_halign=fa_left
{
script_execute(scr_draw_nine_slice,textbox, display_x, display_y,display_x+2*margin+str_w, display_y+2*margin+(arr_len*(str_h+spacing)))
}

if fnt_halign=fa_middle
{
script_execute(scr_draw_nine_slice,textbox, display_x-margin-(str_w/2), display_y,display_x+2*margin+str_w, display_y+2*margin+(arr_len*(str_h+spacing)))
}


//draw text

var i = 0
repeat(arr_len)
{
	var str = text[i]
	

	//if currently selected
	if i=index
		{
			//add carrot
			draw_set_halign(fa_middle)
			draw_text(display_x+margin/2,display_y+margin+(i*str_h)+(i+1)*spacing,"-")
			//change color
			draw_set_color(font_select_color)
			
			//change back
			draw_set_halign(fa_left)
			
		}
	else
		{
			draw_set_color(font_color)
		}
	
	draw_text(display_x+margin,display_y+margin+(i*str_h)+(i+1)*spacing,str)
	i++
}



