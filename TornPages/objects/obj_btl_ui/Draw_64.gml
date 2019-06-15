//for this ui, it shouldnt be visible if the next ui exists
if instance_exists(child) or enabled=false
	{exit}

/*///////////////////////////////////////////////////////////////////////////////

	BATTLE UI DRAW

/*///////////////////////////////////////////////////////////////////////////////


guiwidth = display_get_gui_width()

//draw
var i=0
repeat(array_length_1d(text))
{
	if !action_viable[i] {
		color=nonviable_action_color
		alpha=nonviable_action_alpha
	}
	else {
		color=c_white
		alpha=1
	}
	
	var xpos = (i+1)*guiwidth/(array_length_1d(text)+1)
	var ypos = display_get_gui_height()*4/5

	var sprite
	if text[i]="Fight"
		{sprite=spr_fight}
	if text[i]="Ability"
		{sprite=spr_ability}
	if text[i]="Item"
		{sprite=spr_item}
	if text[i]="Flee"
		{sprite=spr_flee}
	if text[i]="Swap"
		{sprite=spr_swap}
		
	if index=i
	{
		if scale[i]<3
			{scale[i]+=scaling_factor}
	}
	else
	{
		if scale[i]>1
			{scale[i]-=scaling_factor}
	}
	
	//come forward a little
	if i=index {ypos+=floor(scale[i]*4)}
	
	var sub
	if index=i
		{sub=subimage}
	else
		{sub=0}
	
	draw_sprite_ext(sprite,sub,xpos,ypos,scale[i],scale[i],0,color,alpha)
	
	i++
}



//redraw selected one so its on top
viable=false
if text[index]="Fight"
		{if fight_viable {viable=true}}
	if text[index]="Ability"
		{if ability_viable {viable=true}}
	if text[index]="Item"
		{if item_viable {viable=true}}
	if text[index]="Flee"
		{if flee_viable {viable=true}}
	if text[index]="Swap"
		{if swap_viable {viable=true}}
	

if !viable {
		color=nonviable_action_color
		alpha=nonviable_action_alpha
}

else {
	color=c_white
	alpha=1
}

var xpos = (index+1)*guiwidth/(array_length_1d(text)+1)
	var ypos = display_get_gui_height()*4/5

	var sprite
	if text[index]="Fight"
		{sprite=spr_fight}
	if text[index]="Ability"
		{sprite=spr_ability}
	if text[index]="Item"
		{sprite=spr_item}
	if text[index]="Flee"
		{sprite=spr_flee}
	if text[index]="Swap"
		{sprite=spr_swap}
		
	if scale[index]<3
		{scale[index]+=scaling_factor}
		
	//come forward a little
	ypos+=floor(scale[index]*4)
	
	var sub=subimage
	draw_sprite_ext(sprite,sub,xpos,ypos,scale[index],scale[index],0,color,alpha)
	
draw_set_alpha(1)
	

