#include <iostream>
#include <string>
#include <vector>
#include "Comodo.cpp"
using namespace std;

class Casa {
private:
    vector<Comodo> comodos;

public:
    void adicionarComodo(Comodo comodo) {
        comodos.push_back(comodo);
    }

    void listarComodos() const {
        cout << "Cômodos da casa:" << endl;
        for (const auto& comodo : comodos) {
            cout << "- " << comodo.getNome() << endl;
        }
    }

    vector<Comodo>& getComodos() {
        return comodos;
    }
};
