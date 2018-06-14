var move = 0;
move -= max(keyboard_check_pressed(ord("W")),0);
move += max(keyboard_check_pressed(ord("S")),0);

if (move != 0)
{
	weapmpos += move;
	if (weapmpos < 0) weapmpos = array_length_1d(weapMenu) - 1;
	if (weapmpos > array_length_1d(weapMenu) - 1) weapmpos = 0;
}

var push;
push = max(keyboard_check_released(vk_enter),keyboard_check_released(vk_space),0)
if (push == 1) scr_weapMenu();
