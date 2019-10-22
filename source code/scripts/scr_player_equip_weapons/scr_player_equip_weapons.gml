/// @param player_ship
var player_ship = argument0;

for (var i = 0; i < player_ship._light_weapon_level; i++) {
	var weapon = scr_spawn_weapon_by_name("player_light", self);
	with (weapon) {
		_anchor_offset[0] = (2 * (player_ship._light_weapon_level - 1)) - (4 * i);
	}
	ds_list_add(player_ship._light_weapons, weapon);
}
for (var i = 0; i < player_ship._heavy_weapon_level; i++) {
	var weapon = scr_spawn_weapon_by_name("player_heavy", self);
	ds_list_add(player_ship._heavy_weapons, weapon);
}
for (var i = 0; i < player_ship._spread_weapon_level; i++) {
	var weapon = scr_spawn_weapon_by_name("player_spread", self);
	with (weapon) {
		_direction = 90 + (1.5 * (player_ship._spread_weapon_level - 1)) - (3 * i);
		direction  = _direction;
	}
	ds_list_add(player_ship._spread_weapons, weapon);
}
for (var i = 0; i < player_ship._seeking_weapon_level; i++) {
	var weapon_left  = scr_spawn_weapon_by_name("player_seeking", self);
	var weapon_right = scr_spawn_weapon_by_name("player_seeking", self);
	with (weapon_left) {
		_direction = 270 - 30 +  (2 * (player_ship._seeking_weapon_level - 1)) - (4 * i);
		direction  = _direction;
	}
	with (weapon_right) {
		_direction = 270 + 30 +  (2 * (player_ship._seeking_weapon_level - 1)) - (4 * i);
		direction  = _direction;
	}
	ds_list_add(player_ship._seeking_weapons, weapon_left);
	ds_list_add(player_ship._seeking_weapons, weapon_right);
}
