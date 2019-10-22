if (!_started &&
	obj_level_manager._seconds_elapsed == _start_time &&
	obj_level_manager._frames_elapsed mod 60 == 0) {
	if (_start_delay == 0) {
		_started = true;
		scr_spawn_enemy_ship_by_name(_enemy_type);
		_num_enemies_left--;
		alarm[1] = _spawn_gap;
	}
	else {
		alarm[0] = _start_delay;
	}
}

if (_num_enemies_left <= 0) {
	instance_destroy();
}
