import 'dart:io';

class Node{
  int? value;
  Node? next;
  Node(int value){
    this.value=value;
    next=null;
  }
}
class LinkedList{
  Node? head,tail;
  void addNode(int value){
    if(head==null){
      head=Node(value);
      tail=head;
      return;
    }
    tail!.next=Node(value);
    tail=tail!.next;
    tail!.next=null;
    return;
  }
  void display(){
    if(head==null){
      print('linkedList is empty');
      return;
    }
    Node? current=head;
    do{
      stdout.write(current?.value);
      current=current?.next;
    }while(current?.next != null);
    return;
  }
  void deleteTail(){
    if(head==tail){
      head=null;
      tail=null;
      return;
    }
    Node? current=head;
    while(current!.next != tail){
      current=current.next;
    }
    tail=current;
    tail!.next=null;
  }
  LinkedList? reverseList(){
    LinkedList newList=LinkedList();
    while(head != null){
    int? a=tail?.value;
    newList.addNode(a!);
    deleteTail();
    }
    return newList;
  }
}
void main(){
  LinkedList List1=LinkedList();
  LinkedList List2;
  List1.addNode(1);
  List1.addNode(2);
  List1.addNode(3);
  List1.addNode(4);
  List1.addNode(5);
  List1.addNode(6);
  List1.display();
  print("--------------------------------");
  List2=List1.reverseList()!;
  List2.display();
}