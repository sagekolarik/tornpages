sprite_index=textbox

/*/////////////////////////////////////////////////////////////////
	9 slice
/*/////////////////////////////////////////////////////////////////

script_execute(scr_draw_nine_slice,sprite_index,display_x,display_y,display_x+display_w,display_y+display_h)

/*/////////////////////////////////////////////////////////////////
	Text
/*/////////////////////////////////////////////////////////////////

//set font
draw_set_font(font)
draw_set_halign(fnt_halign)
draw_set_valign(fnt_valign)

//draw the text
var xx=display_x+margin
	if fnt_halign=fa_center {
		xx=display_x+display_w/2
	}
var yy=display_y+margin
	if fnt_valign=fa_middle {
		yy=display_y+(display_h/2)
	}
var w=display_w-margin*2
draw_text_ext_transformed_colour(xx,yy,text_visible,-1,w/size,size,size,0,color,color,color,color,alpha)

/*/////////////////////////////////////////////////////////////////
	Next
/*/////////////////////////////////////////////////////////////////

//add to the count
if alarm[0]<=0
	{
		text_count+=spd
	}

if next_ready {
			
		if the_index=0
			{the_index=1}
		else
			{the_index=0}
				
			
		var display_cursor=true
		if object_index=obj_passive_message or object_index=obj_choice_message {
			display_cursor=false
		}
		
		if display_cursor {
			if !instance_exists(cursor) {
				cursor=instance_create_depth(x,y,depth,obj_ui_advance_cursor)
			}
			draw_sprite(cursor.sprite_index,cursor.image_index,display_x+display_w-2*margin,display_y+display_h-margin)
		}
		
}
		
/*/////////////////////////////////////////////////////////////////
	NAME BANNER 
/*/////////////////////////////////////////////////////////////////

if name_banner!=noone and name_banner!="UNDEFINED NAME" {
	
	draw_set_font(fnt_standard)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	
	var txt = string(name_banner)
	
	var xx1 = display_x+margin
	var yy1 = display_y-round(string_height(txt)/2)
	var xx2 = display_x+margin+string_width(txt)
	var yy2 = yy1+floor(string_height(txt))

	script_execute(scr_draw_nine_slice,spr_textbox_banner,xx1,yy1,xx2,yy2)
	
	draw_text(xx1,yy1,txt)
	
	//reset
	draw_set_color(c_black)
	
}


