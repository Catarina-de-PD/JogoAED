#include <iostream>
#include <string>
using namespace std;

class Item {
private:
    string nome;
    bool consertado;

public:
    Item(string _nome){
        nome = _nome;
        consertado = false;
    }

    void consertar() {
        consertado = true;
        cout << nome << " foi consertado!" << endl;
    }

    bool estaConsertado() const {
        return consertado;
    }

    string getNome() const {
        return nome;
    }
};
