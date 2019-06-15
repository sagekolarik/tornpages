/*/////////////////////////////////////////////////////////////////
	Item Use - Battle
/*/////////////////////////////////////////////////////////////////

if room=rm_btl
	{
		script_execute(scr_Potion_use_battle)
		exit
	}

/*/////////////////////////////////////////////////////////////////
	Item Use - World
/*/////////////////////////////////////////////////////////////////

//remove
scr_remove_item("Potion",1)

//display message
var message = instance_create_depth(x,y,depth,obj_message)
	message.parent=parent.parent.id
	var page=0
	message.text[page++]="The Potion tastes great. It healed you."
	
//heal
obj_party_stats.Player[? "HP"]=obj_party_stats.Player[? "HP_max"]




