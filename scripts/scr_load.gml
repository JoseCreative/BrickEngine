///scr_load(file)
global.placefile2 = argument0

if file_exists(global.placefile2) {
    with (obj_part) {instance_destroy()}
    var wrap = scr_load_json(global.placefile2)
    
    var list = wrap[? "ROOT"]
    for(var i =0;i<ds_list_size(list);i++){
        var map = list[| i]
        
        var obj = map[? "obj"]
        with (instance_create(0,0,asset_get_index(obj))){
            ds_map_replace(prop,"X",map[? "X"])
            ds_map_replace(prop,"Y",map[? "Y"])
            ds_map_replace(prop,"Color",map[? "color_id"])
            ds_map_replace(prop,"SizeX",map[? "SizeX"])
            ds_map_replace(prop,"SizeY",map[? "SizeY"])
            ds_map_replace(prop,"CanCollide",map[? "colide"])
            ds_map_replace(prop,"SurfT",map[? "st"])
            ds_map_replace(prop,"SurfR",map[? "sr"])
            ds_map_replace(prop,"SurfL",map[? "sl"])
            ds_map_replace(prop,"SurfB",map[? "sb"])
        }
    }
    ds_map_destroy(wrap)
    show_debug_message("place loaded!  "+global.placefile2)
} else {
    show_message("The place could not be found or is invalid.")
}
