if !file_exists("torn_pages.sav") {
	scr_cancel_noise()
}

else {
	enabled=false
	with obj_save {
		event_user(1)
	}
}