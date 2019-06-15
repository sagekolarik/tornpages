///@arg combatant

var comb = argument0

comb.sprite_index=comb.sprite[RIGHT]
comb.speed=0
comb.x=comb.fixed_x
comb.y=comb.fixed_y
			
//face correct way
if comb.x>room_width/2 {comb.facing_direction=-1}
else {comb.facing_direction=1}