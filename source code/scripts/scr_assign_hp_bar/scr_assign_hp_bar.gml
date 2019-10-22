/// @param anchor_object
/// @param additional_offset
var anchor_object     = argument0;
var additional_offset = argument1;

var hp_bar = instance_create_layer(x, y, layer, obj_hp_bar);
with (hp_bar) {
	_speed           = 0;
	_direction       = 0;
	_rotation_speed  = 0;
	_tracking_target = noone;
	_anchor_object   = anchor_object;
	_anchor_offset   = [0 - (sprite_width / 2) + additional_offset[0],
	                   anchor_object.bbox_bottom - anchor_object.y + 4 + additional_offset[1]];
}
return hp_bar;
