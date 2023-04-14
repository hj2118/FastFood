/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x, y + 1, obj_collidable)) {
	grounded = true;
}

else {
	grounded = false;
}

if (!grounded) {
	y += 5;
}

//if (obj_player.pick_up) && (collision_circle(x, y, 50, obj_player, 0, 0)) {	if (room == rm_game) {
//	GOAL--;		
//	instance_destroy();
//}




