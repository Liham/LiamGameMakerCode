//Place Player
if(floors_placed == 305)
{
	instance_create_layer(Floor_Handler.x, Floor_Handler.y, layerID, obj_player)
}

//Enemy Placer
if(floors_placed == 135 or floors_placed == 200 or floors_placed == 25 or floors_placed == 80 or floors_placed == 600 or floors_placed == 700 or floors_placed == 800 or floors_placed == 555){
	instance_create_layer(Floor_Handler.x, Floor_Handler.y, layerID, obj_enemy)
}
if(floors_placed == 235 or floors_placed == 875 or floors_placed == 650 or floors_placed == 445){
	instance_create_layer(Floor_Handler.x, Floor_Handler.y, layerID, obj_snek)
}

//Place a floor tile
instance_create_layer(x, y, layer, obj_floor)
//Count one more floor tiles
floors_placed++;
//Pick a random direction
dir = choose(1, 2, 3, 4, dir, dir, dir, dir);
//Move forward 1 cell (relative to direction)
switch(dir)
{
	case 1:
		x += moveBy;
		break;
		
	case 2:
		y += moveBy;
		break;
		
	case 3:
		x -= moveBy;
		break;
		
	case 4:
		y -= moveBy;
		break;
}
//Check for being outside the room
if(x < OutsideRoom) { x = OutsideRoom };
if(x > room_width - OutsideRoom2) { x = room_width - OutsideRoom2 };
if(y < OutsideRoom) { y = OutsideRoom };
if(y > room_height - OutsideRoom2) { y = room_height - OutsideRoom2 };
//Store top_left and bottom_right corners of the map
if(x < x_left) { x_left = x };
if(x > x_right) { x_right = x };
if(y < y_upper) { y_upper = y };
if(y > y_lower) { y_lower = y };

//Destroy if max floors have been placed
if(floors_placed == maxFloors)
{
	wall_p = instance_create_layer(x_left, y_upper, layer, Wall_Placer);
	wall_p.stop_x = x_right + makesWallsNotBad;
	wall_p.stop_y = y_lower + makesWallsNotBad;
	instance_destroy();
}


