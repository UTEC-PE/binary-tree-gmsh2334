#ifndef BINARY_TREE_GMSH2334_NODO_H
#define BINARY_TREE_GMSH2334_NODO_H

template <typename T>
struct Node{
    T data;
    Node<T>* left;
    Node<T>* right;

    explicit Node(T data) : data(data) {
        right = left = nullptr;
    };

};


#endif //BINARY_TREE_GMSH2334_NODO_H