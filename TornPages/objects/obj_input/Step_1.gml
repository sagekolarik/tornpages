if gamepad_is_connected(0)
{
	script_execute(scr_input_check_gamepad)
}
if !gamepad_is_connected(0) or keyboard_activated
{
	script_execute(scr_input_check_keyboard)
}

///////////////////

if right_pressed or up_pressed or left_pressed or down_pressed
	{counter=0}

if counter=0 {scroll_paused=false}
	else {scroll_paused=true}

if right_button or up_button or left_button or down_button
{
	//trigger
	
	if right_button {trigger=0}
	if up_button {trigger=90}
	if left_button {trigger=180}
	if down_button {trigger=270}
	
	//var success=false
		
	if counter!=0
		{counter--}
	else {counter=scroll_pause_time}
}

if right_released or up_released or left_released or down_released
{
	if trigger=0 and right_released {counter=0}
	if trigger=90 and up_released {counter=0}
	if trigger=180 and left_released {counter=0}
	if trigger=270 and down_released {counter=0}
}

////////DEBUG MATERIAL

if keyboard_check_pressed(ord("R")) 
	{
		if room=rm_btl {
			room_restart()
		}
		else {
			game_restart()
		}
	}
