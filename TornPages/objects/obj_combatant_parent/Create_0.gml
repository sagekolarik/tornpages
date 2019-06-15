stat_altering=false
alt_stat=noone
alt_stat_goal=noone
alt_stat_spd=noone
facing_direction=1

lvl=1

zchanging=false
zchange_amount=0
zchange_time=0
scalechanging=false
scalechange_amount=0
scalechange_time=0

image_xscale=2
image_yscale=2

defeat_obj=noone
defeated=false
z=0

fixed_x=room_width/2
fixed_y=room_height/2

font=scr_get_world_font()

//set sprites
var function_scr=asset_get_index("scr_"+object_get_name(object_index)+"_getsprites")
script_execute(function_scr)

sprite_index=sprite[RIGHT]

