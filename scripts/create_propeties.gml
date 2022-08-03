///create_propeties(instance_id)
_id = argument0
_map_size = ds_map_size(_id.prop)
_map = _id.prop
_conf_map = _id.prop_config

if instance_exists(obj_prop_btn) {
    with obj_prop_btn {
        instance_destroy()
    }
}
if _id.object_index = obj_part {
    prop = instance_create(x,y+0*13,obj_prop_btn)
    prop.prop_name = "SizeX"
    prop.map = _map
    prop.value = _id.size_x
    prop.config_map = _conf_map
    
    prop = instance_create(x,y+1*13,obj_prop_btn)
    prop.prop_name = "SizeY"
    prop.map = _map
    prop.value = _id.size_y
    prop.config_map = _conf_map
    
    prop = instance_create(x,y+2*13,obj_prop_btn)
    prop.prop_name = "Color"
    prop.map = _map
    prop.value = _id.color_id
    prop.config_map = _conf_map
    
    prop = instance_create(x,y+3*13,obj_prop_btn)
    prop.prop_name = "CanCollide"
    prop.map = _map
    prop.value = _id.colide
    prop.config_map = _conf_map
    
    prop = instance_create(x,y+4*13,obj_prop_btn)
    prop.prop_name = "X"
    prop.map = _map
    prop.value = _id.x
    prop.config_map = _conf_map
    
    prop = instance_create(x,y+5*13,obj_prop_btn)
    prop.prop_name = "Y"
    prop.map = _map
    prop.value = _id.y
    prop.config_map = _conf_map
    
    prop = instance_create(x,y+6*13,obj_prop_btn)
    prop.prop_name = "SurfT"
    prop.map = _map
    prop.value = _id.surf_t
    prop.config_map = _conf_map
    
    prop = instance_create(x,y+7*13,obj_prop_btn)
    prop.prop_name = "SurfB"
    prop.map = _map
    prop.value = _id.surf_b
    prop.config_map = _conf_map
    
    prop = instance_create(x,y+8*13,obj_prop_btn)
    prop.prop_name = "SurfL"
    prop.map = _map
    prop.value = _id.surf_l
    prop.config_map = _conf_map
    
    prop = instance_create(x,y+9*13,obj_prop_btn)
    prop.prop_name = "SurfR"
    prop.map = _map
    prop.value = _id.surf_r
    prop.config_map = _conf_map
}
