//just using this comment to test
//here's another
// Hey! its a me Ben!
//MACROS

#macro ACTIVATE 0
#macro ADVANCE 0

#macro INIT 0
#macro ORDER 1
#macro CHOICE 2
#macro ACTION 3
#macro STATUS_FX 4
#macro BTLFLD_EVENT 5
#macro EVALUATION 6
#macro CUTSCENE 7
#macro END 8

#macro DOWN 0
#macro RIGHT 1 
#macro UP 2
#macro LEFT 3
#macro WALKING_DOWN 4
#macro WALKING_RIGHT 5
#macro WALKING_UP 6
#macro WALKING_LEFT 7
#macro JUMPING 8
#macro CLIMBING 9
#macro ATTACKING_RIGHT 10
#macro HURT_RIGHT 11
#macro VICTORY 12
#macro DEFEAT 13
#macro CORRECT_SPRITE -1

#macro WAIT 14

#macro BTLINTRO1 14
#macro BTLINTRO2 15


//dialogue
#macro HEADSUP 0
#macro DIALOGUE 1

#macro tilesize 16

//
#macro SMALLSCREEN 0
#macro LARGESCREEN 1 
#macro FULLSCREEN 2

enum npc_behaviors {

	move_down,
	move_right,
	move_up,
	move_left,
	face_down,
	face_right,
	face_up,
	face_left,
	wait,

}
