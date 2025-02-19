if(consertado){
    sprite_index = mesa;
    if (!removido) { // Se ainda não foi removido da lista
        obj_controller.removerLista(id);
        removido = true; // Marca como removido
    }
}