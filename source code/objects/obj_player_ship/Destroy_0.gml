event_inherited();

for (var i = 0; i < ds_list_size(_light_weapons); i++) {
	instance_destroy(_light_weapons[| i]);
}
for (var i = 0; i < ds_list_size(_heavy_weapons); i++) {
	instance_destroy(_heavy_weapons[| i]);
}
for (var i = 0; i < ds_list_size(_spread_weapons); i++) {
	instance_destroy(_spread_weapons[| i]);
}
for (var i = 0; i < ds_list_size(_seeking_weapons); i++) {
	instance_destroy(_seeking_weapons[| i]);
}
ds_list_destroy(_light_weapons);
ds_list_destroy(_heavy_weapons);
ds_list_destroy(_spread_weapons);
ds_list_destroy(_seeking_weapons);
