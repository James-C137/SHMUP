if (_tracking_target == noone) {
	_direction += _rotation_speed;
}
else if (instance_exists(_tracking_target)) {
	_direction = point_direction(x, y, _tracking_target.x, _tracking_target.y);
}

speed       = _speed;
direction   = _direction;
image_angle = _direction;
