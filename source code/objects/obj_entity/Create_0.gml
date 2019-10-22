// inherit obj_kinematic_object
event_inherited();

/*
Entity deals with anything HP related
*/

_max_hp                 = undefined;  // int
_current_hp             = undefined;  // int
_hp_bar_object          = undefined;  // instance ID

_collider_tag           = undefined;  // string
_collider_target_tag    = undefined;  // string
_collision_damage       = undefined;  // int
_destroy_on_collision   = undefined;  // boolean

_flash_color            = undefined;  // int
_flash_duration         = undefined;  // int
_is_flashing            = undefined;  // boolean

_explode_on_despawn     = undefined;  // boolean
_explosion_force        = undefined;  // int

_despawn_when_offscreen = undefined;  // boolean
