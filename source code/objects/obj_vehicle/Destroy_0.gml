// inherit obj_entity
event_inherited();

for (var i = 0; i < ds_list_size(_weapons); i++) {
	instance_destroy(_weapons[| i]);
}
ds_list_destroy(_weapons);
