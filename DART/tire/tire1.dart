import 'dart:collection';

class Node{
  Map<String,Node>children=HashMap<String,Node>();

}
class Tire{
  Node root=Node();
  String endSymbol='#*';

  void insert(String str){
    Node? node=root;
    for(int i=0;i<str.length;i++){
      if(!node!.children.containsKey(str[i])){
        Node newNode=Node();
        node.children[str[i]]=newNode;
      }
      node=node.children[str[i]];
    }
    node!.children[endSymbol]=Node();
  }

  bool contains(String str){
    Node? temp=root;
    for(int i=0;i<str.length;i++){
      if(! temp!.children.containsKey(str[i])){
        return false;
      }
      temp=temp.children[str[i]];
    }     
    return temp!.children.containsKey(endSymbol);
  }

  void remove(String str){
    if(!contains(str)){
      print('string not in trie');
      return;
    }
    Node? temp=root,node=root;
    int position=0;
    for(int i=0;i<str.length;i++){
      if(node!.children.length>1){
        print(str[i]);
        position=i;
        temp=node;
      }
      print(position);
      node=node.children[str[i]];
    }
    if(position==str.length-1){
      print(temp!.children);
      temp.children.removeWhere((key, value) => key==endSymbol);
    }else
      temp!.children.removeWhere((key, value) => key==str[position]);

  }

  void display(String str){
    Node? t=root;
    for(int i=0;i<str.length;i++){
      print(t!.children);
      t=t.children[str[i]];
    }
  }

}

void main(){
  Tire t=Tire();
  t.insert('amal');
  t.insert('amala');
  t.insert('amalana');
  t.remove('amal');
  // t.display('amala');
  print(t.contains('amal'));
  print(t.contains('amala'));

}