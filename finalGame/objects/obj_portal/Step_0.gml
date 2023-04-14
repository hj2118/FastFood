/// @description Insert description here
// You can write your code in this editor

if (collision_circle(x, y, 20, obj_player, 0, 0)) {
	if (room == rm_game) {
		if (obj_player.itemType == 1) {
			GOAL1 -= obj_player.numItem;
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
		
		else {
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
	}
	
	if (room == rm_game2) {
		if (obj_player.itemType == 2) {
			GOAL2 -= obj_player.numItem;
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
		
		else {
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
	}
	
	if (room == rm_game3) {
		if (obj_player.itemType == 1) {
			GOAL1 -= obj_player.numItem;
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
		
		if (obj_player.itemType == 2) {
			GOAL2 -= obj_player.numItem;
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
		
		else {
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
	}
	
	if (room == rm_game4) {
		if (obj_player.itemType == 2) {
			GOAL2 -= obj_player.numItem;
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
		
		if (obj_player.itemType == 3) {
			GOAL3 -= obj_player.numItem;
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
		
		else {
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
	}
	
	if (room == rm_game5) {
		if (obj_player.itemType == 1) {
			GOAL1 -= obj_player.numItem;
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
		
		if (obj_player.itemType == 2) {
			GOAL2 -= obj_player.numItem;
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
		
		if (obj_player.itemType == 3) {
			GOAL3 -= obj_player.numItem;
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
		
		else {
			obj_player.itemType = 0;
			obj_player.numItem = 0;
		}
	}
}

if (GOAL1 <= 0) {
	GOAL1 = 0;
}

if (GOAL2 <= 0) {
	GOAL2 = 0;
}

if (GOAL3 <= 0) {
	GOAL3 = 0;
}


if (GOAL1 <= 0) && (GOAL2 <= 0) && (GOAL3 <= 0) {
	LEVEL_COMPLETE = true;
	obj_player.itemType = 0;
	obj_player.numItem = 0;
}





