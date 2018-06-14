var m;
for (m = 0; m < array_length_1d(startMenu); m += 1)
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(font_Menu);
	draw_set_color(c_white);
	if (startmpos == m) draw_set_color(c_red);
	draw_text(x+startSpace, y+(m*startSpace), string(startMenu[m]))
}

draw_sprite(sprite_index, 0, x+16, y+startmpos*startSpace);
