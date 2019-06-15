/// @desc Chooses an Ally combatant to attack. Completely random.

var list_size = ds_list_size(obj_btl_ctrl.ALLY)

var comb_index = floor(random(list_size))

obj_btl_ctrl.target = obj_btl_ctrl.ALLY[| comb_index]