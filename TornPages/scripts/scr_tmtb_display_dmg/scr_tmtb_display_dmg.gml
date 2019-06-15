///@arg dmg
///@arg target

var dmg=argument0
var targ=argument1


var btltxt = instance_create_depth(targ.x,targ.y,targ.depth-1,obj_btl_txt)
				
			if dmg>0 {
				btltxt.text="-"+string(dmg)
			}
			if dmg<0 {
					btltxt.text="+"+string(dmg)
					btltxt.color=c_green		
			}
			if dmg=0 {
				
				btltxt.text="Missed"
				
				//special cases
				if targ.stats[? "PHYSICAL_BLOCK"]=true {
					btltxt.text="Blocked!"
				}
			}