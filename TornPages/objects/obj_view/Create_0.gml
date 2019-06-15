ideal_view_width=320 
ideal_view_height=240

game_aspect_ratio = ideal_view_width/ideal_view_height

display_aspect_ratio=display_get_width()/display_get_height()
display_set_gui_size(2*ideal_view_width,2*ideal_view_height)

zoom_amount=0
currently_visible_zoom_amount=0

zooming=false
zoom_spd_min=2
zoom_spd_max=16
zoom_spd=zoom_spd_min

large_window_scale=3
small_window_scale=2
window_scale=large_window_scale

display=LARGESCREEN

#macro view view_camera[0]

//other variables
following=obj_player
screen_shake=false
shake_range=5

//enable windowed mode
event_user(0)