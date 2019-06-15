//initialize up
enabled=true
child=noone
parent=noone
name=undefined
fnt_halign=fa_left
fnt_valign=fa_top
font=fnt_standard
font_color=c_black
font_select_color=c_red
margin=display_get_gui_width()/24
spacing=4
textbox=scr_get_world_textbox()
crsr_sprite=scr_get_world_cursor()
index=0
carrot=true

//these will be what's displayed. The list contains the order and name. The map contains the name and function
script_map=ds_map_create()

subimage = 0
fight_subimage_total = 14
ability_subimage_total = 20
item_subimage_total = 32
flee_subimage_total = 21
swap_subimage_total = 8

var i=0
repeat(4)
{
scale[i++]=2
}
scaling_factor=0.2

fight_viable=true
ability_viable=true
item_viable=true
flee_viable=true
swap_viable=true

fight_viable=obj_btl_ctrl.fight_viable
ability_viable=obj_btl_ctrl.ability_viable
item_viable=obj_btl_ctrl.item_viable
flee_viable=obj_btl_ctrl.flee_viable
swap_viable=obj_btl_ctrl.swap_viable

action_viable_failure_message=obj_btl_ctrl.action_viable_failure_message
nonviable_action_alpha=0.4
nonviable_action_color=c_dkgray
