//draw_white
draw_set_color(c_white)
draw_set_alpha(image_alpha)
draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false)

var i=0
repeat(ds_list_size(ALLY)) {
	
	var inst = ALLY[| i]
	var xx = ALLY_display_pos_x[| i]
	var yy = display_get_gui_height()/3 + display_get_gui_height()/24
	
	//shadow
	if inst.stats[? "HAS_SHADOW"]=true {
		draw_sprite_ext(spr_shadow,inst.image_index,xx,yy,display_size,display_size,0,c_white,0.8)
	}
	
	//sprite
	draw_sprite_ext(inst.sprite_index,inst.image_index,xx,yy-inst.z,display_size,display_size,0,c_white,image_alpha)
	
	i++
	
}

var i=0
repeat(ds_list_size(ENEMY)) {
	
	var inst = ENEMY[| i]
	var xx = ENEMY_display_pos_x[| i]
	var yy = display_get_gui_height()*2/3 + display_get_gui_height()/24
	
	if inst.stats[? "HAS_SHADOW"]=true {
		draw_sprite_ext(spr_shadow,inst.image_index,xx,yy,display_size,display_size,0,c_white,0.8)
	}
	draw_sprite_ext(inst.sprite_index,inst.image_index,xx,yy-inst.z,-display_size,display_size,0,c_white,image_alpha)
	
	i++
	
}
draw_set_alpha(1)
