#ifndef BINARY_TREE_GMSH2334_STACK_H
#define BINARY_TREE_GMSH2334_STACK_H

#include <iostream>
#include "nstack.h"
#include "nodo.h"
#include "iterator.h"

using namespace std;


template <typename T>
class Stack {
private:
    nstack<T>* head;
    nstack<T>* tail;
    int nodes;

public:
    Stack(){
        head= nullptr;
        tail= nullptr;
        nodes=0;
    };
    T get(){
        if(!head){
            cout<<"vacia";
        } else{
            return head->data;
        }
        return nullptr;
    };
    void add(T value){
        auto* temp= new nstack<T>{value, nullptr};
        if (head==nullptr) {
            head=temp;
            tail=temp;
        }else{
            temp->next=head;
            head=temp;
        }
        nodes++;
    };
    void pop(){
        auto* temp=head;
        if(nodes==1)
            head=tail=nullptr;
        else{
            head=temp->next;
        }
        delete temp;
        nodes--;
    };
    T get(int position){
        if(!head){
            throw "Vacio";
        }
        auto* temp=head;
        for (int i = 1; i < position; i++) {
            temp=temp->next;
        }
        return temp->data;
    };
    void print(){
        nstack<T>* actual=head;
        while(actual!=tail){
            cout<<actual->data->data<<" ";
            actual=actual->next;
        }
        cout<<tail->data->data<<endl;
    };
    bool empty(){
        return head == nullptr;
    };
    int size(){
        return nodes;
    };
    void clear(){
        head=nullptr;
        tail=nullptr;
        nodes=0;
    };
    ~Stack(){
        if(head){
            head->killSelf();
        }
    };
};


#endif //BINARY_TREE_GMSH2334_STACK_H
