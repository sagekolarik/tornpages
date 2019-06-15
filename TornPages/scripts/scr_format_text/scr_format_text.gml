/// @desc format_text(text_array,width,font)
/// @function scr_format_text(text_array,width,font)
/// @arg text_array
/// @arg width
/// @arg font

var text=argument0
var width = argument1
var font=argument2

//set font
draw_set_font(font)

//get number of pages
var array_size = array_length_1d(text)
var last_space=0

//loop through pages

for (var i = 0; i<array_size; i++)
{
	//set count to 0
	var count=0
	
	var char = string_char_at(text[i],count)
	while (!char="")
		{
			var str = string_copy(text[i], 1, count)
			var str_width = string_width(str)
			
			//update the last space
			if char==" " {last_space=count}
				
			//check width
			if str_width>width
			{
				//remove the space
				text[@ i] = string_delete(text[i], last_space, 1)
				text[@ i] = string_insert("#",text[i],last_space)
			}
			
			//increment count
			count++
			char=string_char_at(text[@ i], count)
		}
}

return text
