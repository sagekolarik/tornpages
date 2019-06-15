var success=false
var nextpartner = obj_party_stats.party[| 2]
		if nextpartner="Edgar" and obj_party_stats.Edgar[? "HP"]>0 {success=true}
		if nextpartner="Avi" and obj_party_stats.Avi[? "HP"]>0 {success=true}
		if nextpartner="Gumper" and obj_party_stats.Gumper[? "HP"]>0 {success=true}
		
if success
	{
		//set action tmtb for obj
		obj_btl_ctrl.target=id
		obj_btl_ctrl.action_tmtb=tmtb_partner_rescue
	}
