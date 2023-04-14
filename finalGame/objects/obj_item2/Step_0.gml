/// @description Insert description here
// You can write your code in this editor








// Inherit the parent event
event_inherited();

if (room == rm_game) {
	sprite_index = spr_item_pickle;
}

else if (room == rm_game2) {
	sprite_index = spr_item_bread2;
}

else if (room == rm_game3) {
	sprite_index = spr_item_cabbage;
}

else if (room == rm_game4) {
	sprite_index = spr_item_pickle;
}

else {
	sprite_index = spr_item_potato;
}

if (obj_player.pick_up) && (!obj_player.just_pickedup) && (collision_circle(x, y, 10, obj_player, 0, 0)) {
	if (obj_player.itemType == 2) {
		obj_player.numItem++;
	}
	else {
		obj_player.itemType = 2;
		obj_player.numItem = 1;
	}
	obj_player.just_pickedup = true;
	instance_destroy();
}
