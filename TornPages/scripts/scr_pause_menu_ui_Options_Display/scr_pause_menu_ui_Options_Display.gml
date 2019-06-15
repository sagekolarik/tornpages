
child = instance_create_depth(x,y,depth-1,obj_pause_display_options_sub_ui)
child.parent=id
with child {
	
	name="pause_ui_display"
	display_x=display_get_gui_width()/4
	display_y=display_get_gui_height()/4

	//text is defined by object

}