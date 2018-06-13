if(hp <= 0){
	instance_destroy();
	global.myroom = room_duplicate(rm_RNDM);
	room_set_width(global.myroom, 3200);
	room_set_height(global.myroom, 3200);
	room_set_persistent(global.myroom, false);
	room_goto(global.myroom)
}