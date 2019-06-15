
///@arg action_name

var action_name=argument0

action_power = scr_get_action_info(action_name,"action_power")
action_type = scr_get_action_info(action_name,"type")
magic = scr_get_action_info(action_name,"magic")
melee = scr_get_action_info(action_name,"melee")
accuracy = scr_get_action_info(action_name,"accuracy")
mp_cost = scr_get_action_info(action_name,"mpcost")
target_is_a_combatant = object_is_ancestor(target.object_index,obj_combatant_parent)