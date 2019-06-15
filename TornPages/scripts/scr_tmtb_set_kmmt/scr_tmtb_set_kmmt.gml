///@description - Adds the input time to the previous item's time on the list

///@arg additional_time

var additional_time = argument0

var current_list_index = ds_list_size(tmtb_kmmt)
var previous_list_index=current_list_index-1
if previous_list_index>=0 {
	var previous_time = tmtb_kmmt[| previous_list_index]
}
else {
	previous_time=0
}

tmtb_kmmt[| current_list_index]=additional_time+previous_time

return tmtb_kmmt[| current_list_index]

