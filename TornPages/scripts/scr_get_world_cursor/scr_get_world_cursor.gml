var crsr = spr_ui_advance_cursor_old

if global.world=0 {
	crsr = spr_ui_advance_cursor_old
	return crsr
}
if global.world=1 {
	crsr = spr_ui_advance_cursor_jg
	return crsr
}
if global.world=2 {
	crsr = spr_ui_advance_cursor_old
	return crsr
}