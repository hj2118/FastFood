/// @description Insert description here
// You can write your code in this editor








// Inherit the parent event
event_inherited();

if (room == rm_game4) {
	sprite_index = spr_mon_onion;
}

else {
	sprite_index = spr_mon_chicken;
}

if (hp <= 0) {
	//if (potionProb <= 1) {
	//	instance_create_depth(x + 5, y, 0, obj_potion2);
	//}
	//else 
	if (potionProb <= 2) {
		instance_create_depth(x + 15, y, 0, obj_potion);
	}
	
	instance_create_depth(x, y, 0, obj_item3); 
	
	instance_destroy();
}