///scr_level_save(name)
_name = argument0
parts_map = ds_map_create()
with obj_part {
    ds_map_add_map(other.parts_map,"part_props_"+string(id),prop)
    ds_map_add_map(other.parts_map,"part_settings_"+string(id),prop_config)
}
_json = json_encode(parts_map)
_file = file_text_open_write(_name)
file_text_write_string(_file,_json)
file_text_close(_file)
