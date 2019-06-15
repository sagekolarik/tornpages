draw_set_font(font)
draw_set_halign(fnt_halign)
draw_set_valign(fnt_valign)
draw_set_color(font_color)

////////draw 9 slice///////

var arr_len = array_length_1d(text_v)
var str_h = string_height(text_v[0])

//find widest string
var str_w=string_width(text_v[0]+" - 10/10") //the first 10 is just a placeholder to make sure it's long enough
var i = 0
repeat(arr_len)
{
	if string_width(text_v[i]+" - 10/10")>=str_w
		{str_w=string_width(text_v[i]+" - 10/10")}
	i++
}

guiwidth=display_get_gui_width()
guiheight=display_get_gui_height()
display_x=guiwidth/2 - str_w*2/3
display_y=guiheight*2/3

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
	if i=0 {var info = bgm_volume}
	if i=1 {var info = sfx_volume}
	var str = text_v[i] + " - "+string(info)+"/10"
	

	//if currently selected
	if i=index_v
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


