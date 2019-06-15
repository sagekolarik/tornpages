spd=4
btlcd=101


facing_direction=-1
z=0

permadeath=false

engaged=false
engaged_distance=120
follow_distance=160
triggered=false
trigger_distance=10
dissappearing=false
dissappearing_spd=0.05
stunned=false
stunned_time=40
pursue=true
pursue_time=1
has_shadow=true

if ds_map_exists(global.remembered_info,script_execute(scr_save_key))
{
	instance_destroy()
}

sprite[DOWN]=spr_fluffer_idle
sprite[WALKING_DOWN]=spr_fluffer_walking
sprite[DEFEAT]=spr_megafluffer_hurt
