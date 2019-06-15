//cutscene junctures... run in the step event
var i = 0

if juncture=i++ {
	
	scr_change_song(bgm_gumper_theme,0.05)
	
	PLAYER=obj_player
	PARTNER=obj_player.PARTNER
	
	event_user(ADVANCE)
	
}
if juncture=i++ {
	scr_cutscene_set_sprite(PARTNER,UP,true)
	scr_cutscene_move(PLAYER,PLAYER.sprite[WALKING_UP],0,-16,true,PLAYER.spd)
}

if juncture=i++ {
	
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
	var page=0
	message.text[page++]="Um... Kai?"
}

if juncture=i++ {
	
	scr_cutscene_set_sprite(PLAYER,DOWN,true)
		
	scr_cutscene_create_message(PARTNER,CHOICE,0)
		var page=0
		message.text[page++]="When we become warriors, we'll still fish like this, right?"
		message.choice[0]="Absolutely."
		message.choice[1]="I hate fishing."
		message.spd=0.5
	
	//check for choice
	if instance_exists(obj_message)
		{
			if obj_choice_message.chosen[0]=true
			{
				with obj_choice_message {instance_destroy()}
				exit
			}
			if obj_choice_message.chosen[1]=true
			{
				juncture+=2
				with obj_choice_message {instance_destroy()}
				exit
			}
		}
		exit

}
//option1
if juncture=i++ {
		
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		var page=0
		message.text[page++]="Aw, who am I kidding?"
		message.text[page++]="We'll still fish together even when we’re like 80!"
	
}
if juncture=i++ {
	juncture+=2
}
	
if juncture=i++ {
	
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		var page=0
		message.text[page++]="What? Why are you telling me this now?!"
		message.text[page++]="I guess we need to find something new to do together."
	
}
	
if juncture=i++ {
	
	scr_cutscene_create_message(PARTNER,DIALOGUE,0)
		var page=0
		message.text[page++]="Alright, let's head back."
		message.text[page++]="We've got training to do."
			
}

if juncture=i++ {
	
	scr_cutscene_wait(5)
	
}

if juncture=i++ or skipped {
	
	scr_cutscene_set_sprite(PLAYER,UP,true)
	scr_cutscene_set_sprite(PARTNER,UP,true)
	
	instance_destroy()
	
}
