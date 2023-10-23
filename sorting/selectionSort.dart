void selectionSort(List array){
  for(int i=0;i<array.length-1;i++){
   int small=i;
   for(int j=i+1;j<array.length;j++)
    array[j]<array[small]?small=j:small;
   int temp=array[small];
   array[small]=array[i];
   array[i]=temp; 
  }
}
void main(){
  List<int> array=[56,3,26,54,92,13,22,4,11];
  selectionSort(array);
  print(array);
}