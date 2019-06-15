if keyboard_check_pressed(ord("Z")) {
	zoom_amount-=32
}

if keyboard_check_pressed(ord("X")) {
	zoom_amount+=32
}
if keyboard_check_pressed(ord("C")) {
	zoom_amount=0
}