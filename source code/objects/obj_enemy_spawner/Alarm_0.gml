/// @description Start spawning
_started = true;
scr_spawn_enemy_ship_by_name(_enemy_type);
_num_enemies_left--;
alarm[1] = _spawn_gap;
