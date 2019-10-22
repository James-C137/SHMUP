// inherit obj_kinematic_object
event_inherited();

if (!_cooling_down && !_reloading) {
	if ((!_is_manual) || (_is_manual && obj_input._shoot_pressed)) {
		scr_spawn_bullet_by_name(_bullet_type);
		_num_shots_left--;
		if (_num_shots_left <= 0) {
			if (_reload_time > 0) {
				_reloading = true;
				alarm[1] = _reload_time + _fire_rate - 1;
			}
			else {
				_num_shots_left = _bullets_per_reload;
				_cooling_down = true;
				alarm[0] = _fire_rate - 1;
			}
		}
		else {
			if (_fire_rate > 1) {
				_cooling_down = true;
				alarm[0] = _fire_rate - 1;
			}
		}
	}
}
