/// @param enemy_ship_name
var enemy_ship_name = argument0;

if (ds_map_exists(obj_data._enemy_ship_data, enemy_ship_name)) {
	var enemy_ship = instance_create_layer(x, y, "Enemy_Ship", obj_enemy_ship);
	with (enemy_ship) {
		// ========== DEFAULT VALUES ==========
		_direction              = other._direction;
		_rotation_speed         = 0;
		_tracking_target        = noone;
		_anchor_object          = noone;
		_anchor_offset          = [0, 0];
		_collider_tag           = "enemy_ship";
		_collider_target_tag    = "player_ship";
		_destroy_on_collision   = true;
		_flash_color            = 255;
		_flash_duration         = 4;
		_is_flashing            = false;
		_explode_on_despawn     = true;
		_despawn_when_offscreen = true;
	
		// ========== CUSTOMIZABLE VALUES ==========
		var current_enemy_data = obj_data._enemy_ship_data[? enemy_ship_name];
		_speed            = current_enemy_data[? "speed"];
		_max_hp           = current_enemy_data[? "max_hp"];
		_collision_damage = current_enemy_data[? "collision_damage"];
		_explosion_force  = current_enemy_data[? "explosion_force"];
		_enemy_sprite     = asset_get_index(current_enemy_data[? "enemy_sprite"]);
	
		// initialization for required variables
		speed          = _speed;
		direction      = _direction;
		image_angle    = _direction;
		sprite_index   = _enemy_sprite;
		_current_hp    = _max_hp;
		_hp_bar_object = scr_assign_hp_bar(self, [0, 0]);
	}
	if (current_enemy_data[? "weapons"] != "noone") {
		var weapons = scr_spawn_weapon_by_name(current_enemy_data[? "weapons"], enemy_ship);
		ds_list_add(enemy_ship._weapons, weapons);
	}
	return enemy_ship;
}
else {
	show_message("Enemy ship with name " + enemy_ship_name + " not found.");
	game_end();
}
