if (_is_flashing) {
	shader_set(shd_flash);
	draw_self();
	shader_reset();
}
else {
	draw_self();
}
