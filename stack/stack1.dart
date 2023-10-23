class Node{
  int? data;
  Node? bottom;
  Node(int data){
    this.data=data;
  }
}
class Stack{
  Node? top;

  void push(int data){
    if(top==null)
      top=Node(data);
    else{
      Node newNode=Node(data);
      newNode.bottom=top;
      top=newNode;
    }
  }
  void pop(){
    if(top == null)
      print('empty stack');
    else{
      print(top!.data);
      top=top?.bottom;
    }
  }
  void peek(){
    if(top==null)
      print('empty stack');
    else
      print(top!.data);
  }
  void display(){
    if(top==null)
      print('empty stack');
    else{
      Node? temp=top;
      while(temp != null){
        print(temp.data);
        temp=temp.bottom;
      }
    }
  }
}
void main(){
  Stack s=Stack();
  s.push(1);
  s.push(2);
  s.push(3);
  s.push(4);
  s.peek();
  print('---------------');
  s.pop();
  print('---------------');
  s.display();
}