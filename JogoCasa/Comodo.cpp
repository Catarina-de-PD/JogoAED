#include <iostream>
#include <string>
#include <vector>
#include "Item.cpp"
using namespace std;

class Comodo {
private:
    string nome;
    vector<Item> itens;

public:
    Comodo(const string _nome){
        nome = _nome;
    }

    void adicionarItem(Item item) {
        itens.push_back(item);
    }

    void listarItens() const {
        cout << "Itens no comodo " << nome << ":" << endl;
        for (const auto& item : itens) {
            cout << "- " << item.getNome() << (item.estaConsertado() ? " (consertado)" : " (quebrado)") << endl;
        }
    }

    string getNome() const {
        return nome;
    }

    vector<Item>& getItens() {
        return itens;
    }
};
