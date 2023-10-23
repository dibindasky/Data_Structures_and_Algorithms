class Node{
  int? value;
  Node? next;
  Node? prev;
  Node(int value)
  {
    this.value=value;
    next=null;
    prev=null;
  }
}
class LinkedList{
  Node? head,tail;
  //add a node at tail
  void addNode(int value){
    if(head==null){
      head=Node(value);
      tail=head;
      return;
    }
    Node newNode=Node(value);
    tail!.next=newNode;
    newNode.prev=tail;
    tail=newNode;
    tail!.next=null;
    return;
  }
  //display list
  void display(){
    if(head==null){
      print('linkedList is empty');
      return;
    }
    Node? current=head;
    while(current != null){
      print(current.value);
      current=current.next;
    }
    return;
  }
  //insert after a given value
  void insertAfter(int nextTo,int value){
    if(head==null){
      print('linkedList is empty');
      return;
    }
    Node newNode=Node(value);
    if(tail!.value == nextTo){
      tail!.next = newNode;
      newNode.prev=tail;
      tail=newNode;
      return;
    }
    Node? current=head;
    while(current?.value != nextTo){
      current=current?.next;
    }
    newNode.next=current!.next;
    current.prev = newNode;
    current.next=newNode;
    newNode.prev = current;
    return;
  }
  //insert an element before an given element
  void insertBefore(int before,int value){
    if(head==null){
      print('List is empty');
      return;
    }
    Node? newNode = Node(value);
    if(before == head!.value){
      newNode.next=head;
      head!.prev = newNode;
      head=newNode;
      return;
    }
    Node? current=head;
    while(current!.next!.value != before){
      current=current.next;
    }
    newNode.next=current.next;
    current.next!.prev = newNode;
    current.next=newNode;
    newNode.prev=current;
  }
  //delete a node in linked list
  void deleteNode(int value){
    if(head==null){
      print('empty list');
    }
    if(head!.value==value){
      head=head!.next;
      head?.prev=null;
    }else if(tail!.value==value){
      tail=tail!.prev;
      tail!.next=null;
    }else{
      Node? current=head;
    while(current!.next!.value != value){
        current=current.next;
      }
      current.next=current.next!.next;
      current.next!.prev=current;
    }
  }
  void reverseList(){
    Node? current=tail;
    while(current!=null){
      print(current.value);
      current=current.prev;
    }
  }
}
void main(){
  LinkedList dl = LinkedList();
  dl.addNode(1);
  dl.addNode(2);
  dl.addNode(3);
  dl.addNode(4);
  dl.addNode(5);
  dl.addNode(6);
  dl.display();
  print('-----------------------');
  dl.insertAfter(6, 8);
  dl.display();
  print('-----------------------');
  dl.insertBefore(8, 7);
  dl.display();
  print('-----------------------');
  dl.deleteNode(5);
  dl.deleteNode(7);
  dl.display();
  print('-----------------------');
  dl.reverseList();
}