int binarySearch(List array,int element){
  int start=0,end=array.length-1,mid;
  while(start<=end){
    mid=start+(end-start)~/2;
    if(array[mid]==element){
      return mid;
    }
    if(array[mid]<element){
      start=mid+1;
    }else{
      end=mid-1;
    }
  }
  return -1;
}
int linearSearch(List array,int element){
  int i=0;
  while(i<array.length){
    if(array[i]==element){
      return i;
    }
    i++;
  }
  return -1;
}
void main(){
  List array=[19,2,3,45,5,6,100,8,66,10,11,12,13,4,5];
  int search =4;
  int result=linearSearch(array, search);
  if(result==-1){
    print('element not found');
  }else{
    print('$search is at position $result ');
  }
}