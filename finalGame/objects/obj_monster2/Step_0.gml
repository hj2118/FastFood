/// @description Insert description here
// You can write your code in this editor








// Inherit the parent event
event_inherited();

if (room == rm_game) {
	sprite_index = spr_mon_pickle;
}

else if (room == rm_game2) {
	sprite_index = spr_mon_bread2;
}

else if (room == rm_game3) {
	sprite_index = spr_mon_cabbage;
}

else if (room == rm_game4) {
	sprite_index = spr_mon_pickle;
}

else {
	sprite_index = spr_mon_potato;
}

if (hp <= 0) {
	if (potionProb <= 1) {
		instance_create_depth(x + 15, y, 0, obj_potion2);
	}
	else if (potionProb <= 1.5) {
		instance_create_depth(x + 15, y, 0, obj_potion);
	}
	
	instance_create_depth(x, y, 0, obj_item2); 
	
	instance_destroy();
}