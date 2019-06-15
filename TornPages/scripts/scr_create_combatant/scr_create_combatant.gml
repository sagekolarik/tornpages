///@function scr_create_combatant(object_index,combatant_type,gridx,gridy)
///@desc creates a combatant - used in the btlcode script - returns with the id of the instance
///@arg object_index
///@arg lvl
///@arg combatant_type
///@arg gridx
///@arg gridy


//set up arguments
var theid = argument0
var lvl = argument1
var inst_type = argument2
var gridx = argument3
var gridy = argument4

//based on if ALLY or ENEMY - set the starting and fixed positions
if inst_type=ALLY {
	startx=ally_startx
	var instx = LX+gridsize*gridx
	var insty = LY+(gridsize*gridy/2)
}
if inst_type=ENEMY {
	startx=enemy_startx
	var instx = RX-gridsize*gridx
	var insty = RY+(gridsize*gridy/2)
}

//create instance
var inst = instance_create_depth(startx,insty,depth,theid)

//if partner, extra step
	if inst.object_index=obj_btl_partner and instance_exists(inst) {
		inst=inst.PARTNER
	}

//set its anchor point
inst.fixed_x=instx
inst.fixed_y=insty
inst.lvl=lvl
with inst {event_user(0)}
	
	

//add instance to ALLY or ENEMY list
ds_list_add(inst_type,inst)

	
//return with the instance's ID
return inst

