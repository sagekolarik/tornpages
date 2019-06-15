depth=-y-1

script_execute(scr_zchange)
script_execute(scr_scalechange)

if instance_exists(emoter) {
	x=emoter.x
	y=emoter.y
}


moment++
if moment=1 {
	scr_play_sfx(sfx)
}
if moment>=time and end_destruction {
	instance_destroy()
}
