event_inherited();

for (var i = 0; i < _num_coins_dropped; i++) {
	instance_create_layer(x + random_range(-8, 8), y + random_range(-8, 8), "Coins", obj_coin);
}
