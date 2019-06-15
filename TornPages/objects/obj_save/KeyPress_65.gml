//this script finds the first chronological plotvar that's false and sets it to true, then exits.
//advances one plotvar

if check_plotvar(plotvar.completed_all_plotvars)=true {exit}

var currvar=0
repeat(plotvar.completed_all_plotvars) {
	
	if check_plotvar(currvar)=false {
		set_plotvar(currvar,true)
		plotvar_notification=true
		alarm[0]=25
		break
	}
	
	currvar++
	
}
