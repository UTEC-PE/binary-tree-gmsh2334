#ifndef BINARY_TREE_GMSH2334_TREE_H
#define BINARY_TREE_GMSH2334_TREE_H

#include "nodo.h"

using namespace std;

template <typename T>

class Tree{
private:
    Node<T>* root;

public:
    Tree(){
        root = nullptr;
    };

    void newNode(T nData){
        Node<T>* temp = new Node<T>(nData);
        if(!root){
        root = temp;
            Node<T>* tep = new Node<T>(2*nData);

            root -> left = tep;

        Node<T>* tem = new Node<T>(12*nData);

        root -> left->left = tem;

        root -> right = nullptr;
       };/*else if(
                );*/
    };

    void print(){
        Node<T>* temp=root;
        while(temp){
            cout<< temp->data << "\n";
            temp=temp->left;
        }
    };


};


#endif //BINARY_TREE_GMSH2334_TREE_H
