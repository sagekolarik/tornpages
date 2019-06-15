if check_plotvar(plotvar.wrld1_interrogation_pt2)=false {
	instance_destroy(); exit
}

if check_plotvar(plotvar.wrld1_vendetta)=true {
	instance_destroy(); exit
}

cutscene=ctscn_wrld1_vendetta

