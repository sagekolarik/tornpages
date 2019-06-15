if obj_btl_ctrl.btlround=startround+roundcount
{
	with obj_btl_ctrl
		{
			partner_fixed_y=other.y
			partner_fixed_x=other.x

			action_tmtb=tmtb_partner_respawn
	
			//run action timetable in step event
			execute_action_tmtb=true
		}

	instance_destroy()
}
