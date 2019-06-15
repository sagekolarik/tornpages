event_inherited()

if global.victory {
	cutscene=ctscn_basic_victory
}

if !global.victory {
	cutscene=ctscn_basic_defeat
}
never_appear_again=false
levelup=false

