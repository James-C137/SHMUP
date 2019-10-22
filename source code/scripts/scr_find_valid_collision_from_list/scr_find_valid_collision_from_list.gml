/// @param list
/// @param list_length
/// @param collider_target_tag
var list                = argument0;
var list_length         = argument1;
var collider_target_tag = argument2;

for (var i = 0; i < list_length; i++) {
	var current_collider = list[| i];
	if (current_collider._collider_tag == collider_target_tag) {
		return current_collider;
	}
}

return noone;
