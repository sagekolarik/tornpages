// 5 - BTLFLD_EVENT PHASE
	// global grid events (such as the destruction or creation of tiles) which are not caused directly by combatants but environment
	alarm[0]=-1
	
//to start it out
action_tmtb=noone 

if btlfld_event_queue=noone
	{
		btlfld_event_queue=ds_queue_create()
		with obj_turn_activator
		{
			ds_queue_enqueue(obj_btl_ctrl.btlfld_event_queue,id)
		}
	}
	
//check first queue
	repeat(ds_queue_size(btlfld_event_queue))
		{
			var activator=ds_queue_dequeue(btlfld_event_queue)
			with activator
				{
					event_user(0)
				}
	
			if action_tmtb!=noone
				{
				//run action timetable in step event
				execute_action_tmtb=true
				exit
				}
		}
	
	if ds_queue_size(btlfld_event_queue)=0
		{
			//totally done
		
			ds_queue_destroy(btlfld_event_queue)
			btlfld_event_queue=noone
		
		
			phase=EVALUATION
			event_user(phase)
		}


