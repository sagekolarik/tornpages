display_size=4
spacing=96
moment=0
spd_fast=24
spd_slow=3
transition_spd=2
spd = spd_fast
fadeout_spd=0.2

//these are copied over
PLAYER=obj_btl_ctrl.PLAYER
PARTNER=obj_btl_ctrl.PARTNER
intro_message=obj_btl_ctrl.intro_message
ALLY=ds_list_create()
ENEMY=ds_list_create()
ds_list_copy(ALLY,obj_btl_ctrl.ALLY)
ds_list_copy(ENEMY,obj_btl_ctrl.ENEMY)

ALLY_display_pos_x = ds_list_create()
ENEMY_display_pos_x = ds_list_create()

var i=0
repeat(ds_list_size(ALLY)) {
	
	ALLY_display_pos_x[| i]=-64 - (i*spacing)
	
	i++
}

var i=0
repeat(ds_list_size(ENEMY)) {
	
	ENEMY_display_pos_x[| i]=display_get_gui_width()+64 + (i*spacing)
	
	i++
}


