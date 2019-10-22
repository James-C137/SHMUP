/// @param bullet_name
var bullet_name = argument0;

if (ds_map_exists(obj_data._bullet_data, bullet_name)) {
	var bullet = instance_create_layer(x, y, "Bullets", obj_bullet);
	with (bullet) {
		// ========== DEFAULT VALUES ==========
		_direction              = other._direction;
		_rotation_speed         = 0;
		_tracking_target        = noone;
		_anchor_object          = noone;
		_anchor_offset          = [0, 0];
		
		_max_hp                 = infinity;
		_current_hp             = infinity;
		_hp_bar_object          = noone;
		_destroy_on_collision   = true;
		_flash_color            = 255;
		_flash_duration         = 0;
		_is_flashing            = false;
		_despawn_when_offscreen = true;
		
		// ========== CUSTOMIZABLE VALUES ==========
		var current_bullet_data = obj_data._bullet_data[? bullet_name];
		_speed               = current_bullet_data[? "speed"];
		
		_collider_tag        = current_bullet_data[? "collider_tag"];
		_collider_target_tag = current_bullet_data[? "collider_target_tag"];
		_collision_damage    = current_bullet_data[? "collision_damage"];
		_explode_on_despawn  = current_bullet_data[? "explode_on_despawn"];
		_explosion_force     = current_bullet_data[? "explosion_force"];
		
		_bullet_sprite       = asset_get_index(current_bullet_data[? "bullet_sprite"]);
		_seeking_target      = current_bullet_data[? "seeking_target"] == "noone" ? noone : asset_get_index(current_bullet_data[? "seeking_target"]);
		
		// initialization for required variables
		speed        = _speed;
		direction    = _direction;
		image_angle  = _direction;
		sprite_index = _bullet_sprite;
	}
	return bullet;
}
else {
	show_message("Bullet with name " + bullet_name + " not found.");
	game_end();
}
