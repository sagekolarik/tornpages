
///returns with target list

/*///////////////////////////////////////////////////////////////

	GIVE BTL CTRL VARIABLES TO TARGET UI

/*///////////////////////////////////////////////////////////////

ENEMY=obj_btl_ctrl.ENEMY
ALLY=obj_btl_ctrl.ALLY
PLAYER=obj_btl_ctrl.PLAYER
PARTNER=obj_btl_ctrl.PARTNER
possible_targets=obj_btl_ctrl.possible_targets
default_enemy_target = obj_btl_ctrl.default_enemy_target
default_ally_target = obj_btl_ctrl.default_ally_target 

/*///////////////////////////////////////////////////////////////

	RESET TARGET LIST

/*///////////////////////////////////////////////////////////////

ds_list_clear(possible_targets)


/*///////////////////////////////////////////////////////////////

	FIND TYPE OF TARGET UI NECESSARY

/*///////////////////////////////////////////////////////////////

theaction = obj_btl_sub_ui.text[ obj_btl_sub_ui.index] //this is the action that was chosen
target_type=script_execute(scr_get_action_info,theaction,"target_type")
if target_type=0 { //if it's not in the actions list, it's probably an item (or not initialized, but that's a different problem for a different day amirite
	target_type=script_execute(scr_get_item_info,theaction,"target_type")
}

/*///////////////////////////////////////////////////////////////////

DIFFERENT TARGET TYPES

"offensive_notme"
"offensive_metoo"
"offensive_allenemies"
"defensive_notme"
"defensive_metoo"
"defensive_meonly"
"defensive_allallies"
"everyone"

*///////////////////////////////////////////////////////////////////


/*///////////////////////////////////////////////////////////////

	FIND TYPE OF TARGET UI NECESSARY

/*///////////////////////////////////////////////////////////////

switch target_type {
	
	//OFFENSEIVE_NOTME
	case "offensive_notme": {
		
		//make a grid
		var target_num = ds_list_size(ENEMY) + ds_list_size(ALLY)-1 + instance_number(obj_btlobj_parent)//the minus 1 because you can't target the one who is doing the action
		target_order_finder = ds_grid_create(2, target_num)
		var target_collumn=0
		var x_collumn=1
		var row = 0
	
		//enemies
		var en=0
		repeat(ds_list_size(ENEMY)) {
		
			var thetarget = ENEMY[| en]
			if instance_exists(thetarget) {
			
				ds_grid_add(target_order_finder,target_collumn,row,thetarget)
				ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
			}
	
			en++
			row++
	
		}
		
		//allies

		//player
		if obj_btl_ctrl.combatant=PARTNER { // the the "notme" target is the partner, add the player to the list
			var thetarget = PLAYER
			if instance_exists(thetarget) {
		
				ds_grid_add(target_order_finder,target_collumn,row,thetarget)
				ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
			}
		}
	
		//partner
		if obj_btl_ctrl.combatant=PLAYER {  // the the "notme" target is the player, add the partner to the list
			var thetarget = PARTNER
			if instance_exists(thetarget) {
		
				ds_grid_add(target_order_finder,target_collumn,row,thetarget)
				ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
			}
		}
		
		break
	}
	
	//OFFENSEIVE_METOO
	case "offensive_metoo": {
		
		//make a grid
		var target_num = ds_list_size(ENEMY) + ds_list_size(ALLY) + instance_number(obj_btlobj_parent)
		target_order_finder = ds_grid_create(2, target_num)
		var target_collumn=0
		var x_collumn=1
		var row = 0
	
		//enemies
		var en=0
		repeat(ds_list_size(ENEMY)) {
		
			var thetarget = ENEMY[| en]
			if instance_exists(thetarget) {
			
				ds_grid_add(target_order_finder,target_collumn,row,thetarget)
				ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
			}
	
			en++
			row++
	
		}
		
		//allies

		//player
		var thetarget = PLAYER
		if instance_exists(thetarget) {
		
			ds_grid_add(target_order_finder,target_collumn,row,thetarget)
			ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
		}
	
		//partner
		var thetarget = PARTNER
		if instance_exists(thetarget) {
		
			ds_grid_add(target_order_finder,target_collumn,row,thetarget)
			ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
		}
		
		break
	}
	
	//OFFENSEIVE_METOO
	case "offensive_allenemies": {
		
		//make a grid
		var target_num = ds_list_size(ENEMY)
		target_order_finder = ds_grid_create(2, target_num)
		var target_collumn=0
		var x_collumn=1
		var row = 0
	
		//enemies
		var en=0
		repeat(ds_list_size(ENEMY)) {
		
			var thetarget = ENEMY[| en]
			if instance_exists(thetarget) {
			
				ds_grid_add(target_order_finder,target_collumn,row,thetarget)
				ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
			}
	
			en++
			row++
	
		}
		
		break
	}
	case "everyone": {
		
		//make a grid
		var target_num = ds_list_size(ENEMY) + ds_list_size(ALLY) + instance_number(obj_btlobj_parent)
		target_order_finder = ds_grid_create(2, target_num)
		var target_collumn=0
		var x_collumn=1
		var row = 0
	
		//enemies
		var en=0
		repeat(ds_list_size(ENEMY)) {
		
			var thetarget = ENEMY[| en]
			if instance_exists(thetarget) {
			
				ds_grid_add(target_order_finder,target_collumn,row,thetarget)
				ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
			}
	
			en++
			row++
	
		}
		
		//allies
		var al=0
		repeat(ds_list_size(ALLY)) {
		
			var thetarget = ALLY[| al]
			if instance_exists(thetarget) {
			
				ds_grid_add(target_order_finder,target_collumn,row,thetarget)
				ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
			}
	
			al++
			row++
	
		}
		
		//btlobjs

		
		
		break
	}
	
	//DEFENSIVE_METOO
	case "defensive_meonly": {
		
		//make a grid
		var target_num = instance_number(obj_btl_ctrl.combatant)
		target_order_finder = ds_grid_create(2, target_num)
		var target_collumn=0
		var x_collumn=1
		var row = 0
		
		
		thetarget=obj_btl_ctrl.combatant
		ds_grid_add(target_order_finder,target_collumn,row,thetarget)
		ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
		break
		
		}	
		
	case "defensive_metoo": {
		
		//make a grid
		var target_num = ds_list_size(ALLY)
		target_order_finder = ds_grid_create(2, target_num)
		var target_collumn=0
		var x_collumn=1
		var row = 0
		
		
		//allies
		var al=0
		repeat(ds_list_size(ALLY)) {
		
			var thetarget = ALLY[| al]
			if instance_exists(thetarget) {
			
				ds_grid_add(target_order_finder,target_collumn,row,thetarget)
				ds_grid_add(target_order_finder,x_collumn,row,thetarget.x)
	
			}
	
			al++
			row++
	
		}
	
		break
		
		}	
	
}
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*///////////////////////////////////////////////////////////////

	ORDER AND CONVERT THE GRID TO THE TARGET LIST

/*///////////////////////////////////////////////////////////////

//////////Now, order the grid
ds_grid_sort(target_order_finder, x_collumn, true)

///////////turn the grid into a ds_list
var row=0
repeat(ds_grid_height(target_order_finder)) {
	
	var thetarget = target_order_finder[# target_collumn, row]
	ds_list_add(possible_targets,thetarget)
	
	row++
	
}

/*///////////////////////////////////////////////////////////////

	DESTROY THE GRID

/*///////////////////////////////////////////////////////////////

ds_grid_destroy(target_order_finder)

/*///////////////////////////////////////////////////////////////

	SET INDEX BASED OFF OF MEMORY

/*///////////////////////////////////////////////////////////////

var target_aquired=false

//ENEMY
if target_type = "offensive_notme" or target_type = "offensive_metoo" {
	
	if instance_exists(default_enemy_target)
	and ds_list_find_index(possible_targets, default_enemy_target)!=-1 {
		
		index = ds_list_find_index(possible_targets, default_enemy_target)
		var target_aquired=true
	
	}
	
	if target_aquired=false {
		
		index=ds_list_find_index(possible_targets,obj_btl_ctrl.ENEMY[| 0])
		target_aquired=true
		
	}
	
}

//ALLY
if target_type = "defensive_notme" or target_type = "defensive_metoo" {
	
	if instance_exists(default_ally_target)
	and ds_list_find_index(possible_targets, default_ally_target)!=-1 {
		
		index = ds_list_find_index(possible_targets, default_enemy_target)
		target_aquired=true
	
	}
	
	if target_aquired=false {
		
		index=ds_list_find_index(possible_targets,obj_btl_ctrl.ENEMY[| 0])
		target_aquired=true
		
	}
}

