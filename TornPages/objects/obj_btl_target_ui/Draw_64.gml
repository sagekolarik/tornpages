draw_set_font(font)
draw_set_halign(fnt_halign)
draw_set_valign(fnt_valign)
draw_set_color(font_color)

////////draw 9 slice///////

var arr_len = array_length_1d(text)
var str_h = string_height(text[0])

//find widest string
str_w=1
var i = 0
repeat(arr_len)
{
	
	var inst = text[i]
	var str=string(inst.stats[? "NAME"])
	
	if string_width(str)>=str_w {
		str_w=string_width(str)
	}
	
	i++
}

//draw 9 slice

if fnt_halign=fa_left
{
script_execute(scr_draw_nine_slice,textbox, display_x, display_y,display_x+2*margin+str_w, display_y+2*margin+(arr_len*(str_h+spacing)))
}

if fnt_halign=fa_middle
{
script_execute(scr_draw_nine_slice,textbox, display_x-margin-(str_w/2), display_y,display_x+2*margin+str_w, display_y+2*margin+(arr_len*(str_h+spacing)))
}


//draw text - but not actually. draw the name of the instance in text

var i = 0
repeat(arr_len)
{
	
	var inst = text[i]
	var str=string(inst.stats[? "NAME"])
	//if currently selected
	if i=index and carrot=true
		{
			//add carrot
			draw_set_halign(fa_middle)
			draw_text(display_x+margin/2,display_y+margin+(i*str_h)+(i+1)*spacing,"-")
			//change color
			draw_set_color(font_select_color)
			
			//change back
			draw_set_halign(fnt_halign)
			
		}
	else
		{
			draw_set_color(font_color)
		}
	
	
	draw_text(display_x+margin,display_y+margin+(i*str_h)+(i+1)*spacing,str)
	//draw_text(display_x+4*margin,display_y+margin+(i*str_h)+(i+1)*spacing,string(text[i]))
	i++
}
