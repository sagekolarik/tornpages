if check_plotvar(plotvar.wrld1_met_tuppys_mom)=true
{instance_destroy()}

text[0]="You shouldn't go there."
text[1]="It's against the rules for children to enter the jungle."

//new dialogue
var page=0 
text2[page++]="You really shouldn't go there."
text2[page++]="There are dangerous monsters."
ds_list_add(dialogue_options,text2)

//new dialogue
var page=0 
text3[page++]="Stop it!"
text3[page++]="Stay there!"
ds_list_add(dialogue_options,text3)

//new dialogue
var page=0 
text4[page++]="Kai..."
text4[page++]="You can't leave the village yet.."
text4[page++]="Stop trying."
ds_list_add(dialogue_options,text4)