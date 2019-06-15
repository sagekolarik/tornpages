//check for pause

if obj_input.pause_pressed and paused=false
	{
		if !instance_exists(obj_btl_intro)
		and room!=rm_title {
		
		event_user(0)
		exit
		
		}	
	}
	
if obj_input.pause_pressed and paused=true
	{
		event_user(1)
		exit
		
	}
