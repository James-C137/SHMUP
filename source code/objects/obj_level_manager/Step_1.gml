if (_level_started) {
	_frames_elapsed += 1;
	_seconds_elapsed = _frames_elapsed div 60;
}

if (!instance_exists(obj_enemy_spawner) && !instance_exists(obj_enemy_ship) && !(_level_cleared || _level_failed)) {
	_level_cleared = true;
	obj_data._num_coins += _num_coins;
	instance_create_layer(room_width / 2, room_height / 4 - 16, "UI", obj_level_cleared);
	instance_create_layer(room_width / 2, room_height / 2, "UI", obj_back_to_menu);
	
}
if (!instance_exists(obj_player_ship) && !(_level_cleared || _level_failed)) {
	_level_failed = true;
	obj_data._num_coins += _num_coins;
	instance_create_layer(room_width / 2, room_height / 4 - 16, "UI", obj_level_failed);
	instance_create_layer(room_width / 2, room_height / 2, "UI", obj_back_to_menu);
}
