/*///////////////////////////////////////////////////////////////////////////////////////

	INIT

/*///////////////////////////////////////////////////////////////////////////////////////

if moment=0 {

//----------------------------ACTION STATS----------------------------//

action_power = script_execute(scr_get_action_info,"Undefined Action","action_power")
action_type = script_execute(scr_get_action_info,"Undefined Action","type")
magic = script_execute(scr_get_action_info,"Undefined Action","magic")
melee = script_execute(scr_get_action_info,"Undefined Action","melee")
accuracy = script_execute(scr_get_action_info,"Undefined Action","accuracy")
mp_cost = script_execute(scr_get_action_info,"Undefined Action","mpcost")
target_is_a_combatant = object_is_ancestor(target.object_index,obj_combatant_parent)

//------------------------------MOMENTS------------------------------//

mmt_start=2
mmt_txt=mmt_start+10
mmt_complete=mmt_txt+40
mmt_end=mmt_complete+2
	
}

/*/////////////////////////////////////////////////////////////////////

	TMTB

/*/////////////////////////////////////////////////////////////////////

moment++

switch moment {
	
	//
	case mmt_start: {
		
		break
	}
	
	//
	case mmt_txt: {
		
		var message = instance_create_depth(x,y,depth-1,obj_passive_message)
				message.name="message_message"
				message.wait_time=15
				message.display_x=message.message_top_x
				message.display_y=message.message_top_y
				message.display_h=message.message_top_h
				message.display_w=message.message_top_w
				message.text[0]="It's just standing there."
			
		break
	}
	
	case mmt_complete: {
		
			
			if instance_exists(obj_passive_message) {
				moment--
			}
			else {
				moment++
			}
			
			
		break
		
	}

	
	case mmt_end: {
		
		script_execute(scr_end_tmtb)
		
		break
		
	}

}