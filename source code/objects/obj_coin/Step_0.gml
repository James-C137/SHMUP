if (instance_exists(obj_player_ship)) {
	direction = point_direction(x, y, obj_player_ship.x, obj_player_ship.y);
	speed = _top_speed / power(sqrt(_attraction_magnitude) + distance_to_object(obj_player_ship), 2) * _attraction_magnitude;
}
y += 0.75;

if (place_meeting(x, y, obj_player_ship)) {
	obj_level_manager._num_coins++;
	instance_destroy();
}

scr_despawn_when_offscreen();
