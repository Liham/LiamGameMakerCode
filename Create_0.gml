cooldown = 0;
realcooldown = 0;

hp = 100;

playerSpeedX = 0;
playerSpeedY = 0;
baseSpeed = 3;

numPortals = 0;

//Initiate Weapon
x_offset = 8;
y_offset = 3;
sword = instance_create_layer(x + x_offset, y + y_offset, layer, obj_sword);

global.dmg = 2;

weapDist = 35;
