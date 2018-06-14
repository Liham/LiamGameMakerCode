if (!instance_exists(Floor_Handler) && !instance_exists(Wall_Placer)){
	if (instance_exists(obj_player)){
		
		if (mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, 1)){
			path_start(path, baseEnemySpd, path_action_stop, false)
		}
		
		//Flipping the Sprite
		if (obj_player.x > x){
		image_xscale = 1
			} else if (obj_player.x < x){
				image_xscale = -1
			}	
			
	}
		if(hp <= 0) instance_destroy();
}