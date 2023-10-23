void main(){
  List<int> array=[5,6,43,2,3,1,8,9,7,11];
  for(int i=0;i<array.length-1;i++){
    for(int j=1;j<array.length-i;j++){
      if(array[j-1]>array[j]){
        int temp=array[j];
        array[j]=array[j-1];
        array[j-1]=temp;
      }
    }
  }
  print(array);
}