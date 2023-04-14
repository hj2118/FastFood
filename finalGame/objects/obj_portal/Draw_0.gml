/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_black);

if (room == rm_game) {
	draw_sprite(spr_item_potato, 0, x - 20, y - 65);
	draw_text(x, y - 59, "x " + string(GOAL1));
}

else if (room == rm_game2) {
	draw_sprite(spr_item_bread2, 0, x - 20, y - 65);
	draw_text(x, y - 59, "x " + string(GOAL2));
}

else if (room == rm_game3) {
	draw_sprite(spr_item_tomato, 0, x - 20, y - 65);
	draw_sprite(spr_item_cabbage, 0, x - 20, y - 115);
	draw_text(x, y - 59, "x " + string(GOAL1));
	draw_text(x, y - 109, "x " + string(GOAL2));
}

else if (room == rm_game4) {
	draw_sprite(spr_item_pickle, 0, x - 20, y - 65);
	draw_sprite(spr_question, 0, x - 20, y - 115);
	draw_text(x, y - 59, "x " + string(GOAL2));
	draw_text(x, y - 109, "x " + string(GOAL3));
}

else if (room == rm_game5) {
	draw_sprite(spr_question, 0, x - 20, y - 65);
	draw_sprite(spr_question, 0, x - 20, y - 115);
	draw_sprite(spr_question, 0, x - 20, y - 165);

	draw_text(x, y - 59, "x " + string(GOAL3));
	draw_text(x, y - 109, "x " + string(GOAL2));
	draw_text(x, y - 159, "x " + string(GOAL1));
}







