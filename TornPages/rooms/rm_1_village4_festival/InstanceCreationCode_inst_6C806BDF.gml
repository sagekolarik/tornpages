if check_plotvar(plotvar.wrld1_asaf_speech_pt2)=false {
	instance_destroy()
	exit
}

if check_plotvar(plotvar.wrld1_confront_galinda)=true {
	instance_destroy()
	exit
}


cutscene=ctscn_wrld1_confront_galinda