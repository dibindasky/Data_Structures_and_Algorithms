class Node{
  late int data;
  Node? left,right;
  Node(this.data);
}

class Bst{
  Node? root;

  void insert(int data){
    Node newNode=Node(data);
    if(root==null)root=newNode;
    else{
      Node? temp=root;
      while(true){
        if(temp!.data<data){
          if(temp.right==null){
            temp.right=newNode;
            break;
          }
          temp=temp.right;
        }
        else{
          if(temp.left==null){
            temp.left=newNode;
            break;
          }
          temp=temp.left;
        }      
      }
    }
  }

  void remove(int data){
    removeHelper(data, null, root);
  }
  void removeHelper(int target, Node? parent, Node? currenetNode){
    while(currenetNode!=null){
      if(currenetNode.data < target){
        parent=currenetNode;
        currenetNode=currenetNode.right;
      }else if(currenetNode.data > target){
        parent=currenetNode;
        currenetNode=currenetNode.left;
      }else{
        if(currenetNode.left==null && currenetNode.right==null){
          if(parent!.left==currenetNode){
            parent.left=null;
          }else if(parent.right==currenetNode){
            parent.right=null;
          }else{
            root=null;
          }
          return;
        }else if(currenetNode.right==null){
          currenetNode.data=findSmallest(currenetNode.left);
          removeHelper(currenetNode.data, currenetNode, currenetNode.left);
        }else{
          currenetNode.data=findSmallest(currenetNode.right);
          removeHelper(currenetNode.data, currenetNode, currenetNode.right);
        }
      }
    }
  }
  int findSmallest(Node? temp){
    if(temp!.left==null){
      return temp.data;
    }else{
      return findSmallest(temp.left);
    }
  }

  void inOrder(){
    inOrderHelper(root);
  }
  void inOrderHelper(Node? temp){
    if(temp!=null){
      inOrderHelper(temp.left);
      print(temp.data);
      inOrderHelper(temp.right);
    }
  }
}
void main(){
  Bst b=Bst();
  b.insert(10);
  b.insert(5);
  b.insert(15);
  b.inOrder();
}