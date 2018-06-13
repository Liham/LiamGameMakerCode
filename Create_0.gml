cell_width = 32;
cell_height = 32;

hcells = room_width/cell_width;
vcells = room_height/cell_height;

global.grid = mp_grid_create(0,0,hcells,vcells,cell_width,cell_height);

mp_grid_add_instances(global.grid, obj_wall, false);

