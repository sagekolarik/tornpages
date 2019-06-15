///@function scr_destroy_if_plotvar(plotvar,value)
///@desc destroys itself if the plot variable is at the specified value

///@arg0 plotvar
///@arg1 value

var plot_variable = argument0
var value = argument1

if check_plotvar(plot_variable)=value {
	instance_destroy()
}