/// @description Insert description here
// You can write your code in this editor








// Inherit the parent event
event_inherited();

if (hp <= 0) {
	//if (potionProb <= 1) {
	instance_create_depth(x, y, 0, obj_potion2);
	//}
	//else if (potionProb <= 2) {
	//	instance_create_depth(x, y, 0, obj_potion);
	//}
	
	//instance_create_depth(x, y, 0, obj_item3); 
	
	instance_destroy();
}