if (x < -64 || x > room_width + 64) {
	_explode_on_despawn = false;
	instance_destroy();
}
if (y < -64 || y > room_height + 64) {
	_explode_on_despawn = false;
	instance_destroy();
}
