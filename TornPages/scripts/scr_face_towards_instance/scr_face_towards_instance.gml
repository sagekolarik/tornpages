///@arg0 facing_inst
///@arg1 inst_to_face_toward

var facing_inst = argument0
var inst_to_face_toward = argument1


//see if it should face horizontally or vertically
var vertical_face=false
var horizontal_face=false

var x_difference = abs(facing_inst.x-inst_to_face_toward.x)
var y_difference = abs(facing_inst.y-inst_to_face_toward.y)
if x_difference>y_difference {
	horizontal_face=true
}
else {
	vertical_face=true
}

//let's face it...
var facing_direction = DOWN
if vertical_face {
	if facing_inst.y >= inst_to_face_toward.y {
		facing_direction=UP
	}
	else {
		facing_direction=DOWN
	}
}

if horizontal_face {
	if facing_inst.x >= inst_to_face_toward.x {
		facing_direction=LEFT
	}
	else {
		facing_direction=RIGHT
	}
}

//apply facing
facing_inst.sprite_index=facing_inst.sprite[facing_direction]
facing_inst.facing=facing_direction
