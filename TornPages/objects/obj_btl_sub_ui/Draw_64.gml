//don't draw if not enabled
if enabled=false {exit}

/*///////////////////////////////////////////////////////////////////////////////

	BATTLE UI DRAW

/*///////////////////////////////////////////////////////////////////////////////

guiwidth = display_get_gui_width()
guiheight = display_get_gui_height()

/*///////////////////////////////////////////////////////////////////////////////
	Draw 9 slice
/*///////////////////////////////////////////////////////////////////////////////

scr_draw_nine_slice(textbox, display_x1, display_y1, display_x2,  display_y2)


/*///////////////////////////////////////////////////////////////////////////////
	Description Box
/*///////////////////////////////////////////////////////////////////////////////

/*
box_x1=guiwidth/2
box_x2=guiwidth-display_x1
box=guiwidth*2/5
box=(guiwidth*3/5)+(guiwidth*1/10)
script_execute(scr_draw_nine_slice,textbox,0,(display_x1+display_x2)/2, display_y1, display_x2,  display_y2)
*/

/*///////////////////////////////////////////////////////////////////////////////
	Text
/*///////////////////////////////////////////////////////////////////////////////

draw_set_font(font)
draw_set_halign(fnt_halign)
draw_set_valign(fnt_valign)
draw_set_color(font_color)

var xx = display_x1+margin

//draw correct text
var t = index
var txt = text[t]
var scale=1
var yy=(display_y1+display_y2)/2
draw_text_transformed(xx,yy,txt,scale,scale,0)

// mpcost or amount of item
		var amount=""
		var amountcolor=c_white
		if parent.text[parent.index]="Fight" or parent.text[parent.index]="Ability"
			{
				var amount = string(scr_get_action_info(txt,"mpcost"))
				var amountcolor = c_blue
			}
		if parent.text[parent.index]="Item"
			{
				var amount = obj_inventory.inventory[? text[index]]
				var amountcolor = c_black
			}
		if amount!="0" and amount!=undefined
			{
				draw_text_transformed_color((guiwidth/2)-margin+1/(margin*scale),yy,amount,scale,scale,0,amountcolor,amountcolor,amountcolor,amountcolor,1)
			}



//draw above
var i=1
repeat(2)
{
	if index>=i
	{
		var t = index-i
		var txt = text[t]
		var scale=1-abs(i*0.2)
		var yy=(display_y1+display_y2)/2
		draw_text_transformed(xx,yy-(i*margin),txt,scale,scale,0)
		
		// mpcost or amount of item
		var amount=""
		var amountcolor=c_white
		if parent.text[parent.index]="Fight" or parent.text[parent.index]="Ability"
			{
				var amount = string(script_execute(scr_get_action_info,txt,"mpcost"))
				var amountcolor = c_blue
			}
		if parent.text[parent.index]="Item"
			{
				var amount = obj_inventory.inventory[? text[i]]
				var amountcolor = c_black
			}
		if amount!="0" and amount!=undefined
			{
				draw_text_transformed_color((guiwidth/2)-margin+1/(margin*scale),yy-i*margin,amount,scale,scale,0,amountcolor,amountcolor,amountcolor,amountcolor,1)
			}
	}
	i++
}

//draw below
var i=1
repeat(2)
{
	if index<array_length_1d(text)-i
	{
		var t = index+i
		var txt = text[t]
		var scale=1-abs(i*0.2)
		var yy=(display_y1+display_y2)/2
		draw_text_transformed(xx,yy+(i*margin),txt,scale,scale,0)
		
		// mpcost or amount of item
		var amount=""
		var amountcolor=c_white
		if parent.text[parent.index]="Fight" or parent.text[parent.index]="Ability"
			{
				var amount = string(script_execute(scr_get_action_info,txt,"mpcost"))
				var amountcolor = c_blue
			}
		if parent.text[parent.index]="Item"
			{
				var amount = obj_inventory.inventory[? text[i]]
				var amountcolor = c_black
			}
		if amount!="0" and amount!=undefined
			{
					draw_text_transformed_color((guiwidth/2)-margin+1/(margin*scale),yy+i*margin,amount,scale,scale,0,amountcolor,amountcolor,amountcolor,amountcolor,1)
			}
			
			
	}
	i++
}

/*
/*///////////////////////////////////////////////////////////////////////////////
	//Description Pic
/*///////////////////////////////////////////////////////////////////////////////

var xx = (guiwidth/2) + (display_x1+display_x2)/4 - (display_x1/2)
var yy = display_y1 + (display_y1+display_y2)/8
var scale=4

if text[index]="Staff"
	{
		draw_sprite_ext(spr_kai_attacking_right,3,xx,yy,scale,scale,0,c_white,1)
	}
if text[index]="Bow"
	{
		draw_sprite_ext(spr_kai_bow_right,3,xx,yy,scale,scale,0,c_white,1)
	}
if text[index]="Awaken"
	{
		draw_sprite_ext(spr_kai_idle_down,0,xx,yy,scale,scale,0,c_white,1)
		draw_sprite_ext(spr_vfx_heal,1,xx,yy-8*scale,scale,scale,0,c_red,1)
	}
if text[index]="Card Toss"
	{
		draw_sprite_ext(spr_edgar_casting_right,14,xx,yy,scale,scale,0,c_white,1)
	}
if text[index]="Spectacular Stardust"
	{
		draw_sprite_ext(spr_edgar_star,8,xx,yy-8*scale,2*scale,2*scale,0,c_white,1)
	}
if text[index]="Enchant"
	{
		draw_sprite_ext(spr_edgar_casting_right,14,xx,yy,scale,scale,0,c_white,1)
	}
if text[index]="Barrier"
	{
		draw_sprite_ext(spr_edgar_casting_right,14,xx,yy,scale,scale,0,c_white,1)
	}
if text[index]="Bite"
	{
		draw_sprite_ext(spr_avi_wolf_biting_right,0,xx,yy,scale,scale,0,c_white,1)
	}
if text[index]="Ravage"
	{
		draw_sprite_ext(spr_avi_wolf_biting_right,0,xx,yy,scale,scale,0,c_white,1)
	}
if text[index]="Shadow Spear"
	{
		draw_sprite_ext(spr_avi_casting,1,xx,yy,scale,scale,0,c_white,1)
	}
if text[index]="Howl"
	{
		draw_sprite_ext(spr_avi_wolf_jumping_right,0,xx,yy,scale,scale,0,c_white,1)
	}
//items
if text[index]="Potion"
	{
		draw_sprite_ext(spr_potion,0,xx,yy-8*scale,2*scale,2*scale,0,c_white,1)
	}
if text[index]="Super Potion"
	{
		draw_sprite_ext(spr_superpotion,0,xx,yy-8*scale,2*scale,2*scale,0,c_white,1)
	}
if text[index]="Monster Necklace"
	{
		draw_sprite_ext(spr_monster_necklace,0,xx,yy-8*scale,2*scale,2*scale,0,c_white,1)
	}
if text[index]="Monster Trap"
	{
		draw_sprite_ext(spr_bolas,0,xx,yy-8*scale,2*scale,2*scale,0,c_white,1)
	}
//partners
if text[index]="Edgar"
	{
		draw_sprite_ext(spr_edgar_idle_down,0,xx,yy-8*scale,scale,scale,0,c_white,1)
	}
if text[index]="Avi"
	{
		draw_sprite_ext(spr_avi_idle_down,0,xx,yy-8*scale,scale,scale,0,c_white,1)
	}

/*///////////////////////////////////////////////////////////////////////////////
	//Description Text
/*///////////////////////////////////////////////////////////////////////////////

draw_set_font(font)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

var desc
if parent.text[parent.index]="Item"
	{
		desc = script_execute(scr_get_item_info,text[index],"desc")
	}
if parent.text[parent.index]="Fight" or parent.text[parent.index]="Ability"
	{
		desc = script_execute(scr_get_action_info,text[index],"desc")
	}
if parent.text[parent.index]="Swap"
	{
		desc = script_execute(scr_get_action_info,text[index],"desc")
	}
var scale=0.8
var xx = (display_x1+display_x2)/2 + margin
var yy = (display_y1+display_y2)/2 + margin/2
var w = (display_x1+display_x2)/2 - 2*margin
if desc!=0
	{
		draw_text_ext_transformed(xx,yy,desc,-1,w,scale,scale,0)
	}

*/

/*///////////////////////////////////////////////////////////////////////////////
	//Draw icon at the top
/*///////////////////////////////////////////////////////////////////////////////

var scale = 3

var sprite
var sub
if parent.text[parent.index]="Fight"
	{
		sprite=spr_fight
		sub = fight_subimage_total
		color=c_red
	}
if parent.text[parent.index]="Ability"
	{
		sprite=spr_ability
		sub = ability_subimage_total
		color=c_blue
	}
if parent.text[parent.index]="Item"
	{
		sprite=spr_item
		sub = item_subimage_total
		color=c_green
	}
if parent.text[parent.index]="Flee"
	{
		sprite=spr_flee
		sub = flee_subimage_total
		color=c_purple
	}
if parent.text[parent.index]="Swap"
	{
		sprite=spr_swap
		sub = swap_subimage_total
		color=c_orange
	}
	
var xpos = (display_x1+display_x2)/2
var ypos = display_y1+((sprite_get_height(textbox))/6)

draw_sprite_ext(sprite,sub,xpos,ypos,scale,scale,0,c_white,1)
