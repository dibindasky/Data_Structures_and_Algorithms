
class Node {
  int? value;
  Node? next;
  Node(int value) {
    this.value = value;
    next = null;
  }
}


void main() {

 int a,b;
 a=10;
 b=a;
 print(a);
 print(b);
 a=15;
 print(a);
 print(b);

}
