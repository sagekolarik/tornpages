///@arg instance
///@arg sprite
///@arg general_sprite?

var inst = argument0
var spr=argument1
var general_sprite=argument2

//if calling for a specific sprite
if !general_sprite {
	inst.sprite_index=spr
	exit
}

//if calling for a general sprite
if general_sprite {
	
	//set sprite
	inst.sprite_index=inst.sprite[spr]
	
	//set direction
	if spr=UP or spr=WALKING_UP {
		inst.facing=UP
	}
	if spr=DOWN or spr=WALKING_DOWN {
		inst.facing=DOWN
	}
	if spr=RIGHT or spr=WALKING_RIGHT {
		inst.facing=RIGHT
	}
	if spr=LEFT or spr=WALKING_LEFT {
		inst.facing=LEFT
	}

	
}

