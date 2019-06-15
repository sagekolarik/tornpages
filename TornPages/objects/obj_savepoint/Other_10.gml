// Inherit the parent event
event_inherited();

obj_party_stats.Player[? "HP"] = obj_party_stats.Player[? "HP_max"]
obj_party_stats.Player[? "MP"] = obj_party_stats.Player[? "MP_max"]

with obj_save {
	event_user(0)
}
