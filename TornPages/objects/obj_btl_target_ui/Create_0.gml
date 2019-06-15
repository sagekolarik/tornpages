
// Inherit the parent event
event_inherited();

//create a cursor
CURSOR = instance_create_depth(obj_btl_ctrl.combatant.x,obj_btl_ctrl.combatant.y,obj_btl_ctrl.depth,obj_btl_cursor)

display_x = display_get_gui_width()/8
display_y = display_get_gui_height()-2*display_x

//
scr_get_possible_targets()