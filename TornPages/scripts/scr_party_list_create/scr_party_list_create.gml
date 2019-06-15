/*//////////////////////////////////////////////////////////

				PARTY LIST
				
*////////////////////////////////////////////////////////////

party=ds_list_create()
ds_list_add(party,Player[? "NAME"])

//if the game has already been started - not a new save file
if check_plotvar(plotvar.game_started)=false {
	ds_list_add(party,Gumper[? "NAME"])

	exit
}


//if it's not a new game

if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=false {
	ds_list_add(party,Gumper[? "NAME"])
}

if check_plotvar(plotvar.wrld1_completed_tutorial_battle)=true {
	//don't add gumper
}


/*
//RANDOM MODIFICATIONS


/*
ds_list_add(party,Edgar[? "NAME"])

/*/

