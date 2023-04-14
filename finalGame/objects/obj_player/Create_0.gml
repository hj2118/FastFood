/// @description Insert description here
// You can write your code in this editor

x = room_width / 2;
y = room_height - 150;

attack = false;
attack_time = 0;
pick_up = false;
pickup_time = 0;
just_pickedup = false;

attack_str = 70;

hspd_max = 3;
grav_amt= 0.3;

num_jump = 1;
jump_max = 7;
jump_hold = 0.25 * room_speed;
jump_pressed_timer = 60;
just_jumped = false;
jump_pressed = false;
jumps_spent = 0;

hspd = 0;
vspd = 0;
grounded = false;
image_speed = 1;

x_remainder = 0;
y_remainder = 0;

bumped_in = false;

L_pressed = false
L_released = false
L_hold = false

R_pressed = false
R_released = false
R_hold = false

jump_keypressed = false
jump_released = false
jump_keyhold = false

itemType = 0;
numItem = 0;

hp_max = 100;
hp = hp_max;
got_hit = false;
hit_timer = 0;

nearest_monster = 0

facingLeft = false;