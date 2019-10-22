/// @param level
var level = argument0;

var level_data = obj_data._level_data;
if (ds_map_exists(level_data, level)) {
	var current_level_data = level_data[? level];
	var initial_wave_delay = current_level_data[? "initial_wave_delay"] * 60;
	var waves              = current_level_data[? "waves"];
	
	var level_manager = instance_create_layer(x, y, layer, obj_level_manager);
	with (level_manager) {
		alarm[0] = initial_wave_delay;
	}
	var wave_data = current_level_data[? "waves"];
	for (var i = 0; i < ds_list_size(waves); i++) {
		var current_wave_data = wave_data[| i];
		var enemy_spawner = instance_create_layer(x, y, layer, obj_enemy_spawner);
		with (enemy_spawner) {
			_direction   = current_wave_data[? "direction"];
			_start_time  = current_wave_data[? "start_time"];
			_start_delay = current_wave_data[? "start_delay"];
			_spawn_gap   = current_wave_data[? "spawn_gap"];
			_num_enemies = current_wave_data[? "num_enemies"];
			_enemy_type  = current_wave_data[? "enemy_type"];
			_row         = current_wave_data[? "row"];
			_column      = current_wave_data[? "column"];
			
			_started          = false;
			_num_enemies_left = _num_enemies;
			x                 = (room_width / 2) + (_column * 32);
			y                 = -32 + (_row * 16);
			direction         = _direction;
			image_angle       = _direction;
		}
	}
}
else {
	show_message("Level with name " + level + " was not found.");
	game_end();
}
