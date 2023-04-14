/// @description Insert description here
// You can write your code in this editor

globalvar GOAL1;
GOAL1 = 0;

globalvar GOAL2;
GOAL2 = 0;

globalvar GOAL3;
GOAL3 = 0;

if (room == rm_game) {
	GOAL1 = 5;
	GOAL2 = 0;
	GOAL3 = 0;
}

if (room == rm_game2) {
	GOAL1 = 0;
	GOAL2 = 3;
	GOAL3 = 0;
}

if (room == rm_game3) {
	GOAL1 = 4;
	GOAL2 = 4;
	GOAL3 = 0;
}

if (room == rm_game4) {
	GOAL1 = 0;
	GOAL2 = 5;
	GOAL3 = 3;
}

if (room == rm_game5) {
	GOAL1 = 3;
	GOAL2 = 5;
	GOAL3 = 4;
}


