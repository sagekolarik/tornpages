if stats[? "STUN"]=true
{
	//stop being stunned
	stats[? "STUN"]=false

	with obj_btl_ctrl
		{
			phase=STATUS_FX
			alarm[0]=1
			
			return false
			exit
		}
}

//if you got this far...
return true
