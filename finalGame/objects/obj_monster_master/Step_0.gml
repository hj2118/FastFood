/// @description Insert description here
// You can write your code in this editor



x += vspd;

timer++;

if (timer > max_time) {
	timer = 0;
	hspd = random_range((-1) * spd, spd);;
}

//if (x < 20) || (x > room_width - 20) {
//	xspd = 0;
//}

if (x < 20) {
	x += room_width;
}

if (x > room_width - 20) {
	x -= room_width;
}

if (place_meeting(x, y + 1, obj_collidable)) {
	grounded = true;
}

else {
	grounded = false;
}

if (!grounded) {
	y += 5;
}

//MoveCollide();
var total_hspd = hspd + x_remainder    //apply the remainders we saved last frame
var total_vspd = vspd + y_remainder
	
x_remainder = total_hspd % 1  //save the remainder for next frame
y_remainder = total_vspd % 1
	
// now let's apply horizontal movement
var hspd_floored = floor(abs(total_hspd)) * sign(total_hspd) //cut off the remainder for this frame
	
//if (hspd_floored != 0){
for (var i = 0; i < abs(hspd_floored); i++) {
	if (place_meeting(x+sign(hspd_floored), y, obj_hitbox)){
		hspd = 0
		x_remainder = 0
				
		bumped_in = true
				
		break //leave the for loop if there's a collidable object 1 pixel ahead
	}
	x += sign(hspd_floored) // move one pixel in our current direction for each iteration of for loop
}

if (bumped_in) {
	bumped_in = false;
	
	hspd = -hspd;
}

// damage
if (!damaged) {	
	if (obj_player.attack) && (distance_to_object(obj_player) < 30) {
		if ((obj_player.facingLeft) && (x <= obj_player.x)) || ((!obj_player.facingLeft) && (x >= obj_player.x)) {
			hp -= obj_player.attack_str;
			damaged = true;
		}
	}
}

if (damaged) {
	damaged_time++;
}

if (damaged_time > 30) {
	damaged = false;
	damaged_time = 0;
}



