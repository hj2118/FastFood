/// @description Insert description here
// You can write your code in this editor








// Inherit the parent event
event_inherited();


if (obj_player.pick_up) && (!obj_player.just_pickedup) && (collision_circle(x, y, 10, obj_player, 0, 0)) {
	obj_player.just_pickedup = true;
	obj_player.hp += healAmt;
	instance_destroy();
}
