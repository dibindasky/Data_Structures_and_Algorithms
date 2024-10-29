class Node{
  int? value;
  Node? next;
  Node(int value)
  {
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
    while(current?.next != null){
      print(current?.value);
      current=current?.next;
    }
    return;
  }
}
void main(){
  LinkedList arr = LinkedList();
  List<int> array=[1,2,3,4,5,6,7,8,9];
  array.forEach((element) => arr.addNode(element));
  arr.display();
}