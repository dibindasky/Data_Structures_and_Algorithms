import 'dart:io';
class Node{
  late int data;
  Node? left,right;
  Node(this.data);
}
 
 //new
 int? a;
class Bst{
  Node? root;

  void insert(int data){      //insert a value
    Node newNode =Node(data);
    if(root==null)
      root=newNode;
    else{
      Node? currentNode=root;
      while(true){
        if(data <  currentNode!.data){
          if(currentNode.left==null){
            currentNode.left=newNode;
            break;
          }else
            currentNode=currentNode.left;
        }else{
          if(currentNode.right==null){
            currentNode.right=newNode;
            break;
          }else
            currentNode=currentNode.right;
        }
      }
    }
  }

  bool contains(int data){      //check tree contains the value or not
    if(root != null){
      Node? currentNode=root;
      while(currentNode != null){
        if(currentNode.data==data)
          return true;
        else if(data<currentNode.data)
          currentNode=currentNode.left;
        else 
          currentNode=currentNode.right;
      }
    }
    return false;
  }

  void remover(int data){
    _removerHelper(data, null, root);
  }

  void _removerHelper(int target, Node? parentNode, Node? currentNode){
    while(currentNode!=null){
      if(target<currentNode.data){
        parentNode=currentNode;
        currentNode=currentNode.left;
      }
      else if(target>currentNode.data){
        parentNode=currentNode;
        currentNode=currentNode.right; 
      }
      else{
        if(currentNode.left == null && currentNode.right == null){
          if(parentNode == null){
            root = null;
            return;
          }
          else if(parentNode.left == currentNode){
            parentNode.left = null;
            return;
          }
          else if(parentNode.right == currentNode){
            parentNode.right = null;
            return;
          }
        }
        else if(currentNode.right == null){       //when node have only left child
           currentNode.data = _findLargest(currentNode.left);
           _removerHelper(currentNode.data, currentNode, currentNode.left);
        }else{    //if(currentNode.left == null) && current have left and right child
          currentNode.data=_findSmallest(currentNode.right);
           _removerHelper(currentNode.data, currentNode, currentNode.right);         
        }
      }
    }
    return;
  }
  int _findSmallest(Node? currentNode){
    if(currentNode?.left == null)
      return currentNode!.data;
    else
      return _findSmallest(currentNode!.left);
   }
    int _findLargest(Node? currentNode){
    if(currentNode?.right == null)
      return currentNode!.data;
    else
      return _findLargest(currentNode!.right);
   }

   void closest(int data){      //to find the closest value in tree
    if(root==null){
      print('empty tree');
      return;
    }
    int close=root!.data; 
    Node? currenetNode = root;
    while(currenetNode != null){
      if(currenetNode.data == data){
        print('closest value is ${currenetNode.data}');
        return;
      }
      else if(data < currenetNode.data){
        if((currenetNode.data-data).abs() < (close-data).abs())
          close=currenetNode.data;
        currenetNode=currenetNode.left;
      }else{
        if((currenetNode.data-data).abs() < (close-data).abs())
          close=currenetNode.data;
        currenetNode=currenetNode.right;       
      }
    }
    print('closest vlue is $close');
    return;
   }

  void inOrder(){     //inorder display
    _inOrderHelper(root);
    print("");
  }
  void _inOrderHelper(Node? temp){
    if(temp != null){
      _inOrderHelper(temp.left);
      stdout.write('${temp.data} -> ');
      _inOrderHelper(temp.right); 
    }
  }

  void preOrder(){      //display in preOrder
    _preOrderHelper(root);
    print("");
  }
  void _preOrderHelper(Node? temp){
    if(temp != null){
      stdout.write('${temp.data} -> ');
      _preOrderHelper(temp.left);
      _preOrderHelper(temp.right);
    }
  }


  void postOrder(){     //display in post Order
    _postOrderHelper(root);
    print("");
  }
  void _postOrderHelper(Node? temp){
    if(temp != null){
      _postOrderHelper(temp.left);
      _postOrderHelper(temp.right);
      stdout.write('${temp.data} -> ');
    }
  }

  void prime(Node? temp){
    if(temp != null){
      prime(temp.left);
      if(primeNo(temp.data)){
        print(temp.data);
      }
      prime(temp.right);
    }
  }
  bool primeNo(int data){
    for(int i=2;i<data;i++){
      if(data%i==0){
        return false;
      }
    }
    return true;
  }


  bool treeValidator(){
    List<int>arr=[];
    _validatorHelper(root, arr);
    for(int i=0;i<arr.length-1;i++){
      if(arr[i]>arr[i+1]){
        return false;
      }
    }
    return true;
  }
  void _validatorHelper(Node? temp,List<int> arr){
    if(temp != null){
      _validatorHelper(temp.left,arr);
      arr.add(temp.data);
      _validatorHelper(temp.right,arr); 
    }
  }

  void insertionHelper(){
    // print('enter the no of nodes');
    // int size=int.parse(stdin.readLineSync()!);
    // print('enter the data');
    // for(int i=0;i<size;i++){
    //   insert(int.parse(stdin.readLineSync()!));
    // }
    List a=[40,20,15,12,13,29,27,25,28,27,55,41,60,56,55,57,56,59,62,65,64,67,66];
    a.forEach((element)=> insert(element));
  }
}

void main(){
  Bst tree=Bst();
  tree.insertionHelper();
  // tree.inOrder();
  // tree.remover(17);
  // tree.closest(18);
  // tree.inOrder();
  // tree.postOrder();
 print( tree.treeValidator());
}