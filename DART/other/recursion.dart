
import 'dart:io';

class Factorial{
  void factFinder(){
    print('enter element');
    int f=int.parse(stdin.readLineSync()!);
    print(findFact(f));
  }
  int findFact(int n){
    if(n<=1){
      return 1;
    }
    return n*findFact(n-1);
  }
}

class BinarySearch{
  void searcher(){
    List<int> array=[1,2,3,4,5,6,7,8,9,10];
    print('enter element');
    int f=int.parse(stdin.readLineSync()!);
    int result=searchHelper(array,f,0,array.length-1);
    if(result==-1){
     print('element not found');
    }else{
      print('$f is at position $result ');
    }
  }
  int searchHelper(List arr,int element,int start,int end){
    int mid=start+(end-start)~/2;
    if(arr[mid]==element){
      return mid;
    }else if(start>=end){
      return -1;
    }
    if(arr[mid]<element){
      return searchHelper(arr,element,mid+1,end);
    }else{
      return searchHelper(arr,element,start,mid-1);
    }
  }
}
void main(){
  Factorial f=Factorial();
  f.factFinder();
  BinarySearch b=BinarySearch();
  b.searcher();
  //print(sumOfN(10));
}
int sumOfN(int n){
  if(n<=1){
    return 1;
  }else{
    return n+sumOfN(n-1);
  }
}