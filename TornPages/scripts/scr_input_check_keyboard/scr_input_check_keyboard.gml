///GAMEPAD and KEYBOARD controls
//Use this script in the step event before checking the keyboard

//direction

gamepad_set_axis_deadzone(0,0.7)

left_released = keyboard_check_released(vk_left) 
left_button = keyboard_check(vk_left) 
left_pressed = keyboard_check_pressed(vk_left)

right_button = keyboard_check(vk_right) 
right_pressed = keyboard_check_pressed(vk_right)
right_released = keyboard_check_released(vk_right)

up_button = keyboard_check(vk_up)
up_pressed = keyboard_check_pressed(vk_up)
up_released = keyboard_check_released(vk_up)

down_button = keyboard_check(vk_down)
down_pressed = keyboard_check_pressed(vk_down)
down_released = keyboard_check_released(vk_down)

//

action_button = keyboard_check(vk_enter)
action_pressed = keyboard_check_pressed(vk_enter)
action_released = keyboard_check_released(vk_enter)

back_button = keyboard_check(vk_shift)
back_pressed = keyboard_check_pressed(vk_shift)
back_released = keyboard_check_released(vk_shift)

secondary_button = keyboard_check(vk_space)
secondary_pressed = keyboard_check_pressed(vk_space)
secondary_released = keyboard_check_released(vk_space)

pause_button = keyboard_check(ord("P"))
pause_pressed = keyboard_check_pressed(ord("P")) 

select_button = keyboard_check(vk_escape) 
select_pressed = keyboard_check_pressed(vk_escape) 

//
