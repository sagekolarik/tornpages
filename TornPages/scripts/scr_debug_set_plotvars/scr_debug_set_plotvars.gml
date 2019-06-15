/*////////////////////////////////////////////////////////////////////////
//DEBUG EDITS
/*////////////////////////////////////////////////////////////////////////

/*
	whatever you set "set_all_true_until", it will make every variable true up until and including the one you wrote.
*/




var set_all_true_until = plotvar.wrld1_found_village

var num = 0
repeat(1+set_all_true_until) {
	key_plot_variables[| num++]=true
}

