/// @description Insert description here
// You can write your code in this editor

spd = 2;
max_time = 150;

hspd = random_range((-1) * spd, spd);
vspd = 0;

timer = 0;

hp_max = 100;
hp = hp_max;

attack_str = 10;

//damaged = false;

grounded = false;

damaged = false;
damaged_time = 0;

potionProb = random_range(0, 10);

x_remainder = 0;
y_remainder = 0;

bumped_in = false;