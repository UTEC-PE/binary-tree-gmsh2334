#include <iostream>
#include "tree.h"

using namespace std;


int main(){

    Tree<int> tree;
    tree.newNode(6);
    tree.print();
    cout<<"\n\nPress something to finish...";
    cin.get();
    return EXIT_SUCCESS;
}
