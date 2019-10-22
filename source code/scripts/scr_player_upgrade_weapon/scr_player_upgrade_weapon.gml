/// @param weapon_type
var weapon_type = argument0;

_direction = 90;

switch (weapon_type) {
	case "spread":
		for (var i = 0; i < obj_player_ship._spread_weapon_level; i++) {
			instance_destroy(obj_player_ship._spread_weapons[| i]);
		}
		obj_player_ship._spread_weapon_level++;
		obj_data._player_ship_data[? "spread_weapon_level"]++;
		for (var i = 0; i < obj_player_ship._spread_weapon_level; i++) {
			var weapon = scr_spawn_weapon_by_name("player_spread", obj_player_ship);
			with (weapon) {
				_direction = 90 + (1.5 * (obj_player_ship._spread_weapon_level - 1)) - (3 * i);
				direction  = _direction;
			}
			ds_list_add(obj_player_ship._spread_weapons, weapon);
		}
		break;
	case "light":
		for (var i = 0; i < obj_player_ship._light_weapon_level; i++) {
			instance_destroy(obj_player_ship._light_weapons[| i]);
		}
		obj_player_ship._light_weapon_level++;
		obj_data._player_ship_data[? "light_weapon_level"]++;
		for (var i = 0; i < obj_player_ship._light_weapon_level; i++) {
			var weapon = scr_spawn_weapon_by_name("player_light", obj_player_ship);
			with (weapon) {
				_anchor_offset[0] = (2 * (obj_player_ship._light_weapon_level - 1)) - (4 * i);
			}
			ds_list_add(obj_player_ship._light_weapons, weapon);
		}
		break;
	case "heavy":
		for (var i = 0; i < obj_player_ship._heavy_weapon_level; i++) {
			instance_destroy(obj_player_ship._heavy_weapons[| i]);
		}
		obj_player_ship._heavy_weapon_level++;
		obj_data._player_ship_data[? "heavy_weapon_level"]++;
		for (var i = 0; i < obj_player_ship._heavy_weapon_level; i++) {
			var weapon = scr_spawn_weapon_by_name("player_heavy", obj_player_ship);
			ds_list_add(obj_player_ship._heavy_weapons, weapon);
		}
		break;
	case "seeking":
		for (var i = 0; i < obj_player_ship._seeking_weapon_level * 2; i++) {
			instance_destroy(obj_player_ship._seeking_weapons[| i]);
		}
		obj_player_ship._seeking_weapon_level++;
		obj_data._player_ship_data[? "seeking_weapon_level"]++;
		for (var i = 0; i < obj_player_ship._seeking_weapon_level; i++) {
			var weapon_left  = scr_spawn_weapon_by_name("player_seeking", obj_player_ship);
			var weapon_right = scr_spawn_weapon_by_name("player_seeking", obj_player_ship);
			with (weapon_left) {
				_direction = 270 - 30 +  (2 * (obj_player_ship._seeking_weapon_level - 1)) - (4 * i);
				direction  = _direction;
			}
			with (weapon_right) {
				_direction = 270 + 30 +  (2 * (obj_player_ship._seeking_weapon_level - 1)) - (4 * i);
				direction  = _direction;
			}
			ds_list_add(obj_player_ship._seeking_weapons, weapon_left);
			ds_list_add(obj_player_ship._seeking_weapons, weapon_right);
		}
		break;
}
