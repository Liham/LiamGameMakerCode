//Room Speed Again
room_speed = 32000;
//Store the targets id number
target = instance_place(x, y, obj_floor);
//Check for neighbour floors and place walls
if(instance_exists(target))
{
	if(!place_meeting(x+makesWallsNotDumb, y, obj_floor)) { instance_create_layer(x+makesWallsNotDumb, y, layer, obj_wall) };
	if(!place_meeting(x-makesWallsNotDumb, y, obj_floor)) { instance_create_layer(x-makesWallsNotDumb, y, layer, obj_wall) };
	if(!place_meeting(x, y+makesWallsNotDumb, obj_floor)) { instance_create_layer(x, y+makesWallsNotDumb, layer, obj_wall) };
	if(!place_meeting(x, y-makesWallsNotDumb, obj_floor)) { instance_create_layer(x, y-makesWallsNotDumb, layer, obj_wall) };
}

if(x < start_x)
{
	x = start_x;
}
if(x == stop_x)
{
	y += 32;
	x = 0;
}
else
{
	x += 32;
}

if(y > stop_y)
{
	room_speed = 60;
	instance_destroy();
}

