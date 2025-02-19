// Verifica se o jogador pressionou uma tecla para mudar a direção
if keyboard_check_pressed(vk_left) {
    direcao_x = -1;
    direcao_y = 0;
}
else if keyboard_check_pressed(vk_right) {
    direcao_x = 1;
    direcao_y = 0;
}
else if keyboard_check_pressed(vk_up) {
    direcao_x = 0;
    direcao_y = -1;
}
else if keyboard_check_pressed(vk_down) {
    direcao_x = 0;
    direcao_y = 1;
}

// Calcula a próxima posição
var novo_x = x + direcao_x * velocidade;
var novo_y = y + direcao_y * velocidade;

// Verifica colisão com o Tilemap
if !tilemap_get_at_pixel(tilemap, novo_x, y) {
    x = novo_x;
}
if !tilemap_get_at_pixel(tilemap, x, novo_y) {
    y = novo_y;
}


if indice_coleta < array_length(filaParametro) { // Evita erro de índice
    if place_meeting(x, y, filaParametro[indice_coleta]) {
        var obj_coletado = instance_place(x, y, filaParametro[indice_coleta]);
        if (obj_coletado != noone) {
            instance_destroy(obj_coletado);
            indice_coleta++;
            show_debug_message(indice_coleta)
        }
    }
}

if (indice_coleta == array_length(filaParametro)) { 
    with (obj_controllerMinigame) {
        var_vitoria = true;
        
    }
}

if (!colidiu && (place_meeting(x, y, obj_caixaPrego) || 
                place_meeting(x, y, obj_chaveFenda) || 
                place_meeting(x, y, obj_chaveRosca) || 
                place_meeting(x, y, obj_tabua))) 
{
    with (obj_player) {
        vidas = vidas -1;
        show_debug_message(vidas)
    }
    room_goto(room_game);
}

