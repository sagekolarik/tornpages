if check_plotvar(plotvar.wrld1_met_buskey)=false {
	instance_destroy()
	exit
}

if check_plotvar(plotvar.wrld1_met_galinda)=true {
	instance_destroy()
	exit
}

cutscene=ctscn_wrld1_galinda_pt1