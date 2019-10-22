/// @param x_coord
/// @param y_coord
/// @param explosion_force
var x_coord         = argument0;
var y_coord         = argument1;
var explosion_force = argument2;

// spawn explosion
var x_shift = irandom_range(-8, 8);
var y_shift = irandom_range(-8, 8);
instance_create_layer(x_coord + x_shift, y_coord + y_shift, "Explosions", obj_explosion);

// camera shake
