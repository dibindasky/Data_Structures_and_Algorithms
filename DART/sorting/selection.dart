void main(){
  List<int> array=[5,6,43,2,3,1,8,9,7,11];
  for(int i=0;i<array.length-1;i++){
    int sm=i;
    for(int j=i;j<array.length;j++){
      if(array[j]<array[sm]){
        sm=j;
      }
    }
    int temp=array[i];
    array[i]=array[sm];
    array[sm]=temp;
  }
  print(array);
}