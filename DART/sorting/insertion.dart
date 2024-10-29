void main(){
  List<int> array=[5,6,43,2,3,1,8,9,7,11];
  for(int i=1;i<array.length;i++){
    int j=i-1,temp=array[i];
    while(j>=0 && array[j]>temp){
      array[j+1]=array[j--];
    }
    array[j+1]=temp;
  }
  print(array);
}