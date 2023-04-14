/// @description Insert description here
// You can write your code in this editor

//globalvar GOAL_1;
//GOAL_1 = 5;

globalvar LEVEL_COMPLETE;
LEVEL_COMPLETE = false;

globalvar GAMEOVER;
GAMEOVER = false;

highestLevel = 0;
currLevel = 0;

levelTime = 0;

spawn_index = 0;
spawn_x = [[240, 550], [490, 740], [970, 1200], [900, 1060], [1180, 1400], [1480, 1680], [1720, 1830], [1900, 2130], [0, room_width]];
spawn_y = [370, 600, 750, 180, 460, 230, 620, 345, 960];