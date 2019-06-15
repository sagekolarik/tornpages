if check_plotvar(plotvar.wrld1_rescued_tuppy)=false {
	instance_destroy(); exit
}

if check_plotvar(plotvar.wrld1_interrogation)=true {
	instance_destroy(); exit
}

cutscene=ctscn_wrld1_interrogation