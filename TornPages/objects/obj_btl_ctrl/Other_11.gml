// 1 - ORDER PHASE 
	// creates the round's battle order
	alarm[0]=-1

script_execute(scr_btl_ctrl_order_calculator)

btlround++

phase=CHOICE
alarm[0]=1
