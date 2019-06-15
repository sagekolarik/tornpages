///scr_get_dmg, actor, target, action_power, action_type, magic, melee, action_accuracy)


var actor = argument0
var target = argument1
var action_power=argument2
var action_type = argument3
var magic = argument4
var melee = argument5
var accuracy = argument6

var dmg = 0

//does attack miss?
var missed=false
var chance = floor(random(100))
if chance>=accuracy
	{missed=true}
//check for status effects that change accuracy chances
if missed=true
	{
		//therefore, dmg of zero will always signify it's "MISSED"
		
		/* CURRENTLY DONE IN TMTBS
		var btltxt = instance_create_depth(target.x,target.y,target.depth-1,obj_btl_txt)
		btltxt.text="Missed!"
		*/
		
		dmg=0
		return dmg
		
		exit
	}
//is attack dodged
if accuracy=0 ///INSERT FORMULA
	{
		//therefore, dmg of zero will always signify it's "MISSED"
		
		/* CURRENTLY DONE IN TMTBS
		var btltxt = instance_create_depth(target.x,target.y,target.depth-1,obj_btl_txt)
		btltxt.text="Dodged!"
		*/
		
		dmg=0
		return dmg
		
		exit
	}

//if attack is blocked
if target.stats[? "PHYSICAL_BLOCK"]=true and magic=false
	{
		//therefore, dmg of zero will always signify it's "MISSED"
		
		/* CURRENTLY DONE IN TMTBS
		var btltxt = instance_create_depth(target.x,target.y,target.depth-1,obj_btl_txt)
		btltxt.text="Blocked!"
		*/
		
		dmg=0
		return dmg
		
		exit
	}
	

/*/////////////////////////////////////////////////////////////////

	BATTLE FORMULA
	
	((((((((2A/5+2)*B)*C)/D)/3)+2)*X*Y/3)*Z)/275	
	
		A = Attacker's Level
		B = Attacker's Str or Int (depending on move)
		C = Attack's Power
		D = Defender's Fort or Res
		X = Stat Modifier
		Y = Critical Hit Modifier
		Z = Random # between 217-245


/*/////////////////////////////////////////////////////////////////

//A
var A = actor.stats[? "LVL"]

//B
if magic=false
	{
	var B = actor.stats[? "ATK"]
	}
else
	{
	var B = actor.stats[? "SPATK"]
	}

//C
var C = action_power

//D
if magic=false
	{
	var D = target.stats[? "DEF"]
	}
else
	{
	var D = target.stats[? "SPDEF"]
	}

//X [for now]
var key = string(action_type)+"_r"
var X = target.stats[? key]

//Y [for now]
var Y=1

//Z
var Z = floor(random(28))+217

//formula

/*//////////////////////////////////////////////////////////////////////////////////
--- EDIT FORMULA BELOW:
/*//////////////////////////////////////////////////////////////////////////////////

//var dmg = ((((((((2*(A/5)+2)*B)*C)/D)/3)+2)*X*Y/3)*Z)/275
var dmg = ((((((((2*(A/8)+2)*B*1.2)*C)/D)/3)+2)*X*Y/3)*Z)/240

/*//////////////////////////////////////////////////////////////////////////////////
--- EDIT FORMULA ABOVE:
/*//////////////////////////////////////////////////////////////////////////////////

dmg=ceil(dmg)
if dmg<=1 {dmg=1}
return dmg

