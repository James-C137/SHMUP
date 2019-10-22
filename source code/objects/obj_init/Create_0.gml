instance_create_layer(-64, y, layer, obj_debug)
instance_create_layer(-64, y, layer, obj_data);
instance_create_layer(-64, y, layer, obj_input);
instance_create_layer(-64, y, "Transition", obj_transition);
room_goto_next();
instance_destroy();
