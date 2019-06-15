script_execute(scr_get_combatant_num)

//initialize combatant variables
current_combatant = 0

//clear the order and restart
ds_list_destroy(order)
order = ds_list_create()

//create the grid
comb_grid = ds_grid_create(2,combatant_num)
var i=0

/* THE FOLLOWING SHOULDN'T BE NECESSARY ANY LONGER SINCETHEY ARE ADDED TO THE ALLY LIST
if instance_exists(PLAYER)
	{
		ds_grid_set(comb_grid,0,i,PLAYER)
		ds_grid_set(comb_grid,1,i++,PLAYER.stats[? "DEX"])
	}
if instance_exists(PARTNER)
	{
		ds_grid_set(comb_grid,0,i,PARTNER)
		ds_grid_set(comb_grid,1,i++,PARTNER.stats[? "DEX"])
	}
	
*/
var num=0
repeat(ds_list_size(ENEMY))
	{
		ds_grid_set(comb_grid,0,i,ENEMY[| num])
		ds_grid_set(comb_grid,1,i++,ENEMY[| num++].stats[? "DEX"])
	}
var num=0
repeat(ds_list_size(ALLY))
	{
		ds_grid_set(comb_grid,0,i,ALLY[| num])
		ds_grid_set(comb_grid,1,i++,ALLY[| num++].stats[? "DEX"])
	}
	
//now sort
ds_grid_sort(comb_grid,1,false)

//now create order
var i=0
repeat(ds_grid_height(comb_grid))
{
	ds_list_add(order,comb_grid[# 0, i++])
}

//destroy the old grid
ds_grid_destroy(comb_grid)
