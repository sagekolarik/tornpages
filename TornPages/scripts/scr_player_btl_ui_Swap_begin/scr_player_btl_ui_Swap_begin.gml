if text[index]="Gumper"
	{
		obj_btl_ctrl.target=obj_btl_gumper
	}
if text[index]="Edgar"
	{
		obj_btl_ctrl.target=obj_btl_edgar
	}
if text[index]="Avi"
	{
		obj_btl_ctrl.target=obj_btl_avi
	}

with obj_btl_ctrl
{
	//scr_play_sfx(sfx_select)	
	
	action_tmtb=tmtb_swap
		
	//
	phase=ACTION
	alarm[0]=1
	exit
}
