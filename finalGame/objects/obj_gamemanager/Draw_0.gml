/// @description Insert description here
// You can write your code in this editor

draw_set_font(ft_arcade_24);
draw_set_color(c_black);

if (room == rm_start) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_color(c_black);
	draw_set_font(ft_arcade_64);
	draw_text(room_width / 2, room_height / 2 - 300, "FASTEST FOOD");
	
	
	
	draw_set_font(ft_arcade_32);
	draw_text(room_width / 2, room_height / 2 + 200, "start: enter");
	
	draw_set_color(c_black);
	draw_text(room_width / 2, room_height / 2 - 50, "attack: ctrl");
	draw_text(room_width / 2, room_height / 2, "jump: space");
	draw_text(room_width / 2, room_height / 2 + 50, "pick up: Z");
	draw_text(room_width / 2, room_height / 2 + 100, "move: arrows");
}

else if (room == rm_story1) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(ft_arcade_48);
	draw_text(room_width / 2, room_height / 2 - 150, "You  are  working  at  a  restaurant");  
	draw_text(room_width / 2, room_height / 2 - 70, "Kill  monsters  and  collect  ingredients  to  make  a  burger  and  fries");
	draw_text(room_width / 2, room_height / 2 + 100, "Press  enter  to  begin")
	//draw_text(room_width / 2, room_height / 2 - 200, "Collect  ingredients  to  make  a  burger  and  fries!");
}

else if (room == rm_story2) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(ft_arcade_48);
	draw_text(room_width / 2, room_height / 2 - 150, "Your  customer  is  getting  mad!!");
	draw_text(room_width / 2, room_height / 2 - 70, "HURRY  UP!!!");
	draw_text(room_width / 2, room_height / 2 + 100, "Press  enter  to  resume");
}
//else if (room == rm_instruction) {
//	draw_set_halign(fa_center);
//	draw_set_valign(fa_middle);
//	draw_set_font(ft_arcade_48);
//	draw_set_color(c_black);
	
//	draw_text(room_width / 2, room_height / 2, "Collect ingredients to make a burger and fries!");
	
//}

else if (room == rm_over) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_font(ft_arcade_64);
	draw_set_color(c_red);
	draw_text(room_width / 2, room_height / 2 - 200, "GAME OVER");
	
	draw_set_color(c_black);
	draw_set_font(ft_arcade_48);
	//draw_set_color(c_yellow);
	draw_text(room_width / 2, room_height / 2 + 170, "press  enter  to  restart");
	
	//draw_set_color(c_black);
	draw_text(room_width / 2, room_height / 2 - 100, "Highest Level: " + string(highestLevel));
	
	draw_text(room_width / 2, room_height / 2, "The  customer  left  with  anger!");
}

else if (room == rm_complete) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_font(ft_arcade_64);
	draw_set_color(c_green);
	draw_text(room_width / 2, room_height / 2 - 200, "COMPLETE");
	
	draw_set_color(c_black);
	draw_set_font(ft_arcade_48);
	//draw_set_color(c_yellow);
	draw_text(room_width / 2, room_height / 2 + 170, "press  enter  to  restart");
	
	draw_text(room_width / 2, room_height / 2 - 100, "Highest Level: " + string(highestLevel));
	
	draw_text(room_width / 2, room_height / 2, "The  customer  left  happily!");

	draw_sprite(spr_burger, 0, 400, room_height / 2);
	draw_sprite(spr_fries, 0, room_width - 450, room_height / 2);
}

else {
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_set_font(ft_arcade_32);
	draw_text(20, 20, "Level: " + string(currLevel));
}