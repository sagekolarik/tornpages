/*///////////////////////////////////////////////////////////////
		POSITIONS
/*///////////////////////////////////////////////////////////////

//overworld message
message_top_x = display_get_gui_width()/5
message_top_w = display_get_gui_width()-2*message_top_x
message_top_y = display_get_gui_height()/10
message_top_h = display_get_gui_height()/4

message_bot_x = display_get_gui_width()/5
message_bot_w = display_get_gui_width()-2*message_bot_x
message_bot_y = display_get_gui_height()/10
message_bot_h = display_get_gui_height()/4

//dialogue

//top
dialogue_top_x = display_get_gui_width()/10
dialogue_top_w = display_get_gui_width()-2*dialogue_top_x
dialogue_top_y = display_get_gui_height()/12
dialogue_top_h = display_get_gui_height()/4

//bot
dialogue_bot_x = display_get_gui_width()/10
dialogue_bot_w = display_get_gui_width()-2*dialogue_bot_x
dialogue_bot_h = display_get_gui_height()/4
dialogue_bot_y = display_get_gui_height()-(display_get_gui_height()/12) - dialogue_bot_h

//battle

battle_top_x = display_get_gui_width()/5
battle_top_w = display_get_gui_width()-2*battle_top_x
battle_top_y = display_get_gui_height()/12
battle_top_h = display_get_gui_height()/4

battle_bot_x = display_get_gui_width()/5
battle_bot_w = display_get_gui_width()-2*battle_bot_x
battle_bot_h = display_get_gui_height()/5
battle_bot_y = display_get_gui_height() - (display_get_gui_height()/12) - battle_bot_h 

//display x, y, w, and h
display_x = message_top_x
display_w = message_top_w
display_y = message_top_y
display_h = message_top_h
