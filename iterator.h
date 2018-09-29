#ifndef BINARY_TREE_GMSH2334_ITERATOR_H
#define BINARY_TREE_GMSH2334_ITERATOR_H


#include "nodo.h"
#include "nstack.h"
#include "stack.h"

template <typename T>
class Iterator {
protected:
    Node<T>* current;

public:
    Stack<Node<T>*> *stk;
    Iterator(){
        current=nullptr;
        stk=new Stack<Node<T>*>();
    };

    explicit Iterator(Node<T>* node){
        current=node;
    };

    Iterator<T> operator=(Iterator<T> node){
        this->current=node.current;
        return *this;
    };
    bool operator!=(Iterator<T> tt){
        return current!=tt.current;
    };
    Iterator<T> operator++(){
        if(current->right){
            auto temp=current->right;
            while(temp){
                this->stk->add(temp);
                temp=temp->left;
            }
        }
        if(stk->empty()){
            current=nullptr;
        }else{
            current=this->stk->get();
            this->stk->pop();
        }
        return *this;
    };
    T operator*(){
        return current->data;
    };
    void igual(Node<T>* nodo){
        this->current=nodo;
    };
};

#endif //BINARY_TREE_GMSH2334_ITERATOR_H