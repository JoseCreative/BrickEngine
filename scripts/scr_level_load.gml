///scr_level_load(name)
with obj_part {
    instance_destroy()
}
_name = argument0
_file = file_text_open_read(_name)
_map = file_text_read_string(_file)
show_message(_map)
parts_map = json_decode(_map)
show_message(ds_map_write(parts_map))
repeat(ds_map_size(parts_map)) {
    part = instance_create(0,0,obj_part)
    part.prop = ds_map_find_value(parts_map,"part_props_"+string(part))
    part.prop_config = ds_map_find_value(parts_map,"part_settings_"+string(part))
    with part {
        x = prop[? "X"]
        y = prop[? "Y"]
        size_x = prop[? "SizeX"]
        size_y = prop[? "SizeY"]
        color_id = prop[? "Color"]
        colide = prop[? "CanCollide"]
    }
}
file_text_close(_file)
