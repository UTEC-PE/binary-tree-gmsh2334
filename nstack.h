//
// Created by GMSH on 28/09/2018.
//

#ifndef BINARY_TREE_GMSH2334_NSTACK_H
#define BINARY_TREE_GMSH2334_NSTACK_H

#include <iostream>

using namespace std;

template <typename T>
struct nstack {
    T data;
    nstack* next;

    void killSelf(){
        if(next!=nullptr)
            next->killSelf();
        delete this;
    };
};

#endif //BINARY_TREE_GMSH2334_NSTACK_H
