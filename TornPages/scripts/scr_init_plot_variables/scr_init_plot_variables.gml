enum plotvar {

game_started,

//W1
wrld1_found_village,
wrld1_met_dagromm,
wrld1_met_buskey,
wrld1_met_galinda,
wrld1_aquired_staff,
wrld1_met_asaf,
wrld1_found_dojo,
wrld1_collected_fruit,
wrld1_completed_tutorial_battle,
wrld1_festival_talk,
wrld1_asaf_swordgift,
wrld1_gave_fruit_to_lady,
wrld1_met_tuppys_mom,
wrld1_asaf_speech,
wrld1_asaf_speech_pt2,
wrld1_confront_galinda,
wrld1_galindas_plan,
wrld1_found_tuppy,
wrld1_rescued_tuppy,
wrld1_interrogation,
wrld1_interrogation_pt2,
wrld1_vendetta,
wrld1_found_great_beast,

//W2
wrld2_found_castle,
wrld2_met_edgar,

completed_all_plotvars,

}





/*////////////////////////////////////////////////////////////////////////
/Put them in the list as false
/*////////////////////////////////////////////////////////////////////////
key_plot_variables = ds_list_create()

var num = 0
var last_number=plotvar.completed_all_plotvars

repeat(last_number) {
	key_plot_variables[| num++]=false
}


scr_debug_set_plotvars()
