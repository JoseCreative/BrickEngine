///draw_outline(color1,color2,alpha1,alpha2)
_col1 = argument0
_col2 = argument1
_alpha1 = argument2
_alpha2 = argument3



draw_set_alpha(_alpha1)
draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,_col1,_col1,_col1,_col1,true)
draw_set_alpha(1)
draw_set_alpha(_alpha2)
draw_line_width_colour(bbox_left-3,bbox_top-3,bbox_left-3,bbox_bottom+2,2,_col2,_col2)
draw_line_width_colour(bbox_right+2,bbox_top-3,bbox_right+2,bbox_bottom+2,2,_col2,_col2)
draw_line_width_colour(bbox_left-3,bbox_top-3,bbox_right+2,bbox_top-3,2,_col2,_col2)
draw_line_width_colour(bbox_left-3,bbox_bottom+2,bbox_right+2,bbox_bottom+2,2,_col2,_col2)
draw_set_alpha(1)
