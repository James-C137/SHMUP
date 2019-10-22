if (_transition_stage == "idle" && _target_room != undefined) {
	_transition_stage   = "closing";
}
else if (_transition_stage == "closing") {
	_current_shutter_percentage = lerp(_current_shutter_percentage, _shutter_closed_percentage, 0.1);
	if (_current_shutter_percentage >= _shutter_closed_percentage - _shutter_tolerance) {
		_transition_stage = "closed";
	}
}
else if (_transition_stage == "closed") {
	room_goto(_target_room);
	if (_target_room == room_shop) {
		alarm[0] = 1;
	}
	_target_room = undefined;
	_transition_stage = "opening";
}
else if (_transition_stage == "opening") {
	_current_shutter_percentage = lerp(_current_shutter_percentage, 0, 0.1);
	if (_current_shutter_percentage <= _shutter_tolerance) {
		_current_shutter_percentage = 0;
		_transition_stage = "idle";
	}
}

if (_level != undefined && room == room_stage) {
	scr_spawn_player_ship();
	scr_start_level(_level);
	_level = undefined;
}
