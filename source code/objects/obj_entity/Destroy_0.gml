if (_hp_bar_object != noone) {
	instance_destroy(_hp_bar_object);
}

if (_explode_on_despawn) {
	scr_explode(x, y, _explosion_force);
}
