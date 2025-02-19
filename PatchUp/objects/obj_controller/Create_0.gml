persistent = true;
objetos_quebrados = ds_list_create(); 
alarm[0] = -1;


ds_list_add(obj_controller.objetos_quebrados, obj_geladeira.id);
ds_list_add(obj_controller.objetos_quebrados, obj_fogao.id);
ds_list_add(obj_controller.objetos_quebrados, obj_televisao.id);
ds_list_add(obj_controller.objetos_quebrados, obj_mesa.id);
ds_list_add(obj_controller.objetos_quebrados, obj_estante.id);
ds_list_add(obj_controller.objetos_quebrados, obj_chuveiro.id);
ds_list_add(obj_controller.objetos_quebrados, obj_privada.id);

function removerLista(obj) {
    var index = ds_list_find_index(objetos_quebrados, obj);
    
    if (index != -1) { 
        ds_list_delete(objetos_quebrados, index);
        show_debug_message("Objeto removido da lista: " + string(obj));
        
        vitoria();
    } else {
        show_debug_message("ERRO: Objeto não encontrado na lista!");
    }
}

function vitoria(){
    if (ds_list_size(objetos_quebrados) == 0) {
        room_goto(room_vitoria); 
    }else{
        
    }
}

