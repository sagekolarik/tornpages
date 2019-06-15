if !display {exit}

combatant=obj_btl_ctrl.combatant

/*////////////////////////////////////////////////////////

		PLAYER's STUFF

/*////////////////////////////////////////////////////////

draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(fnt_standard)
draw_set_color(c_white)

if instance_exists(PLAYER) //and PLAYER.object_index!=obj_defeatedcombatant_parent
{
	var hb_x = 32
	var hb_y = 32
	var scale
	if PLAYER=combatant
		{scale=currcomb_scale}
	else
		{scale=normal_scale}
		
		
	//combatant sprite
	draw_sprite_ext(PLAYER.sprite_index,PLAYER.image_index,hb_x,hb_y+14,2*PLAYER.facing_direction,2,0,c_white,1)
	
	//frame
	draw_sprite_ext(spr_healthbar_frame_level,0,hb_x,hb_y,scale,scale,0,c_white,1)

	//hp bar
	var ratio = (PLAYER.stats[? "HP"]/PLAYER.stats[? "HP_max"])
	var frame_goal = ceil(sprite_get_number(spr_healthbar_hp)*ratio)
	if PLAYER.stats[? "HP"]=PLAYER.stats[? "HP_max"] {frame_goal=0}
	if frame_goal>=sprite_get_number(spr_healthbar_hp) {frame_goal=sprite_get_number(spr_healthbar_hp)-1}
	if PLAYER.stats[? "HP"]!=0 {
		draw_sprite_ext(spr_healthbar_hp,sprite_get_number(spr_healthbar_hp)-frame_goal,hb_x,hb_y,scale,scale,0,c_white,1)
	}
	
	//mp bar
	var ratio = (PLAYER.stats[? "MP"]/PLAYER.stats[? "MP_max"])
	var frame_goal = ceil(sprite_get_number(spr_healthbar_mp)*ratio)
	if PLAYER.stats[? "MP"]=PLAYER.stats[? "MP_max"] {frame_goal=0}
	if frame_goal>=sprite_get_number(spr_healthbar_mp) {frame_goal=sprite_get_number(spr_healthbar_mp)-1}
	if PLAYER.stats[? "MP"]!=0 {
		draw_sprite_ext(spr_healthbar_mp,sprite_get_number(spr_healthbar_mp)-frame_goal,hb_x,hb_y,scale,scale,0,c_white,1)
	}

	var textscale=scale/2
	
	/* NAME IN HEALTHBAR
	var text = string(PLAYER.stats[? "NAME"])
	var color = c_white
	draw_text_transformed_color(hb_x,hb_y,text,textscale,textscale,0,color,color,color,color,1)
	*/

	var text = "HP"
	var color = c_white
	draw_text_transformed_color(hb_x+(26*scale),hb_y,text,textscale,textscale,0,color,color,color,color,1)

	var text = "MP"
	var color = c_white
	draw_text_transformed_color(hb_x+(18*scale),hb_y+(15*scale),text,textscale,textscale,0,color,color,color,color,1)

	var text = string(round(PLAYER.stats[? "LVL"]))
	var color = c_yellow
	draw_text_transformed_color(hb_x+(-18*scale),hb_y+(14*scale),text,textscale,textscale,0,color,color,color,color,1)

	var text = string(round(PLAYER.stats[? "HP"]))
	var color = c_black
	draw_text_transformed_color(hb_x+(112*scale),hb_y+(8*scale),text,textscale,textscale,0,color,color,color,color,1)

	var text = string(round(PLAYER.stats[? "MP"]))
	var color = c_black
	draw_text_transformed_color(hb_x+(64*scale),hb_y+(24*scale),text,textscale,textscale,0,color,color,color,color,1)

	draw_set_valign(fa_top)

}

/*////////////////////////////////////////////////////////

		PARTNER's STUFF

/*////////////////////////////////////////////////////////

draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(fnt_standard)
draw_set_color(c_white)

if instance_exists(PARTNER) //and PARTNER.object_index!=obj_defeatedcombatant_parent
{
	
	var hb_x = 24
		hb_y=32+64
		
	var scale
	if PARTNER=combatant
		{scale=currcomb_scale}
	else
		{scale=normal_scale}
		
	//combatant sprite
	draw_sprite_ext(PARTNER.sprite_index,PARTNER.image_index,hb_x,hb_y+14,2*PARTNER.facing_direction,2,0,c_white,1)
	
	//frame
	draw_sprite_ext(spr_healthbar_frame,0,hb_x,hb_y,scale,scale,0,c_white,1)

	//hp bar
	var ratio = (PARTNER.stats[? "HP"]/PARTNER.stats[? "HP_max"])
	var frame_goal = ceil(sprite_get_number(spr_healthbar_hp)*ratio)
	if PARTNER.stats[? "HP"]=PARTNER.stats[? "HP_max"] {frame_goal=0}
	if frame_goal>=sprite_get_number(spr_healthbar_hp) {frame_goal=sprite_get_number(spr_healthbar_hp)-1}
	if PARTNER.stats[? "HP"]!=0 {
		draw_sprite_ext(spr_healthbar_hp,sprite_get_number(spr_healthbar_hp)-frame_goal,hb_x,hb_y,scale,scale,0,c_white,1)
	}
	
	//mp bar
	var ratio = (PARTNER.stats[? "MP"]/PARTNER.stats[? "MP_max"])
	var frame_goal = ceil(sprite_get_number(spr_healthbar_mp)*ratio)
	if PARTNER.stats[? "MP"]=PARTNER.stats[? "MP_max"] {frame_goal=0}
	if frame_goal>=sprite_get_number(spr_healthbar_mp) {frame_goal=sprite_get_number(spr_healthbar_mp)-1}
	if PARTNER.stats[? "MP"]!=0 {
		draw_sprite_ext(spr_healthbar_mp,sprite_get_number(spr_healthbar_mp)-frame_goal,hb_x,hb_y,scale,scale,0,c_white,1)
	}

	var textscale=scale/2
	
	/* NAME IN HEALTHBAR
	var text = string(PARTNER.stats[? "NAME"])
	var color = c_white
	draw_text_transformed_color(hb_x,hb_y,text,textscale,textscale,0,color,color,color,color,1)
	*/

	var text = "HP"
	var color = c_white
	draw_text_transformed_color(hb_x+(26*scale),hb_y,text,textscale,textscale,0,color,color,color,color,1)

	var text = "MP"
	var color = c_white
	draw_text_transformed_color(hb_x+(18*scale),hb_y+(15*scale),text,textscale,textscale,0,color,color,color,color,1)

	/*
	var text = string(round(PARTNER.stats[? "LVL"]))
	var color = c_yellow
	draw_text_transformed_color(hb_x+(-18*scale),hb_y+(14*scale),text,textscale,textscale,0,color,color,color,color,1)
	*/

	var text = string(round(PARTNER.stats[? "HP"]))
	var color = c_black
	draw_text_transformed_color(hb_x+(112*scale),hb_y+(8*scale),text,textscale,textscale,0,color,color,color,color,1)

	var text = string(round(PARTNER.stats[? "MP"]))
	var color = c_black
	draw_text_transformed_color(hb_x+(64*scale),hb_y+(24*scale),text,textscale,textscale,0,color,color,color,color,1)

	draw_set_valign(fa_top)

}

/*////////////////////////////////////////////////////////

		ORDER's STUFF (DEBUG)

/*////////////////////////////////////////////////////////
/*
exit

draw_set_halign(fa_right)
draw_set_font(fnt_standard)
draw_set_color(c_white)

var startingy = 24
var text="Order - "+string(ds_list_size(obj_btl_ctrl.order))
draw_text(display_get_gui_width()-24,startingy,string(text))
var i=0

repeat(ds_list_size(obj_btl_ctrl.order))
{
	var startingy = 48+(i*16)
	var inst = obj_btl_ctrl.order[| i]
	
	if instance_exists(inst)
	{
		var text = inst.stats[? "NAME"]
		draw_text(display_get_gui_width()-24,startingy,string(text))
	}
	else
	{
		var text = "[defeated]"
		draw_text(display_get_gui_width()-24,startingy,string(text))
	}
	
	i++
}

