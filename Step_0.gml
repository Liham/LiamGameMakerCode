//Direct Towards Mouse
image_angle = point_direction(x+21,y+5,mouse_x,mouse_y);

if (global.weapNum == 0) sprite_index = spr_sword;
if (global.weapNum == 1) sprite_index = spr_greatsword;
if (global.weapNum == 2) sprite_index = spr_spear;
if (global.weapNum == 3) sprite_index = spr_hammer;
