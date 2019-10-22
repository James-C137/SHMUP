event_inherited();

if (obj_input._up_pressed) {
	y -= _player_speed;
}
if (obj_input._down_pressed) {
	y += _player_speed;
}
if (obj_input._left_pressed) {
	x -= _player_speed;
}
if (obj_input._right_pressed) {
	x += _player_speed;
}
scr_keep_with_room_bounds();

if (obj_input._left_pressed) {
	image_index = 0;
}
else if (obj_input._right_pressed) {
	image_index = 2;
}
else {
	image_index = 1;
}
