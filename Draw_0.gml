var m;
for (m = 0; m < array_length_1d(weapMenu); m += 1)
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(font_Menu);
	draw_set_color(c_white);
	if (weapmpos == m) and max(keyboard_check_pressed(vk_enter),keyboard_check_pressed(vk_space),0){
		draw_set_color(c_green);
		if (weapMenu[m] == weapMenu[0]) global.weapNum = 0;
		if (weapMenu[m] == weapMenu[1]) global.weapNum = 1;
		if (weapMenu[m] == weapMenu[2]) global.weapNum = 2;
		if (weapMenu[m] == weapMenu[3]) global.weapNum = 3;
	}
	draw_text(x+weapSpace, y+(m*weapSpace), string(weapMenu[m]))
}

draw_sprite(sprite_index, 0, x+16, y+weapmpos*weapSpace);