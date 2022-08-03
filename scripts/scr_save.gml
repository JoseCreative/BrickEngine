///scr_save(file)
filename=argument0
var root_list = ds_list_create()
with(obj_part){
    var map = ds_map_create()
    ds_list_add(root_list,map)
    ds_list_mark_as_map(root_list,ds_list_size(root_list)-1)
    
    var obj = object_get_name(object_index)
    ds_map_add(map,"obj",obj)
    ds_map_add(map,"Y",y)
    ds_map_add(map,"X",x)
    ds_map_add(map,"color_id",color_id)
    ds_map_add(map,"SizeX",size_x)
    ds_map_add(map,"SizeY",size_y)
    ds_map_add(map,"colide",colide)
    ds_map_add(map,"st",surf_t)
    ds_map_add(map,"sb",surf_b)
    ds_map_add(map,"sl",surf_l)
    ds_map_add(map,"sr",surf_r)
    
}
var wrap = ds_map_create()
ds_map_add_list(wrap,"ROOT",root_list)

var stringy = json_encode(wrap)
scr_save_json(filename,stringy)

ds_map_destroy(wrap)
global.placefile = filename
show_debug_message("place saved   "+global.placefile)
