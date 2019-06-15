/// @desc
/// @function scr_get_action_info(action, request)
/// @arg action
/// @arg request

var action = argument0
var request = argument1
var info = noone


/*//////////////////////////////////////////////////////////////////////////////////

	PLAYER ACTIONS

/*//////////////////////////////////////////////////////////////////////////////////

//FIGHT

if action="Staff"
{
	if request="desc" {
		
		info= "Hit 'em with that staff!"
		return info
		}
	if request="type" {
		
		info= "normal"
		return info
		}
	if request="melee" {
		
		info= true
		return info
		}
	if request="magic" {
		
		info= false
		return info
		}
	if request="accuracy" {
		
		info= 100
		return info
		}
	if request="mpcost" {
		
		info= 0
		return info
		}
	if request="action_power" {
		
		info= 2
		return info
		}
	if request="target_type" {
		info="offensive_notme"
		return info
	}
	if request="tmtb" {
		
		info= tmtb_kai_staff
		
		if obj_btl_ctrl.combatant.object_index=obj_btl_gumper {
			info= tmtb_undefined_action
		}
		
		if global.btlcd=102 {
			info= tmtb_kai_staff_shadowcreature
		}
		
		return info
		}
	exit
}

if action="Bow"
{
	if request="desc" {
		
		info= "The bow hasn't been made yet. You're just gonna attack with the staff."
		return info
		}
	if request="type" {
		
		info= "normal"
		return info
		}
	if request="melee" {
		
		info= false
		return info
		}
	if request="magic" {
		
		info= false
		return info
		}
	if request="accuracy" {
		
		info= 100
		return info
		}
	if request="mpcost" {
		
		info= 0
		return info
		}
	if request="action_power" {
		
		info= 2
		return info
		}
	if request="target_type" {
		info="offensive_notme"
		return info
	}
	if request="tmtb" {
		
		info= tmtb_undefined_action	
		return info
		}
	exit
}

//ABILITY

if action="Awaken"
{
	if request="desc" {
		
		info= "Kai draws strength from within, sharpening the stat of his choice."
		return info
		}
	if request="type" {
		
		info= "normal"
		return info
		}
	if request="melee" {
		
		info= false
		return info
		}
	if request="magic" {
		
		info= true
		return info
		}
	if request="accuracy" {
		
		info= 100
		return info
		}
	if request="mpcost" {
		
		info= 2
		return info
		}
	if request="action_power" {
		
		info= 0
		return info
		}
	if request="target_type" {
		info="defensive_meonly"
		return info
	}
	if request="tmtb" {
		
		info= tmtb_awaken
		return info
		}
	exit
}


/*//////////////////////////////////////////////////////////////////////////////////

	ENEMY ACTIONS

/*//////////////////////////////////////////////////////////////////////////////////

if action="Fluffer Bounce"
{
	if request="desc" {
		
		info= "noone"
		return info
		}
	if request="type" {
		
		info= "normal"
		return info
		}
	if request="melee" {
		
		info= true
		return info
		}
	if request="magic" {
		
		info= false
		return info
		}
	if request="accuracy" {
		
		info= 90
		return info
		}
	if request="mpcost" {
		
		info= 0
		return info
		}
	if request="action_power" {
		
		info= 3
		return info
		}
	if request="target_type" {
		info="offensive_notme"
		return info
	}
	if request="tmtb" {
		
		info= tmtb_fluffer_bounce
		return info
	}
	exit
}
if action="MegaFluffer Bite"
{
	if request="desc" {
		
		info= "noone"
		return info
		}
	if request="type" {
		
		info= "normal"
		return info
		}
	if request="melee" {
		
		info= true
		return info
		}
	if request="magic" {
		
		info= false
		return info
		}
	if request="accuracy" {
		
		info= 80
		return info
		}
	if request="mpcost" {
		
		info= 0
		return info
		}
	if request="action_power" {
		
		info= 6
		return info
		}
	if request="target_type" {
		info="offensive_notme"
		return info
	}
	if request="tmtb" {
		
		info= tmtb_megafluffer_bite
		return info
	}
	exit
}

if action="Maw Bite"
{
	if request="desc" {
		
		info= "noone"
		return info
		}
	if request="type" {
		
		info= "normal"
		return info
		}
	if request="melee" {
		
		info= true
		return info
		}
	if request="magic" {
		
		info= false
		return info
		}
	if request="accuracy" {
		
		info= 100
		return info
		}
	if request="mpcost" {
		
		info= 0
		return info
		}
	if request="action_power" {
		
		info= 6
		return info
		}
	if request="target_type" {
		info="offensive_notme"
		return info
	}
	if request="tmtb" {
		
		info= tmtb_maw_bite
		return info
	}
	exit
}


if action="Froady Jump"
{
	if request="desc" {
		
		info= "noone"
		return info
		}
	if request="type" {
		
		info= "normal"
		return info
		}
	if request="melee" {
		
		info= true
		return info
		}
	if request="magic" {
		
		info= false
		return info
		}
	if request="accuracy" {
		
		info= 75
		return info
		}
	if request="mpcost" {
		
		info= 0
		return info
		}
	if request="action_power" {
		
		info= 5
		return info
		}
	if request="target_type" {
		info="offensive_notme"
		return info
	}
	if request="tmtb" {
		
		info= tmtb_froady_jump
		return info
	}
	exit
}

if action="Froady Lick"
{
	if request="desc" {
		
		info= "noone"
		return info
		}
	if request="type" {
		
		info= "normal"
		return info
		}
	if request="melee" {
		
		info= false
		return info
		}
	if request="magic" {
		
		info= false
		return info
		}
	if request="accuracy" {
		
		info= 95
		return info
		}
	if request="mpcost" {
		
		info= 0
		return info
		}
	if request="action_power" {
		
		info= 2
		return info
		}
	if request="target_type" {
		info="offensive_notme"
		return info
	}
	if request="tmtb" {
		
		info= tmtb_froady_lick
		return info
	}
	exit
}


if action="Gawblin Spear"
{
	if request="desc" {
		
		info= "Feel the wrath. Feel it."
		return info
		}
	if request="type" {
		
		info= "normal"
		return info
		}
	if request="offensive" {
		
		info= true
		return info
		}
	if request="melee" {
		
		info= true
		return info
		}
	if request="magic" {
		
		info= false
		return info
		}
	if request="accuracy" {
		
		info= 95
		return info
		}
	if request="mpcost" {
		
		info= 0
		return info
		}
	if request="action_power" {
		
		info= 5
		return info
		}
	if request="tmtb" {
		
		info= tmtb_gawblin_spear
		return info
		}
	exit
}

if action="Undefined Action"
{
	if request="desc" {
		
		info= "A generic attack for generic combatants. If you're still using this attack, you're sooooo last update."
		return info
		}
	if request="type" {
		
		info= "normal"
		return info
		}
	if request="offensive" {
		
		info= true
		return info
		}
	if request="melee" {
		
		info= true
		return info
		}
	if request="magic" {
		
		info= false
		return info
		}
	if request="accuracy" {
		
		info= 95
		return info
		}
	if request="mpcost" {
		
		info= 0
		return info
		}
	if request="action_power" {
		
		info= 5
		return info
		}
	if request="tmtb" {
		
		info= tmtb_undefined_action	
		return info
		}
	exit
}