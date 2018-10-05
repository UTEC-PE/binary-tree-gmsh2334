#ifndef BINARY_TREE_GMSH2334_TREE_H
#define BINARY_TREE_GMSH2334_TREE_H

#include "nodo.h"
#include "iterator.h"

using namespace std;


template <typename T>

class Tree {
public:
    Node<T>* root;

    Node<T>* find(Node<T>* t, T x) {
        if(t == nullptr)
            return nullptr;
        else if(x < t->data)
            return find(t->left, x);
        else if(x > t->data)
            return find(t->right, x);
        else
            return t;
    }

    Node<T>* Empty(Node<T>* t){
        if(t == nullptr)
            return nullptr;
        {
            Empty(t->left);
            Empty(t->right);
            delete t;
        }
        return nullptr;
    }

    Node<T>* insert(T x, Node<T>* t){
        if(t == nullptr)
        {
            t = new Node<T>;
            t->data = x;
            t->left = t->right = nullptr;
        }
        else if(x < t->data)
            t->left = insert(x, t->left);
        else if(x > t->data)
            t->right = insert(x, t->right);
        return t;
    }

    Node<T>* Min(Node<T>* t){
        if(t == nullptr)
            return nullptr;
        else if(t->left == nullptr)
            return t;
        else
            return Min(t->left);
    }

    Node<T>* Max(Node<T>* t){
        if(t == nullptr)
            return nullptr;
        else if(t->right == nullptr)
            return t;
        else
            return Max(t->right);
    }

    Node<T>* remove(T x, Node<T>* t) {
        Node<T>* temp;
        if(t == nullptr)
            return nullptr;
        else if(x < t->data)
            t->left = remove(x, t->left);
        else if(x > t->data)
            t->right = remove(x, t->right);
        else if(t->left && t->right) {
            temp = Min(t->right);
            t->data = temp->data;
            t->right = remove(t->data, t->right);
        }
        else {
            temp = t;
            if(t->left == nullptr)
                t = t->right;
            else if(t->right == nullptr)
                t = t->left;
            delete temp;
        }

        return t;
    }

    void order(Node<T>* t){
        if(t == nullptr)
            return;
        order(t->left);
        cout << t->data << " ";
        order(t->right);
    }
    void preOrden(Node<T>* t){
        if(t == nullptr)
            return;
        cout << t->data << " ";
        order(t->left);
        order(t->right);

    }
    void postOrden(Node<T>* t){
        if(t == nullptr)
            return;
        order(t->left);
        order(t->right);
        cout << t->data << " ";
    }

public:
    Tree() {
        root = nullptr;
    }

    void insert(T x) {
        root = insert(x, root);
    }

    void remove(T x) {
        root = remove(x, root);
    }

    void print() {
        order(root);
        cout << endl;
    }
    void print_pre() {
        preOrden(root);
        cout << endl;
    }
    void print_post() {
        postOrden(root);
        cout << endl;
    }

    void search(T x) {
        root = find(root, x);
    }

    ~Tree() {
        root = Empty(root);
    }
    Iterator<T> begin(){
        Iterator<T> ite;
        auto temp=root;

        while(temp->left) {
            ite.stk->add(temp);
            temp = temp->left;
        }
        ite.igual(temp);
        return ite;
    };
    Iterator<T> end(){
        return Iterator<T>(nullptr);
    };
};

#endif //BINARY_TREE_GMSH2334_TREE_H
