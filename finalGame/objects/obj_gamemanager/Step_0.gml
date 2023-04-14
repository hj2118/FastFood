/// @description Insert description here
// You can write your code in this editor

if (room == rm_start) {
	if (keyboard_check_pressed(vk_enter)) {
		room_goto(rm_story1);
	}
	if (keyboard_check_pressed(vk_space)) {
		room_goto(rm_complete);
	}
}

else if (room == rm_story1) {
	if (keyboard_check_pressed(vk_enter)) {
		room_goto(rm_game);
		levelTime = 0;
	}
}

else if (room == rm_over) || (room == rm_complete) {
	if (keyboard_check_pressed(vk_enter)) {
		LEVEL_COMPLETE = false;
		GAMEOVER = false;
		room_goto(rm_start);
	}
}

else if (room == rm_story2) {
	if (keyboard_check_pressed(vk_enter)) {
		room_goto(rm_game4);
		LEVEL_COMPLETE = false;
		levelTime = 0;
	}
}

else {
	//levelTime++;
	//if (levelTime % 1500 == 0) {
	//	//for (i = 0; i < 2; i++) {
	//		instance_create_depth(random_range(0, room_width), random_range(0, room_height - 500), 0, obj_monster2);	
	//	//}
	//	if (room == rm_game4) {
	//		instance_create_depth(random_range(0, room_width), random_range(0, room_height - 500), 0, obj_monster3);	
	//	}
		
	//	else if (room == rm_game5) {
	//		instance_create_depth(random_range(0, room_width), random_range(0, room_height - 500), 0, obj_monster3);	
	//		instance_create_depth(random_range(0, room_width), random_range(0, room_height - 500), 0, obj_monster4);	
	//	}
	//	else {
	//		instance_create_depth(random_range(0, room_width), random_range(0, room_height - 500), 0, obj_monster1);
	//	}	
	//}
	
	if (instance_number(obj_monster2) < 4) {
		spawn_index = random_range(0, 8);
		instance_create_depth(random_range(spawn_x[spawn_index][0], spawn_x[spawn_index][1]), spawn_y[spawn_index], 0, obj_monster2);	
	}
	
	if (room == rm_game4) {
		if (instance_number(obj_monster3) < 4) {
			spawn_index = random_range(0, 8);
			instance_create_depth(random_range(spawn_x[spawn_index][0], spawn_x[spawn_index][1]), spawn_y[spawn_index], 0, obj_monster3);	
		}
	}
	
	else if (room == rm_game5) {
		if (instance_number(obj_monster3) < 4) {
			spawn_index = random_range(0, 8);
			instance_create_depth(random_range(spawn_x[spawn_index][0], spawn_x[spawn_index][1]), spawn_y[spawn_index], 0, obj_monster3);	
		}
		
		if (instance_number(obj_monster4) < 3) {
			spawn_index = random_range(0, 8);
			instance_create_depth(random_range(spawn_x[spawn_index][0], spawn_x[spawn_index][1]), spawn_y[spawn_index], 0, obj_monster4);	
		}
	}
	
	else {
		if (instance_number(obj_monster1) < 5) {
			spawn_index = random_range(0, 8);
			instance_create_depth(random_range(spawn_x[spawn_index][0], spawn_x[spawn_index][1]), spawn_y[spawn_index], 0, obj_monster1);	
		}
	}	
}

if (room == rm_game) && (LEVEL_COMPLETE) {
	room_goto(rm_game2);
	LEVEL_COMPLETE = false;
	levelTime = 0;
}

if (room == rm_game2) && (LEVEL_COMPLETE) {
	room_goto(rm_game3);
	LEVEL_COMPLETE = false;
	levelTime = 0;
}

if (room == rm_game3) && (LEVEL_COMPLETE) {
	room_goto(rm_story2);
	LEVEL_COMPLETE = false;
	levelTime = 0;
}

if (room == rm_game4) && (LEVEL_COMPLETE) {
	room_goto(rm_game5);
	LEVEL_COMPLETE = false;
	levelTime = 0;
}

if (room == rm_game5) && (LEVEL_COMPLETE) {
	room_goto(rm_complete);
	LEVEL_COMPLETE = false;
	levelTime = 0;
}

if (room != rm_over) {
	if (GAMEOVER) {
		room_goto(rm_over);	
	}
}

if (keyboard_check_pressed(vk_enter)) {
	if (room == rm_game) {
		room_goto(rm_game2);
		levelTime = 0;
	}

	else if (room == rm_game2) {
		room_goto(rm_game3);
		levelTime = 0;
	}
	
	else if (room == rm_game3) {
		room_goto(rm_story2);
		levelTime = 0;
	}
	
	else if (room == rm_story2) {
		room_goto(rm_game4);
		levelTime = 0;
	}

	else if (room == rm_game4) {
		room_goto(rm_game5);
		levelTime = 0;
	}
	
	else if (room == rm_game5) {
		room_goto(rm_over);
		levelTime = 0;
	}
}


// levels
if (room == rm_game) {
	currLevel = 1;
	highestLevel = currLevel;
}

else if (room == rm_game2) {
	currLevel = 2;
	highestLevel = currLevel;
}

else if (room == rm_game3) {
	currLevel = 3;
	highestLevel = currLevel;
}

else if (room == rm_game4) {
	currLevel = 4;
	highestLevel = currLevel;
}

else if (room == rm_game5) {
	currLevel = 5;
	highestLevel = currLevel;
}



