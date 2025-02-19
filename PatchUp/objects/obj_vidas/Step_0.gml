x = obj_player.x + 8;
y = obj_player.y + -70;

if(obj_player.vidas == 3){
    sprite_index = vidas_3;
}else if(obj_player.vidas == 2){
    sprite_index = vidas_2;
}else if(obj_player.vidas == 1){
    sprite_index = vidas_1;
}