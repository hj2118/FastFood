/// @description Insert description here
// You can write your code in this editor


if (obj_player.facingLeft) {
	x = obj_player.x - 20;
}
else {
	x = obj_player.x + 20;
}

y = obj_player.y;


if (place_meeting(x, y, obj_collidable)) {
	collide = true;
}

else {
	collide = false;
}





