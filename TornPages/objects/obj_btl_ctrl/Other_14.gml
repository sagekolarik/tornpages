// 4 STATUS_FX PHASE
	// status ailments (for the current combatant)
	alarm[0]=-1
	
moment=0
	
//delete actcmd and child if it exists
if instance_exists(actcmd)
	{with actcmd {instance_destroy()}}
if instance_exists(child)
	{with child {instance_destroy()}}

//check for combatant's status fx

if !instance_exists(combatant) and ds_exists(fx_queue,ds_type_queue)
	{
		ds_queue_destroy(fx_queue)
		fx_queue=noone
		phase=BTLFLD_EVENT
		event_user(phase)
		exit
	}

//set the stacks
if fx_queue=noone {
	
	fx_queue = ds_queue_create()
	
	if combatant.stats[? "POI"]=true
		{ds_queue_enqueue(fx_queue,tmtb_statusfx_poi)}
		
	if combatant.stats[? "SAD"]=true
		{ds_queue_enqueue(fx_queue,tmtb_statusfx_poi)}
}

//is anybody dead?
script_execute(scr_btl_ctrl_defeatcheck)

//after being set, run the stacks
if ds_queue_size(fx_queue)>0
	{
		script_execute(scr_btl_ctrl_statusfx_actiontmtb_set)
		
		//run tmtb in step
		execute_action_tmtb=true
		
		exit
	}
if ds_queue_size(fx_queue)=0
{
	ds_queue_destroy(fx_queue)
	fx_queue=noone
	phase=BTLFLD_EVENT
	event_user(phase)
}


