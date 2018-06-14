var move = 0;
move -= max(keyboard_check_pressed(ord("W")),0);
move += max(keyboard_check_pressed(ord("S")),0);

if (move != 0)
{
	startmpos += move;
	if (startmpos < 0) startmpos = array_length_1d(startMenu) - 1;
	if (startmpos > array_length_1d(startMenu) - 1) startmpos = 0;
}

var push;
push = max(keyboard_check_released(vk_enter),keyboard_check_released(vk_space),0)
if (push == 1) scr_startMenu();

