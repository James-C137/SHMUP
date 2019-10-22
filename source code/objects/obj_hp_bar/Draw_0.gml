_ratio = lerp(_ratio, _anchor_object._current_hp / _anchor_object._max_hp, 0.25);
draw_sprite(spr_hp_bar, 1, x, y);
draw_sprite_stretched(spr_hp_bar, 0, x, y, sprite_width * _ratio, sprite_height);
