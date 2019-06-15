if display=FULLSCREEN {
	event_user(1)
	exit
}
if display=LARGESCREEN {
	event_user(0)
	exit
}
if display=SMALLSCREEN {
	event_user(0)
	exit
}