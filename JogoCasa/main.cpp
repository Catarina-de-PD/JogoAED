#include "Casa.cpp"

int main() {
    Casa minhaCasa;

    Comodo sala("Sala");
    Comodo cozinha("Cozinha");

    sala.adicionarItem(Item("Sofa"));
    sala.adicionarItem(Item("Televisao"));
    cozinha.adicionarItem(Item("Geladeira"));
    cozinha.adicionarItem(Item("Fogao"));

    minhaCasa.adicionarComodo(sala);
    minhaCasa.adicionarComodo(cozinha);

    minhaCasa.listarComodos();

    for (auto& comodo : minhaCasa.getComodos()) {
        comodo.listarItens();
    }

    minhaCasa.getComodos()[0].getItens()[0].consertar();

    minhaCasa.getComodos()[0].listarItens();

    return 0;
}
