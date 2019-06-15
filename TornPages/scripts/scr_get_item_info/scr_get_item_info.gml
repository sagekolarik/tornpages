///(scr_get_action_info, action, request)

///@arg item
///@arg request

var item = argument0
var request = argument1

var info = noone


/*//////////////////////////////////////////////////////////////////////////////////
	CONSUMABLES
/*//////////////////////////////////////////////////////////////////////////////////

if item="Jungle Fruit"
{
	if request="desc" {
		
		info= "Yummy yummy in your tummy."
		return info
		}
	if request="consumable" {
		
		info= true
		return info
		}
	if request="battle_use" {
		
		info= true
		return info
		}
	if request="tmtb" {
		
		info= tmtb_jg_fruit
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
		
		info= 0
		return info
		}
	if request="offensive" {
		
		info=false
		return info
		}
	if request="droppable" {
		
		info=true
		return info
		}
	if request="world_use_script" {
		
		info=scr_jg_fruit_choice
		return info
		}
	if request="target_type" {
		info="defensive_metoo"
		return info
	}
	exit
}

/*//////////////////////////////////////////////////////////////////////////////////
	PLOT ITEMS
/*//////////////////////////////////////////////////////////////////////////////////

if item="Warrior's Staff"
{
	if request="desc" {
		
		info= "A finely crafted staff befitting of a warrior."
		return info
		}
	if request="consumable" {
		
		info= false
		return info
		}
	if request="battle_use" {
		
		info= false
		return info
		}
	if request="tmtb" {
		
		info= noone
		return info
		}
	if request="type" {
		
		info= "normal"
		return noone
		}
	if request="melee" {
		
		info= noone
		return info
		}
	if request="magic" {
		
		info= noone
		return info
		}
	if request="accuracy" {
		
		info= noone
		return info
		}
	if request="mpcost" {
		
		info= noone
		return info
		}
	if request="action_power" {
		
		info= noone
		return info
		}
	if request="offensive" {
		
		info=noone
		return info
		}
	if request="world_use_script" {
		
		info=scr_you_cant
		return info
		}
	if request="droppable" {
		
		info=false
		return info
		}
	if request="target_type" {
		info=noone
		return info
	}
	exit
}

if item="Mysterious Bow"
{
	if request="desc" {
		
		info= "A strange bow radiating with dark energy. Simply holding it makes your feel both fired-up and creeped out."
		return info
		}
	if request="consumable" {
		
		info= false
		return info
		}
	if request="battle_use" {
		
		info= false
		return info
		}
	if request="tmtb" {
		
		info= noone
		return info
		}
	if request="type" {
		
		info= "normal"
		return noone
		}
	if request="melee" {
		
		info= noone
		return info
		}
	if request="magic" {
		
		info= noone
		return info
		}
	if request="accuracy" {
		
		info= noone
		return info
		}
	if request="mpcost" {
		
		info= noone
		return info
		}
	if request="action_power" {
		
		info= noone
		return info
		}
	if request="offensive" {
		
		info=noone
		return info
		}
	if request="world_use_script" {
		
		info=scr_you_cant
		return info
		}
	if request="droppable" {
		
		info=false
		return info
		}
	if request="target_type" {
		info=noone
		return info
	}
	exit
}

if item="Cracked Staff"
{
	if request="desc" {
		
		info= "A shoddily constructed staff with a crack. I guess it'll do for now."
		return info
		}
	if request="consumable" {
		
		info= false
		return info
		}
	if request="battle_use" {
		
		info= false
		return info
		}
	if request="tmtb" {
		
		info= noone
		return info
		}
	if request="type" {
		
		info= "normal"
		return noone
		}
	if request="melee" {
		
		info= noone
		return info
		}
	if request="magic" {
		
		info= noone
		return info
		}
	if request="accuracy" {
		
		info= noone
		return info
		}
	if request="mpcost" {
		
		info= noone
		return info
		}
	if request="action_power" {
		
		info= noone
		return info
		}
	if request="offensive" {
		
		info=noone
		return info
		}
	if request="world_use_script" {
		
		info=scr_you_cant
		return info
		}
	if request="droppable" {
		
		info=false
		return info
		}
	if request="target_type" {
		info=noone
		return info
	}
	exit
}

if item="Ornate Sword"
{
	if request="desc" {
		
		info= "A finely crafted sword with the ancient language carved on the hilt."
		return info
		}
	if request="consumable" {
		
		info= false
		return info
		}
	if request="battle_use" {
		
		info= false
		return info
		}
	if request="tmtb" {
		
		info= noone
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
		
		info= noone
		return info
		}
	if request="mpcost" {
		
		info= 0
		return info
		}
	if request="action_power" {
		
		info= 0
		return info
		}
	if request="offensive" {
		
		info=false
		return info
		}
	if request="world_use_script" {
		
		info=scr_you_cant
		return info
		}
	if request="droppable" {
		
		info=false
		return info
		}
	if request="target_type" {
		info="defensive_metoo"
		return info
	}
	exit
}