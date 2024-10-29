void boubleSort(List array){
  int temp;
  for(int i=0;i<array.length;i++){
    for(int j=0;j<array.length-i-1;j++){
      if(array[j]>array[j+1]){
        temp=array[j];
        array[j]=array[j+1];
        array[j+1]=temp;
      }
    }
  }
}
void main(){
  List array=[12,25,11,56,3,64,9,1];
  boubleSort(array);
  print(array);
}