import 'dart:io';

class Node{
  int? data;
  Node? next;
  Node(int data){
    this.data = data;
  }
}
class Stack{
  Node? top;

  void push(int data){
    Node newNode = Node(data);
    if(top != null)
      newNode.next = top;
    top = newNode;
  }
  void pop(){
    if(top==null)
      print('underflow');
    else{
      print('pop ${top!.data}');
      top=top!.next;
    }
  }
  void display(){
    if(top==null){
      print('empty stack');
    }else{
      Node? current=top;
      while(current!=null){
        stdout.write('${current.data} ');
        current=current.next;
      }
      print('');
    }
  }
}
void main(){
  Stack s=Stack();
  s.push(1);
  s.push(2);
  s.push(3);
  s.push(4);
  s.push(5);
  s.display();
  s.pop();
  s.display();
}