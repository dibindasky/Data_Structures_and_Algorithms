void reverse(String str){
  List<String> rev=[];
  for(int i=str.length-1;i>=0;i--){
    rev.add(str[i]);
  }
  print(rev);
}
void main(){
  // String a='Dibin';
  // reverse(a);
  List a=[1,2,3,4,5,6,7];
  int result;
  result=binary(a, 7, 0, a.length-1);
  if(result==-1){
    print('element not found');
  }else{
    print('element found at position $result');
  }
}
int binary(List array,int element,int start,int end){
  int mid=start+(end-start)~/2;
  if(array[mid]==element){
    return mid;
  }else if(start>=end){
    return -1;
  }
  if(array[mid]>element){
    return binary(array, element, start, mid-1);
  }else{
    return binary(array, element, mid+1, end);
  }
}