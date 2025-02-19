if(consertado){
    sprite_index = fogao;
    if (!removido) { // Se ainda não foi removido da lista
        obj_controller.removerLista(id);
        removido = true; // Marca como removido
    }
}