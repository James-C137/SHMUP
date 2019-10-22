var shutter_height = room_height / 2 * _current_shutter_percentage
draw_sprite_stretched(spr_transition, 0, 0, 0, room_width, shutter_height);
draw_sprite_stretched(spr_transition, 0, 0, room_height - shutter_height, room_width, shutter_height);
