// 0 - INIT PHASE 
	//desc: constructs the battlefield and creates all combatants and objects
	alarm[0]=-1
	
scr_btlfld_init()

//CREATE HUD OBJECT
HUD = instance_create_depth(0,0,-1000,obj_btl_hud)
HUD.ALLY=ALLY
HUD.ENEMY=ENEMY
HUD.PLAYER=PLAYER
HUD.PARTNER=PARTNER

//default targets
default_enemy_target = ENEMY[| 0]
default_ally_target = PLAYER
default_btlobj_target = BTLOBJ[| 0]

//go to intro
intro = instance_create_depth(x,y,depth,obj_btl_intro)