/// @description Insert description here
// You can write your code in this editor








// Inherit the parent event
event_inherited();

if (hp <= 0) {
	if (potionProb <= 0.7) {
		instance_create_depth(x + 15, y, 0, obj_potion2);
	}
	else if (potionProb <= 2) {
		instance_create_depth(x + 15, y, 0, obj_potion);
	}
	
	instance_create_depth(x, y, 0, obj_item1); 
	
	instance_destroy();
}


if (room == rm_game3) {
	sprite_index = spr_mon_tomato;
}

else if (room == rm_game5) {
	sprite_index = spr_mon_bread1;
}

else {
	sprite_index = spr_mon_potato;
}