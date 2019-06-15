//don't draw if not enabled
if enabled=false {exit}

/*///////////////////////////////////////////////////////////////////////////////
	Draw 9 slice
/*///////////////////////////////////////////////////////////////////////////////

script_execute(scr_draw_nine_slice,textbox, display_x1, display_y1, display_x2,  display_y2)


/*///////////////////////////////////////////////////////////////////////////////
	MEMBER ICON/TEXT AT TOP
/*///////////////////////////////////////////////////////////////////////////////


draw_set_font(font)
draw_set_halign(fa_center)
draw_set_valign(fnt_valign)
draw_set_color(font_color)

var party_list_size = ds_list_size(party)
var w = (display_x2-display_x1)
var xx = display_x1
var yy = display_y1+floor(3*margin/2)

var slot=0



repeat(party_list_size) {
	
	xx+=w/(party_list_size+1)
	
	//draw name
	var statmap = stats[slot]
	var member_name =statmap[? "NAME"]
	var txt=member_name
	draw_text(xx,yy,txt)
	
	var thesubimage=0
	var thesprite=spr_stephen_idle
	//find sprite for icon
	if member_name=obj_party_stats.Player[? "NAME"] {
		thesprite=spr_kai_idle_battle
		if index_h=slot {thesprite=spr_kai_victory}
	}
	if member_name="Edgar" {
		thesprite=spr_edgar_battle
		if index_h=slot {thesprite=spr_edgar_talking; thesubimage=1}
	}
	if member_name="Gumper" {
		thesprite=spr_gumper_idle_battle
		if index_h=slot {thesprite=spr_gumper_victory; thesubimage=1}
	}
	
	//make icon
	var newyy = yy-string_height(txt)
	draw_sprite_ext(thesprite,thesubimage,xx,newyy,2,2,0,c_white,1)
	
	//make cursor
	if index_h=slot {
		
		var newyy=display_y1
		draw_sprite_ext(crsr_sprite,0,xx,newyy,2,2,0,c_white,1)
		
	}
	
	slot++
	
}

/*///////////////////////////////////////////////////////////////////////////////
	MEMBER STATS
/*///////////////////////////////////////////////////////////////////////////////

draw_set_font(font)
draw_set_halign(fa_left)
draw_set_valign(fnt_valign)
draw_set_color(font_color)

//starting values
var xx = display_x1+floor(margin/2)
var yy = display_y1+2*margin

if index_h=0 {
	var txt="Level:"
	draw_text(xx,yy,txt)
}
yy += string_height(txt)
if index_h=0 {
	var themap=stats[index_h]
	var string1=themap[? "LVL"]
	var txt=string(string1)
	draw_text(xx,yy,txt)
}

//HP
yy += 3*string_height(txt)/2
var txt="Heath:"
draw_text(xx,yy,txt)
yy += string_height(txt)
var themap=stats[index_h]
var string1=themap[? "HP"]
var string2=themap[? "HP_max"]
var txt=string(string1)+"/"+string(string2)
draw_text(xx,yy,txt)

//ATK
yy += 3*string_height(txt)/2
var txt="Attack:"
draw_text(xx,yy,txt)
yy += string_height(txt)
var themap=stats[index_h]
var txt=string(themap[? "ATK"])
draw_text(xx,yy,txt)

//DEF
yy += 3*string_height(txt)/2
var txt="Defense:"
draw_text(xx,yy,txt)
yy += string_height(txt)
var themap=stats[index_h]
var txt=string(themap[? "DEF"])
draw_text(xx,yy,txt)

//DEX
yy += 3*string_height(txt)/2
var txt="Dexterity:"
draw_text(xx,yy,txt)
yy += string_height(txt)
var themap=stats[index_h]
var txt=string(themap[? "DEX"])
draw_text(xx,yy,txt)

//reset starting values
var xx = display_x1+(w/2)+floor(margin/2)
var yy = display_y1+2*margin

//EXP
if index_h=0 {
	var txt="Experience:"
	draw_text(xx,yy,txt)
}
yy += string_height(txt)
if index_h=0 {
	var themap=stats[index_h]
	var string1=themap[? "EXP"]
	var string2=themap[? "EXP_max"]
	var txt=string(string1)+"/"+string(string2)
	draw_text(xx,yy,txt)
}

//MP
yy += 3*string_height(txt)/2
var txt="Magic:"
draw_text(xx,yy,txt)
yy += string_height(txt)
var themap=stats[index_h]
var string1=themap[? "MP"]
var string2=themap[? "MP_max"]
var txt=string(string1)+"/"+string(string2)
draw_text(xx,yy,txt)

//SPATK
yy += 3*string_height(txt)/2
var txt="Magic Attack:"
draw_text(xx,yy,txt)
yy += string_height(txt)
var themap=stats[index_h]
var txt=string(themap[? "SPATK"])
draw_text(xx,yy,txt)

//SPDEF
yy += 3*string_height(txt)/2
var txt="Magic Defense:"
draw_text(xx,yy,txt)
yy += string_height(txt)
var themap=stats[index_h]
var txt=string(themap[? "SPDEF"])
draw_text(xx,yy,txt)

//FATE
yy += 3*string_height(txt)/2
var txt="Fate:"
draw_text(xx,yy,txt)
yy += string_height(txt)
var themap=stats[index_h]
var txt=string(themap[? "FATE"])
draw_text(xx,yy,txt)

