//create mega
mega = instance_create_depth(x,y,depth,obj_btl_megafluffer)
mega.facing_direction=facing_direction
mega.z=z
mega.lvl=stats[? "LVL"]
	with mega {
		event_user(0)
	}

if obj_btl_ctrl.combatant=id {
	obj_btl_ctrl.combatant=mega
}
if obj_btl_ctrl.target=id {
	obj_btl_ctrl.target=mega
}


ds_list_add(obj_btl_ctrl.ENEMY,mega)
ds_list_insert(obj_btl_ctrl.order,obj_btl_ctrl.current_combatant, mega)
obj_btl_ctrl.current_combatant--

mega.fixed_x=fixed_x
mega.fixed_y=fixed_y

//
if obj_btl_ctrl.default_enemy_target=formerself {
	obj_btl_ctrl.default_enemy_target=mega
}


instance_destroy()