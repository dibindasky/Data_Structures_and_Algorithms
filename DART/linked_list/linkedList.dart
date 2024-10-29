//creating node
class Node {
  int? value;
  Node? next;
  Node(int value) {
    this.value = value;
    next = null;
  }
}

class LinkedList {
  Node? head, tail;

//dekete a node with given value
  void deleteNode(int value) {
    if (head == null) {
      print('LinkedList is empty');
      return;
    }
    if (head!.value == value) {
      head = head!.next;
      return;
    }
    Node? current = head;
    while (current!.next!.value != value) {
      current = current.next;
    }
    if (current.next == tail) {
      tail = current;
      current.next = null;
      return;
    }
    current.next = current.next!.next;
    return;
  }

  //add a node at tail
  void addNode(int value) {
    if (head == null) {
      head = Node(value);
      tail = head;
      return;
    }
    tail!.next = Node(value);
    tail = tail!.next;
    tail!.next = null;
    return;
  }

  //display the list
  void display() {
    if (head == null) {
      print('linkedList is empty');
      return;
    }
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
    return;
  }

  //insert element after a given element
  void insertAfter(int nextTo, int value) {
    if (head == null) {
      print('linkedList is empty');
      return;
    }
    Node newNode = Node(value);
    if (tail!.value == nextTo) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    Node? current = head;
    while (current?.value != nextTo) {
      current = current?.next;
    }
    newNode.next = current!.next;
    current.next = newNode;
    return;
  }

  //insert an element before an given element
  void insertBefore(int before, int value) {
    if (head == null) {
      print('List is empty');
      return;
    }
    Node? newNode = Node(value);
    if (before == head!.value) {
      newNode.next = head;
      head = newNode;
      return;
    }
    Node? current = head;
    while (current!.next!.value != before) {
      current = current.next;
    }
    newNode.next = current.next;
    current.next = newNode;
  }

  void deleteMiddle() {
    int length = 0;
    Node? node = head;
    while (node != null) {
      node = node.next;
      length++;
    }
    int i = 1;
    node = head;
    while (i < length / 2 -1 ) {
      node = node?.next;
      i++;
    }
    node!.next = node.next?.next;
  }
}

void main() {
  LinkedList List1 = LinkedList();
  List1.display();
  List1.addNode(1);
  List1.addNode(2);
  List1.addNode(3);
  List1.addNode(4);
  List1.addNode(5);
  List1.addNode(6);
  List1.display();
  print('-----------------------');
  // List1.insertAfter(3, 8);
  // List1.display();
  print('-----------------------');
  // List1.deleteNode(1);
  // List1.insertBefore(2, 8);
  List1.display();
  print('-----------------------');

  List1.deleteMiddle();
  List1.display();
}
