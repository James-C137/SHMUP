/// @param entity
/// @param damage_amount
var entity        = argument0;
var damage_amount = argument1;

entity._current_hp -= damage_amount;

if (entity._flash_duration > 0) {
	entity._is_flashing = true;
	entity.alarm[0] = entity._flash_duration;
}
