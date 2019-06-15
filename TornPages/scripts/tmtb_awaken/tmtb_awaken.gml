/*///////////////////////////////////////////////////////////////////////////////////////

	INIT

/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

//----------------------------ACTION STATS----------------------------//

scr_tmtb_set_up_action_stats("Awaken")

//------------------------------MOMENTS------------------------------//

mmt_start=scr_tmtb_set_kmmt(1)
mmt_text = scr_tmtb_set_kmmt(25)
mmt_complete = scr_tmtb_set_kmmt(1)
mmt_end=scr_tmtb_set_kmmt(action_wait_amount)
	
}

/*/////////////////////////////////////////////////////////////////////

	TMTB

/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	case mmt_start: {

		//manacost
			var comb = combatant
			var stat = "MP"
			var amount = -script_execute(scr_get_action_info,"Awaken","mpcost")
			var alteration_spd=0.5
			script_execute(scr_establish_stat_alteration,comb,stat,amount,alteration_spd)
			stat_alt=false // this alts the stat without hijacking everything in btlctrl
		
		//find color
		var stat_color=c_red
		if combatant.stat_to_upgrade=combatant.ATK {
			stat_color=c_red
		}
		if combatant.stat_to_upgrade=combatant.DEF {
			stat_color=c_blue
		}
		if combatant.stat_to_upgrade=combatant.DEX {
			stat_color=c_purple
		}
		
		
		var btlfx = instance_create_depth(target.x,target.y,target.depth-1,obj_vfx)
			btlfx.sprite_index=spr_vfx_heal
			btlfx.color=stat_color
			btlfx.depth_yoffset=-8

		//sprite
		combatant.sprite_index=spr_kai_meditating
		
		break
		
	}
	
	case mmt_text: {
		
		//ADD THE STAT
		var stat_txt = ""
		var stat_color = c_red
		var amount=0
		
		if combatant.stat_to_upgrade=combatant.ATK {
			
			stat_txt="ATK"
			stat_color=c_red
			var ratio = obj_party_stats.Player[? "ATK"]/combatant.stats[? "ATK"]
			amount = ceil( (5 + floor(random(2)) + floor(combatant.stats[? "LVL"]/3))*ratio )
			
			combatant.stats[? "ATK"]+=amount
			combatant.stats[? "SPATK"]+=amount
			
		}
		
		if combatant.stat_to_upgrade=combatant.DEF {
			
			stat_txt="DEF"
			stat_color=c_blue
			var ratio = obj_party_stats.Player[? "DEF"]/combatant.stats[? "DEF"]
			amount = ceil( (6 + floor(random(2)) + floor(combatant.stats[? "LVL"]/3))*ratio )
			
			
			combatant.stats[? "DEF"]+=amount
			combatant.stats[? "SPDEF"]+=amount
			
		}
		
		if combatant.stat_to_upgrade=combatant.DEX {
			
			stat_txt="DEX"
			stat_color=c_purple
			var ratio = obj_party_stats.Player[? "DEX"]/combatant.stats[? "DEX"]
			amount = ceil( (5 + floor(random(1)) + floor(combatant.stats[? "LVL"]/5))*ratio )
			
			
			combatant.stats[? "DEX"]+=amount
			
		}
		
		//write the text
		var btltxt = instance_create_depth(combatant.x,combatant.y,combatant.depth-1,obj_btl_txt)			
			btltxt.text="+"+string(amount)+stat_txt
			btltxt.color=stat_color
			
		break
		
	}
	
	case mmt_complete: {
		
		combatant.sprite_index=combatant.sprite[RIGHT]
		
		break
		
	}
	
	case mmt_end: {
		
		script_execute(scr_end_tmtb)	
		
		break
		
	}
}
