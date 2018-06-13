//Make generation first
room_speed = 32000;
//How many floor tiles have been placed?
floors_placed = 0;
//What direction are you facing?
dir = 1;
//Randomize the seed
randomize();
//Generate a random position
rand_x = random_range(0, room_width);
rand_y = random_range(0, room_height);
//Attach values to the grid
x = rand_x - (rand_x%32);
y = rand_y - (rand_y%32);
//Store the top left corner of the map 
x_left = x;
y_upper = y;
x_right = 0;
y_lower = 0;
//Max Floors
maxFloors = 1000;
//Player Layer
layerID = layer_get_id("Test")
//room generator variables
moveBy = 32
makesWallsNotBad = 32
OutsideRoom = makesWallsNotBad*2
OutsideRoom2 = makesWallsNotBad*3