///arg0 failure_text

failure_text=argument0

//display a failure message if there's a specific failure
	if failure_text!="not specified --- do not display anything" {
				var message = instance_create_depth(x,y,depth,obj_passive_message)
					draw_set_font(fnt_standard)
					message.name="action_failure_message"
					message.text[0]=failure_text
					message.margin = string_height(message.text[0])
					message.display_x = display_get_gui_width()/2 - string_width(message.text[0])/2 - message.margin
					message.display_w = string_width(message.text[0]) + 2*message.margin
					message.display_y = display_get_gui_height()/3 - string_height(message.text[0])/2 - message.margin
					message.display_h = string_height(message.text[0])+2*message.margin
					message.fnt_halign=fa_center
					message.fnt_valign=fa_middle
		}
			
scr_play_sfx(sfx_deselect)
obj_btl_target_ui.enabled=true