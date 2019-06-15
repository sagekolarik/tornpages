/*///////////////////////////////////////////////////////////////////////

	DIRECTION

/*///////////////////////////////////////////////////////////////////////

//see if it should use directional pad or analogue stick
var directional_pad = false
if gamepad_button_check(0,gp_padr) or gamepad_button_check(0,gp_padu) or gamepad_button_check(0,gp_padl) or gamepad_button_check(0,gp_padd) {
	directional_pad=true
}

//directional pad
if directional_pad {
	
		right_button = gamepad_button_check(0,gp_padr)
		right_pressed = gamepad_button_check_pressed(0,gp_padr)
		right_released = gamepad_button_check_released(0,gp_padr)
		
		up_button = gamepad_button_check(0,gp_padu)
		up_pressed = gamepad_button_check_pressed(0,gp_padu)
		up_released = gamepad_button_check_released(0,gp_padu)

		left_button = gamepad_button_check(0,gp_padl)
		left_pressed = gamepad_button_check_pressed(0,gp_padl)
		left_released = gamepad_button_check_released(0,gp_padl)

		down_button = gamepad_button_check(0,gp_padd)
		down_pressed = gamepad_button_check_pressed(0,gp_padd)
		down_released = gamepad_button_check_released(0,gp_padd)
		
	}
//analgoue stick
if !directional_pad { 

	var deadzone_range=0.7
	gamepad_set_axis_deadzone(0,deadzone_range)

	//PRESSED

	if !right_button and gamepad_axis_value(0,gp_axislh)>0
		{right_pressed=true}
	if right_button or !gamepad_axis_value(0,gp_axislh)>0
		{right_pressed=false}
	
	if !up_button and gamepad_axis_value(0,gp_axislv)<0
		{up_pressed=true}
	if up_button or !gamepad_axis_value(0,gp_axislv)<0
		{up_pressed=false}
	
	if !left_button and gamepad_axis_value(0,gp_axislh)<0 
		{left_pressed=true}
	if left_button or !gamepad_axis_value(0,gp_axislh)<0 
		{left_pressed=false}
	
	if !down_button and gamepad_axis_value(0,gp_axislv)>0
		{down_pressed=true}
	if down_button or !gamepad_axis_value(0,gp_axislv)>0
		{down_pressed=false}

	//RELEASED

	if !right_released and right_button and !gamepad_axis_value(0,gp_axislh)>0
		{right_released=true}
	if right_released or !right_button or gamepad_axis_value(0,gp_axislh)>0
		{right_released=false}
	
	if !up_released and up_button and!gamepad_axis_value(0,gp_axislv)>0
		{up_released=true}
	if up_released or !up_button or gamepad_axis_value(0,gp_axislv)>0
		{up_released=false}
	
	if !left_released and left_button and !gamepad_axis_value(0,gp_axislh)>0
		{left_released=true}
	if left_released or !left_button or gamepad_axis_value(0,gp_axislh)>0
		{left_released=false}
	
	if !down_released and down_button and !gamepad_axis_value(0,gp_axislv)>0
		{down_released=true}
	if down_released or !down_button or gamepad_axis_value(0,gp_axislv)>0
		{down_released=false}

	//BUTTON
	left_button = gamepad_axis_value(0,gp_axislh)<0 
	down_button= gamepad_axis_value(0,gp_axislv)>0
	right_button = gamepad_axis_value(0,gp_axislh)>0
	up_button = gamepad_axis_value(0,gp_axislv)<0
}


/*///////////////////////////////////////////////////////////////////////

	OTHER

/*///////////////////////////////////////////////////////////////////////

action_button = gamepad_button_check(0,gp_face1)
action_pressed = gamepad_button_check_pressed(0,gp_face1)
action_released = gamepad_button_check_released(0,gp_face1)

back_button = gamepad_button_check(0,gp_face2)
back_pressed = gamepad_button_check_pressed(0,gp_face2)
back_released = gamepad_button_check_released(0,gp_face2)

secondary_button = gamepad_button_check(0,gp_face4)
secondary_pressed = gamepad_button_check_pressed(0,gp_face4)
secondary_released = gamepad_button_check_released(0,gp_face4)

pause_button = gamepad_button_check(0,gp_start)
pause_pressed = gamepad_button_check_pressed(0,gp_start)

select_button = gamepad_button_check(0,gp_select)
select_pressed = gamepad_button_check_pressed(0,gp_select)

