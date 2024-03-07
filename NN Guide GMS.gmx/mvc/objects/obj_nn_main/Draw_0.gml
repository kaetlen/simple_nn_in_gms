/// @description Draw fitness
draw_set_colour(c_lime);
with(obj_arrowhead){
    draw_text(x, y, string_hash_to_newline(fitness));
}

