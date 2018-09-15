/// @description When player collides with book of the dead

// instantiate "success" transition
instance_destroy(other);
instance_create_layer(x, y, "Visual_Effects_Layer", obj_successTransition);