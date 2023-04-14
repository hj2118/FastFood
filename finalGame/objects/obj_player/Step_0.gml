/// @description Insert description here
// You can write your code in this editor

//if (hspd == 0) {
//	sprite_index = spr_player;
//}

vspd += grav_amt

if (keyboard_check_pressed(vk_right)) {
	R_pressed = true;
	R_hold = true;
}

if (keyboard_check_released(vk_right)) {
	R_released = true;
	R_hold = false;
}

if (keyboard_check_pressed(vk_left)) {
	L_pressed = true;
	L_hold = true;
}

if (keyboard_check_released(vk_left)) {
	L_released = true;
	L_hold = false;
}

if (keyboard_check_pressed(vk_space)) {
	jump_keypressed = true;
	jump_keyhold = true;
}

if (keyboard_check_released(vk_space)) {
	jump_released = true;
	jump_keyhold = false;
}

if (R_hold) && (!obj_player_hitbox.collide) {
	//if (hspd < hspd_max) {
	//	hspd += accel;
	//}
	//else {
	//	hspd = hspd_max;
	//}
	
	facingLeft = false;
	
	x += hspd_max;
	
	image_xscale = 1;
	
	if (grounded) {
		sprite_index = spr_player_run;
	}
}

else if (L_hold) && (!obj_player_hitbox.collide) {
	//if (hspd > -hspd_max) {
	//	hspd -= accel;
	//}
	//else {
	//	hspd = -hspd_max;
	//}
	
	facingLeft = true;

	x -= hspd_max;
	
	image_xscale = -1;
	
	if (grounded) {
		sprite_index = spr_player_run;
	}
}

else {
	sprite_index = spr_player;
}

// jump
if (jump_keyhold) {
	jump_pressed = true;
	alarm[1] = jump_pressed_timer;
}

if (grounded) {
	vspd = 0;
}

else {
	if (just_jumped) {
		if (jump_keyhold) {
			jump_pressed = false;
			vspd = -jump_max;
		}
		else {
			just_jumped = false;
			alarm[0] = 0;
		}
	}
	
	sprite_index = spr_player_jump;
}

if (jump_pressed) && (jumps_spent < num_jump) {
	jump_pressed = false;
	vspd = -jump_max;
	
	if (!grounded) {
		jumps_spent += 1;
	}
	
	if (jump_hold > 0) {
		just_jumped = true;
		alarm[0] = jump_hold;
	}
	
	grounded = false;
}
		

//if (jump_keypressed && !just_jumped) {
//	sprite_index = spr_player_jump;
//	jump_pressed = false;
//	vspd -= jump_max;
//	grounded = false;
//	just_jumped = true;
//}

if (place_meeting(x, y + 1, obj_collidable)) {
	grounded = true;
	jumps_spent = 0;
	//jump_keypressed = false;
	//just_jumped = false;
}

else {
	grounded = false;
}

// attack
if (keyboard_check(vk_control)) {
	attack = true;
}

// pick up
if (keyboard_check(ord("Z"))) {
	pick_up = true;
}
	
// TODO: 	
if (attack) {
	// if distance to a monster is less than certain amount, then the monster gets hurt
	sprite_index = spr_player_attack;
	attack_time++;
}

//attack = false;
if (attack_time > 20) {
	attack = false;
	attack_time = 0;
}

if (pick_up) {
	pickup_time++;
}

if (pickup_time > 20) {
	pick_up = false;
	pickup_time = 0;
	just_pickedup = false;
}

if (!got_hit) {
	if (collision_circle(x, y, 20, obj_monster_master, 0, 0)) {
		got_hit = true;
		nearest_monster = instance_nearest(x, y, obj_monster_master);
		
		if (nearest_monster.object_index == obj_monster1) {
			hp -= obj_monster1.attack_str;
		}
		
		else if (nearest_monster.object_index == obj_monster2) {
			hp -= obj_monster2.attack_str;
		}
		
		else if (nearest_monster.object_index == obj_monster3) {
			hp -= obj_monster3.attack_str;
		}
		
		else if (nearest_monster.object_index == obj_monster4) {
			hp -= obj_monster4.attack_str;
		}
	}
	
}

if (got_hit) {
	hit_timer++;
	//if (!collision_circle(x, y, 20, nearest_monster, 0, 0)) {
	//	got_hit = false;
	//}
}

if (hit_timer > 30) {
	got_hit = false;
	hit_timer = 0;
}

if hp <= 0 {
	GAMEOVER = true;
}

MoveCollide();

//if (keyboard_check(vk_right)) || (keyboard_check(vk_left)) || (keyboard_check(vk_space)) {
//	MoveCollide();
//}

L_pressed = false;
L_released = false;
R_pressed = false;
R_released = false;
jump_keypressed = false;
jump_released = false;

var pc;
pc = (hp / hp_max) * 100;
draw_healthbar(x - 20, y, x + 20, y + 20, pc, c_black, c_red, c_lime, 0, true, true)

// player move up when stuck in the platform
//if (collision_circle(x, y, 32, obj_collidable, false, true)) {
////	nearWall = instance_nearest(x,y,obj_collidable)
////	y = nearWall.bbox_top
	
//	y -= 1;
//}


