switch global.btlcd {

	case 101: {
		
		//set up variables
		tutorial_cutscenes_completed = obj_btl_rosai_training.tutorial_cutscenes_completed
			var xx=tutorial_cutscenes_completed
		PLAYER=obj_btl_ctrl.PLAYER
		PARTNER=obj_btl_ctrl.PARTNER
		combatant=obj_btl_ctrl.combatant

		var i=0
		if tutorial_cutscenes_completed=i++ {
			//start with this, if it's already been done it'll delete itself
			scene = instance_create_depth(xx,y,depth,obj_cutscene)
				if instance_exists(scene) {
					scene.cutscene=ctscn_wrld1_tutorial_pt1
				}
		}
		
		if tutorial_cutscenes_completed=i++ and combatant=PLAYER {
			//start with this, if it's already been done it'll delete itself
			scene = instance_create_depth(xx,y,depth,obj_cutscene)
				if instance_exists(scene) {
					scene.cutscene=ctscn_wrld1_tutorial_pt2
				}
		}
		if tutorial_cutscenes_completed=i++ and combatant=PARTNER {
			//start with this, if it's already been done it'll delete itself
			scene = instance_create_depth(xx,y,depth,obj_cutscene)
				if instance_exists(scene) {
					scene.cutscene=ctscn_wrld1_tutorial_pt3
				}
		}
		
		if tutorial_cutscenes_completed=i++ and combatant=PLAYER {
			//start with this, if it's already been done it'll delete itself
			scene = instance_create_depth(xx,y,depth,obj_cutscene)
				if instance_exists(scene) {
					scene.cutscene=ctscn_wrld1_tutorial_pt4
				}
		}
		
		if tutorial_cutscenes_completed=i++ and combatant=PLAYER and PLAYER.stats[? "MP"]!=PLAYER.stats[? "MP_max"] {
			//start with this, if it's already been done it'll delete itself
			scene = instance_create_depth(xx,y,depth,obj_cutscene)
				if instance_exists(scene) {
					scene.cutscene=ctscn_wrld1_tutorial_pt5
				}
		}
		if tutorial_cutscenes_completed=i++ and combatant=PARTNER {
			//start with this, if it's already been done it'll delete itself
			scene = instance_create_depth(xx,y,depth,obj_cutscene)
				if instance_exists(scene) {
					scene.cutscene=ctscn_wrld1_tutorial_pt6
				}
		}
		
		
		
		break
		
	}
	
	
	
}