var party_member_string = argument0
//find correct party member
var party_member = script_execute(scr_get_party_statmap,party_member_string)

//special
if party_member="Kai" {party_member="Player"}

//if already full health, don't use the fruit
if party_member[? "HP"]=party_member[? "HP_max"] {
	
	var message=scr_create_message_specs(HEADSUP,0,"item_failure_message")
	message.parent=parent.parent.parent.id
	message.text[0]=party_member_string + " is already at full health."
	message.text[1]="If you eat when you're not hungry, you'll get fat."
	
	//destroy ui
	with obj_ui_list {
		if name="pause_menu_ui" {
			with child {instance_destroy()}
		}
	}
	exit
}

/*/////////////////////////////////////////////////////////////////
	Item Use - World
/*/////////////////////////////////////////////////////////////////

//remove
scr_remove_item("Jungle Fruit",1)

//heal
var heal_amount=floor(random(2))+6

party_member[? "HP"]+=heal_amount
if party_member[? "HP"]>party_member[? "HP_max"] {
	party_member[? "HP"]=party_member[? "HP_max"]
}

//display message
var message = instance_create_depth(x,y,depth,obj_message)
	message.parent=parent.parent.parent.id
	var page=0
	
	var chance=floor(random(3))
		if chance=0 {
			message.text[page]="The Fruit tasted great!"
		}
		if chance=1 {
			message.text[page++]="It wasn't very ripe."
			message.text[page]="It's like eating a juicy rock."
		}
		if chance=2 {
			message.text[page++]="It was way too ripe."
			message.text[page]="It melted in your mouth. But like, in a bad way."
		}
	
	page++
	
	message.text[page++]="It healed you "+string(heal_amount)+" HP."
	
//heal the correct party member

if party_member="Kai" {party_member="Player"}

party_member[? "HP"]+=heal_amount
if party_member[? "HP"]>party_member[? "HP_max"] {
	party_member[? "HP"]=party_member[? "HP_max"]
}

//destroy ui
with obj_ui_list {
	if name="pause_menu_ui" {
		with child {instance_destroy()}
	}
}



