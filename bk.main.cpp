#include <iostream>
#include "tree.h"

using namespace std;


int main(int argc, char const *argv[]){

        Tree<int> tree;
        for (int i=0; i<5;i++){
                tree.insert((i+3)*5);
        }
        tree.print();
        tree.remove(25);

        for (int i=5; i>0;i--){
                tree.insert((i+7)*2);
        }
        tree.print();


    Iterator<int> ite = tree.begin();

    do{
        cout<<*ite<<"\n";
        ++ite;
    }while(ite!=tree.end());


    cout<<"\n\nPress something to finish...";
    cin.get();
    return EXIT_SUCCESS;
}
