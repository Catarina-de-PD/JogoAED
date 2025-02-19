if(var_vitoria == true){
   if(var_vitoria == true){
    
    if (global.obj_para_consertar != noone) {
        show_debug_message("Objeto válido encontrado!");
        
        with (global.obj_para_consertar) {
            if (variable_instance_exists(id, "consertado")) {
                consertado = true;
                global.contador_consertos = global.contador_consertos + 2;
                show_debug_message(global.contador_consertos);
            } else {
                show_debug_message("Erro: Variável 'consertado' não existe!");
            }
        }
    }
    
    var_vitoria = false;
    
    room_goto(room_game);
}

}