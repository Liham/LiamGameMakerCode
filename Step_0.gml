// Movement Keys
if (keyboard_check(ord("D"))) playerSpeedX = baseSpeed;
else if (keyboard_check(ord("A"))) playerSpeedX = -baseSpeed;
else playerSpeedX = 0;
if (keyboard_check(ord("W"))) playerSpeedY = -baseSpeed;
else if (keyboard_check(ord("S"))) playerSpeedY = baseSpeed;
else playerSpeedY = 0;

//Weapon Damage/Range/Cooldown
if (global.weapNum == 0){
	global.dmg = 2;
	realcooldown = 10;
	weapDist = 35;
}
if (global.weapNum == 1){
	global.dmg = 10;
	realcooldown = 75;
	weapDist = 45;
}
if (global.weapNum == 2){
	global.dmg = 5;
	realcooldown = 25;
	weapDist = 70;
}
if (global.weapNum == 3){
	global.dmg = 8;
	realcooldown = 50;
	weapDist = 35;
}

// Melee
if (mouse_check_button_pressed(mb_left)) && (cooldown < 1)
{
	var mdist = point_distance(x,y,mouse_x,mouse_y);
	var mdir = point_direction(x,y,mouse_x,mouse_y);
	var xx = x + lengthdir_x(min(mdist,35),mdir);
	var yy = y + lengthdir_y(min(mdist,35),mdir); 
	instance_create_layer (xx, yy, layer, obj_melee);	
	cooldown = realcooldown;
}

cooldown = cooldown - 1;

//HP
if(hp <= 0) {
	instance_destroy();
	game_restart();
	}	

//Collision
if (place_free(x+playerSpeedX,y)) == false {
	if (playerSpeedX <= 0){
		move_contact_all(180,baseSpeed);
		} else {
			move_contact_all(0,baseSpeed);
			}
	playerSpeedX=0;
}
	
if (place_free(x,y+playerSpeedY)) == false {
	if (playerSpeedY <= 0){
		move_contact_all(90,baseSpeed);
		} else {
			move_contact_all(270,baseSpeed);
			}
	playerSpeedY=0;
}

//Movement
if (!instance_exists(Floor_Handler) && !instance_exists(Wall_Placer)){
	x += playerSpeedX;
	y += playerSpeedY;
}


//Crosshair
cursor_sprite = spr_crosshair;


//Portal
if (numPortals == 0){
	if (!instance_exists(obj_enemy) and !instance_exists(obj_snek)){
		instance_create_layer(obj_player.x, obj_player.y, layer, obj_portal)
		numPortals = numPortals + 1
	}
}

//Flipping the sprite
mx = mouse_x
if(instance_exists(obj_player)){
	if (mx > obj_player.x){
		image_xscale = 1
	} else if (mx < obj_player.x){
			image_xscale = -1
		}
}
	
//Switching between running and idle
if (keyboard_check(ord("W"))) || (keyboard_check(ord("A"))) || (keyboard_check(ord("S"))) || (keyboard_check(ord("D"))){
sprite_index = spr_dog_running
}

if (!keyboard_check(ord("W"))) && (!keyboard_check(ord("A"))) && (!keyboard_check(ord("S"))) && (!keyboard_check(ord("D"))){
sprite_index = spr_dog_idle
}


