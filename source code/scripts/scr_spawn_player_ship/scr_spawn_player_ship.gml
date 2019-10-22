var player_ship = instance_create_layer(room_width / 2, room_height - 32, "Player_Ship", obj_player_ship);
with (player_ship) {
	// ========== DEFAULT VALUES ==========
	_speed                  = 0;
	_direction              = 90;
	_rotation_speed         = 0;
	_tracking_target        = noone;
	_anchor_object          = noone;
	_anchor_offset          = [0, 0];
	_collider_tag           = "player_ship";
	_collider_target_tag    = "enemy_ship";
	_collision_damage       = 2;
	_destroy_on_collision   = false;
	_flash_color            = 255;
	_flash_duration         = 4;
	_is_flashing            = false;
	_explode_on_despawn     = true;
	_explosion_force        = 10;
	_despawn_when_offscreen = false;
	
	// ========== CUSTOMIZABLE VALUES ==========
	var player_ship_data = obj_data._player_ship_data;
	_hp_level             = player_ship_data[? "hp_level"];
	_player_speed         = player_ship_data[? "player_speed"];
	_magnet_level         = player_ship_data[? "magnet_level"];
	_light_weapon_level   = player_ship_data[? "light_weapon_level"];
	_heavy_weapon_level   = player_ship_data[? "heavy_weapon_level"];
	_spread_weapon_level  = player_ship_data[? "spread_weapon_level"];
	_seeking_weapon_level = player_ship_data[? "seeking_weapon_level"];
	
	// initialization for required variables
	_max_hp        = 10 + (_hp_level * 2);
	_current_hp    = _max_hp;
	_hp_bar_object = scr_assign_hp_bar(self, [0, 1]);
	scr_player_equip_weapons(self);
	direction   = _direction;
	image_angle = _direction;
}
return player_ship;
