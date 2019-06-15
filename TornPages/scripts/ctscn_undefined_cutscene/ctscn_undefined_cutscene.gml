//cutscene junctures... run in the step event
var i = 0

if juncture=i++
	{
		if !instance_exists(obj_message)
		{
			
		var dialogue = script_execute(scr_create_message_specs,DIALOGUE,noone,"cutscene_dialogue")
			dialogue.spd=1
			dialogue.name_banner="Devs"
			var page=0
			dialogue.text[page++]="It is time for a cutscene..."
			dialogue.text[page++]="But unfortunately, it is undefined."
		}
	}
if juncture=i++
	{
		script_execute(scr_cutscene_wait,5)
	}
if juncture=i++
	{
		if instance_exists(obj_player) {
			obj_player.sprite_index=obj_player.sprite[VICTORY]
		}
		script_execute(scr_cutscene_wait,30)
	}
if juncture=i++
	{
		if instance_exists(obj_player) {
			obj_player.sprite_index=obj_player.sprite[DOWN]
		}
		script_execute(scr_cutscene_wait,10)
	}
if juncture=i++
	{
		//end cutscene
		cutscene_completed=true
		instance_destroy()
	}

