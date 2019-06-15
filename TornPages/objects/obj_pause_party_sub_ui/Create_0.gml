//initialize up
enabled=true
child=noone
parent=noone
name=undefined
fnt_halign=fa_left
fnt_valign=fa_middle
font=fnt_standard
font_color=c_black
font_select_color=c_red
spacing=4
textbox=scr_get_world_textbox()
crsr_sprite=scr_get_world_cursor()
index_h=0
index_v=0


party=obj_party_stats.party

var slot = 0
repeat(ds_list_size(party)) {
	stats[slot++]=ds_map_create()
}

slot=0

ds_map_copy(stats[slot++],obj_party_stats.Player)

repeat(ds_list_size(party)-1) {
	
	var themember = party[| slot]
	
	switch themember {
	
		case "Edgar": {
			
			ds_map_copy(stats[slot],obj_party_stats.Edgar)
			break
	
		}
		case "Avi": {
			
			ds_map_copy(stats[slot],obj_party_stats.Avi)
			break
	
		}
		case "Mona": {
			
			ds_map_copy(stats[slot],obj_party_stats.Mona)
			break
	
		}
		case "Florance": {
			
			ds_map_copy(stats[slot],obj_party_stats.Florance)
			break
	
		}
		case "Shaide": {
			
			ds_map_copy(stats[slot],obj_party_stats.Edgar)
			break
	
		}
		case "Gumper": {
			
			ds_map_copy(stats[slot],obj_party_stats.Gumper)
			break
	
		}
	}
	
	slot++
	
}




/*///////////////////////////////////////////////////////////////////////
TEXT FOR HORIZONTAL
/*///////////////////////////////////////////////////////////////////////

/*///////////////////////////////////////////////////////////////////////
TEXT FOR HORIZONTAL
/*///////////////////////////////////////////////////////////////////////
var party_member=0
repeat(ds_list_size(party)) {
	
	text_h[party_member]=party[| party_member]
	
	party_member++
	
}

/*///////////////////////////////////////////////////////////////////////
TEXT FOR VERTICAL
/*///////////////////////////////////////////////////////////////////////

//set by 

guiwidth = display_get_gui_width()
guiheight = display_get_gui_height()
margin=floor(guiwidth/12)

display_x1 = margin
display_y1 = margin
display_x2 = guiwidth-margin
display_y2 = guiheight-margin


//these will be what's displayed. The list contains the order and name. The map contains the name and function
script_map=ds_map_create()