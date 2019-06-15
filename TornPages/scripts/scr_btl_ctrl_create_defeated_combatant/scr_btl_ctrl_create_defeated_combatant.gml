//@function scr_btl_ctrl_create_defeated_combatant(combatant,order_index)
///@arg combatant
///@arg order_index

var comb = argument0
var i = argument1

ds_list_delete(order,i)
				
				//check if it's the current combatant
				if comb=combatant
					{
						combatant=noone
					}
				
				//remove as partner, enemy, or ally
				if comb = PARTNER
					{
						PARTNER=noone
					}
				
				var en=0
				repeat(ds_list_size(ENEMY))
					{
						if comb=ENEMY[| en]
							{ds_list_delete(ENEMY,en)}
						else
							{en++}
					}
				var al=0
				repeat(ds_list_size(ALLY))
					{
						if comb=ALLY[| al]
							{ds_list_delete(ALLY,al)}
						else
							{al++}
					}
				
				//then replace instance with death object
				var defeat_obj = asset_get_index(object_get_name(comb.object_index)+"_defeated")
				var defeat_inst = instance_create_depth(comb.x,comb.y,depth,defeat_obj)
					defeat_inst.facing_direction=comb.facing_direction
					defeat_inst.z=comb.z
					defeat_inst.stats=ds_map_create()
					ds_map_copy(defeat_inst.stats,comb.stats)
					defeat_inst.sprite=comb.sprite
					defeat_inst.sprite_index=defeat_inst.sprite[DEFEAT]
					defeat_inst.fixed_x=comb.fixed_x
					defeat_inst.fixed_y=comb.fixed_y
					if comb = target {target=defeat_inst}
					defeat_inst.formerself=comb
					
				if comb=target {
					defeat_inst=target
				}
				
				//finally, delete og instance
				with comb {
					defeated=true
					instance_destroy()
				}