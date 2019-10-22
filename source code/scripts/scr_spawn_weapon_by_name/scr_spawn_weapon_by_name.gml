/// @param weapon_name
/// @param anchor_object
var weapon_name = argument0;
var anchor_object = argument1;

if (ds_map_exists(obj_data._weapon_data, weapon_name)) {
	var weapon = instance_create_layer(x, y, layer, obj_weapon);
	with (weapon) {
		// ========== DEFAULT VALUES ==========
		_speed         = 0;
		_direction     = other._direction;
		_anchor_object = anchor_object;
		_anchor_offset = [0, 0];
		
		// ========== CUSTOMIZABLE VALUES ==========
		var current_weapon_data = obj_data._weapon_data[? weapon_name];
		_rotation_speed     = current_weapon_data[? "rotation_speed"];
		_tracking_target    = current_weapon_data[? "tracking_target"] == "noone" ? noone : asset_get_index(current_weapon_data[? "tracking_target"]);
		_is_manual          = current_weapon_data[? "is_manual"];
		_fire_rate          = current_weapon_data[? "fire_rate"];
		_reload_time        = current_weapon_data[? "reload_time"];
		_bullets_per_reload = current_weapon_data[? "bullets_per_reload"];
		_bullet_type        = current_weapon_data[? "bullet_type"];
		
		// initialization for required variables
		_num_shots_left = _bullets_per_reload;
	}
	return weapon;
}
else {
	show_message("Weapon with name " + weapon_name + " not found.");
	game_end();
}
