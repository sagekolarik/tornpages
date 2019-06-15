if moment=0 {
	//init
	mmt_slowdown=10
	mmt_speedup=28
	mmt_party_action=floor((mmt_speedup+mmt_slowdown)/2)
	mmt_enemy_action=mmt_party_action+10
	mmt_fade=55
	mmt_ally_run=mmt_fade+15
	mmt_ally_stop_running=mmt_ally_run+10
	mmt_enemy_run=mmt_ally_run+10
	mmt_enemy_stop_running=mmt_enemy_run+10
	mmt_btlstart=mmt_enemy_stop_running+10

	mmt_intro_message=mmt_enemy_stop_running
	
	var i=0
	//first round of intro images
	repeat(ds_list_size(ALLY)) {
		
		var inst = ALLY[| i]
		inst.sprite_index=inst.sprite[BTLINTRO1]
		
		i++
	}
	var i=0
	//first round of intro images
	repeat(ds_list_size(ENEMY)) {
		
		var inst = ENEMY[| i]
		inst.sprite_index=inst.sprite[BTLINTRO1]
		
		i++
	}
	
}

if moment<mmt_slowdown {
	spd=spd_fast
}

if moment>=mmt_slowdown and moment<=mmt_speedup {
	if spd>spd_slow {spd-=transition_spd}
}

if moment=mmt_party_action {
	
	var i=0
	//second round of intro images
	repeat(ds_list_size(ALLY)) {
		
		var inst = ALLY[| i]
		inst.sprite_index=inst.sprite[BTLINTRO2]
		
		i++
	}
	
}

if moment=mmt_enemy_action {
	
	var i=0
	//second round of intro images
	repeat(ds_list_size(ENEMY)) {
		
		var inst = ENEMY[| i]
		inst.sprite_index=inst.sprite[BTLINTRO2]
		
		i++
	}
	
}

if moment>mmt_speedup {
	if spd<spd_fast {spd+=transition_spd}
}

if moment>mmt_fade {
	image_alpha-=fadeout_spd
}

if moment=mmt_ally_run {
	
	var i=0
	repeat(ds_list_size(ALLY)) {
		var inst = ALLY[| i]
		
		inst.sprite_index=inst.sprite[WALKING_RIGHT]
		
		inst.direction=point_direction(inst.x,inst.y,inst.fixed_x,inst.fixed_y)
		inst.speed=point_distance(inst.x,inst.y,inst.fixed_x,inst.fixed_y)/(mmt_ally_stop_running-mmt_ally_run)
		
		i++
		
	}
	
}

if moment=mmt_ally_stop_running {
	
	var i=0
	repeat(ds_list_size(ALLY)) {
		var inst = ALLY[| i]
		
		inst.sprite_index=inst.sprite[RIGHT]
		
		inst.speed=0
		inst.x=inst.fixed_x
		inst.y=inst.fixed_y
		
		i++
		
	}
	
}

if moment=mmt_enemy_run {
	
	var i=0
	repeat(ds_list_size(ENEMY)) {
		var inst = ENEMY[| i]
		
		inst.sprite_index=inst.sprite[WALKING_RIGHT]
		
		inst.direction=point_direction(inst.x,inst.y,inst.fixed_x,inst.fixed_y)
		inst.speed=point_distance(inst.x,inst.y,inst.fixed_x,inst.fixed_y)/(mmt_enemy_stop_running-mmt_enemy_run)
		
		i++
	}
	
}

if moment=mmt_enemy_stop_running {
	
	var i=0
	repeat(ds_list_size(ENEMY)) {
		var inst = ENEMY[| i]
		
		inst.sprite_index=inst.sprite[RIGHT]
		
		inst.speed=0
		inst.x=inst.fixed_x
		inst.y=inst.fixed_y
		
		i++
		
	}
	
}

if moment=mmt_intro_message {
	
	if intro_message!=noone {
		var message = instance_create_depth(x,y,depth-1,obj_passive_message)
				message.wait_time=30
				message.name="intro_message"
				message.display_x=message.message_top_x
				message.display_y=message.message_top_y
				message.display_h=message.message_top_h
				message.display_w=message.message_top_w
				var page=0
				message.text[page++]=string(intro_message)
	}
}

if moment=mmt_btlstart {
	
	with obj_btl_ctrl {
		phase=EVALUATION
		alarm[0]=1
		obj_btl_hud.display=true
	}
	instance_destroy()
	
}


//change positions while still visible
if image_alpha>0 {
	var i=0
	repeat(ds_list_size(ALLY)) {
		ALLY_display_pos_x[| i]+=spd
		i++
	}

	var i=0
	repeat(ds_list_size(ENEMY)) {
		ENEMY_display_pos_x[| i]-=spd
		i++
	}
}

//continue
moment++