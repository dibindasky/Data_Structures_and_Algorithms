import 'dart:collection';

class Node{
  Map<String,Node?> children=HashMap<String,Node>();

}
class Tire{

  Tire(String str){
    insertData(str);
  }

  Node root=Node();
  String endSymbol='**';

  void insertData(String str){
    for(int i=0;i<str.length;i++){
      insertDataHelper(str.substring(i));
    }
  }

  void insertDataHelper(String str){
    Node node=root;
    for(int i=0;i<str.length;i++){
      String letter=str[i];
      if(! node.children.containsKey(letter)){
        Node newNode=Node();
        node.children[letter]=newNode;
      }
      node=node.children[letter]!;
    }
    node.children[endSymbol]=Node();
  }

  bool contains(String str){
    Node node = root;
    for(int i=0;i<str.length;i++){
      String letter=str[i];
      if(!node.children.containsKey(letter)){
        return false;
      }
      node=node.children[letter]!;
    }
    return node.children.containsKey(endSymbol);
  }
}
void main(){
  Tire t=Tire('dibin');
  print(t.contains('dibin'));
  t.insertData('dibi');
  print(t.contains('dibi'));
  t.insertData('bindu');
  print(t.contains('bindu'));
  print(t.contains('ndu'));
  print(t.root.children.keys);
}