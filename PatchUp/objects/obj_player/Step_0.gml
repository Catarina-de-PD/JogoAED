if (keyboard_check(vk_left)){ 
    x -= 4; 
    sprite_index = spr_npc_walk_left;
}
if (keyboard_check(vk_right)){ 
    x += 4;  
    sprite_index = spr_npc_walk_right;
}
