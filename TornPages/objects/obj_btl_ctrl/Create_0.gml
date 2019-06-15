// 0 - INIT variables
ALLY=ds_list_create()
ENEMY=ds_list_create()
BTLOBJ=ds_list_create()
CAM=obj_view
intro_message=noone
btl_music_fadeout_spd=0.2
global.victory=false
ally_startx = -64
enemy_startx = room_width+64
battle_song=noone

randomize()

btlround=0
moment=0

scr_btl_coordinate_codes()

// 1 - ORDER variables
order = ds_list_create()
current_combatant = 0 //index for who's turn it is
combatant=noone //the combatant who's current turn it is
combatant_num=0 //number of able-bodied combatants

// 2 - CHOICE variables
CURSOR=noone
cursor_active=false
target=noone
action_tmtb=noone
new_action_tmtb=noone
execute_action_tmtb=false
action_wait_amount=10
child=noone
possible_targets = ds_list_create()
default_enemy_target = noone
default_ally_target = noone
textbox=spr_textbox1


fight_viable=true
ability_viable=true
item_viable=true
flee_viable=true
swap_viable=true
action_viable_failure_message="You can't do that right now."


// 3 - ACTION variables
DMG=0
DMG_list=ds_list_create()
stat_alt=false
actcmd=noone
execute_action_tmtb=false
actcmd=noone
moment=0
partner_fixed_y=y
partner_fixed_x=x
tmtb_kmmt=ds_list_create()


// 4 - STATUS_FX variables
fx_queue=noone

// 5 - BTLFLD_EVENT variables
btlfld_event_queue=noone

// 6 - EVALUATION variables

// 7 - CUTSCENE variables
cutscene_finder = instance_create_depth(x,y,depth,obj_btl_cutscene_finder)

// 8 - END variables
net_EXP=0
fatal=true
battle_end=false

//NOW GO FORTH AND INIT!
phase=INIT
event_user(phase)




