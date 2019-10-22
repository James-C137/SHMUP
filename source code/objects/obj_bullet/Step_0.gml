// inherit obj_entity
event_inherited();

if (_seeking_target != noone) {
	var closest_target = instance_nearest(x, y, _seeking_target);
	if (closest_target != noone) {
		var direction_to_target = point_direction(x, y, closest_target.x, closest_target.y);
		var angle_diff = direction_to_target - direction;
		while (angle_diff < 0) {
			angle_diff += 360;
		}
		while (angle_diff > 360) {
			angle_diff -= 360;
		}
		if (angle_diff > 180) {
			angle_diff -= 360;
		}
		_direction  = lerp(direction, direction + angle_diff, _lerp_amount);
		direction   = _direction;
		image_angle = _direction;
		_lerp_amount += 0.002;
	}
}
