if (mouse_x > obj_player.x){
	sword.x = x + x_offset;
	sword.y = y + y_offset;
} else if (mouse_x < obj_player.x){
		sword.x = x - x_offset;
		sword.y = y + y_offset;
	}

