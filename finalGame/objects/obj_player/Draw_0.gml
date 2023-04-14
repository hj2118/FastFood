/// @description Insert description here
// You can write your code in this editor


draw_self();

var pc;
pc = (hp / hp_max) * 100;
draw_healthbar(x - 30, y - 50, x + 25, y - 40, pc, c_white, c_red, c_lime, 0, true, true)

var itemSpr = spr_item1_small;

if (itemType == 1) {
	if (room == rm_game3) {
		itemSpr = spr_item_tomato;
	}

	else if (room == rm_game5) {
		itemSpr = spr_item_bread1;
	}

	else {
		itemSpr = spr_item_potato;
	}
	//itemSpr = spr_item1_small;
}

else if (itemType == 2) {
	//itemSpr = spr_item2_small;
	if (room == rm_game) {
		itemSpr = spr_item_pickle;
	}

	else if (room == rm_game2) {
		itemSpr = spr_item_bread2;
	}

	else if (room == rm_game3) {
		itemSpr = spr_item_cabbage;
	}

	else if (room == rm_game4) {
		itemSpr = spr_item_pickle;
	}

	else {
		itemSpr = spr_item_potato;
	}
}

else if (itemType == 3) {
	//itemSpr = spr_item3_small;
	if (room == rm_game4) {
		itemSpr = spr_item_onion;
	}

	else {
		itemSpr = spr_item_chicken;
	}
}

if (numItem > 0) {
	draw_sprite(itemSpr, 0, x - 20, y - 85);

	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_text(x, y - 79, "x " + string(numItem));
}



