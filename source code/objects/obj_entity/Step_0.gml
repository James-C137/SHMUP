// inherit obj_kinematic_object
event_inherited();

if (_despawn_when_offscreen) {
	scr_despawn_when_offscreen();
}

if (_current_hp > _max_hp) {
	_current_hp = _max_hp;
}
if (_current_hp <= 0) {
	instance_destroy();
}

var collision_list = ds_list_create();
var num_collisions = instance_place_list(x, y, obj_entity, collision_list, true);
if (num_collisions > 0) {
	var valid_collider = scr_find_valid_collision_from_list(collision_list, num_collisions, _collider_target_tag);
	if (valid_collider != noone) {
		scr_damage_entity(valid_collider, _collision_damage);
		if (_destroy_on_collision) {
			ds_list_destroy(collision_list);
			instance_destroy();
		}
	}
}
ds_list_destroy(collision_list);
