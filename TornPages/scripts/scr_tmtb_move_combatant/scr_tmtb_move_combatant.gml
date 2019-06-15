///@arg combatant
///@arg sprite
///@arg desired_x
///@arg desired_y
///@arg arrival_time

var comb = argument0
var spr = argument1
var xx = argument2
var yy = argument3
var arrival_mmt = argument4
			
	//move
comb.direction=point_direction(comb.x,comb.y,xx,yy)

//speed [distance/time]
var t = arrival_mmt-moment
comb.speed=point_distance(comb.x,comb.y,xx,yy)/t

if comb.hspeed>0 {
	comb.facing_direction=1
}
if comb.hspeed<0 {
	comb.facing_direction=-1
}

//sprite
if spr!=noone {
	comb.sprite_index=spr
}