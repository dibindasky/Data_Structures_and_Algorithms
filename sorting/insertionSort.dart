List<int> insertionSort(List<int> array){
  for(int i=1;i<array.length;i++){
    int current=array[i];
    int j=i-1;
    while(j>=0 && array[j]>current){
      array[j+1]=array[j];
      j--;
    }
      array[j+1]=current;
  }
  return array;
}
void main(){
  List<int> array=[56,3,26,54,92,13,22,4,11];
  array=insertionSort(array);
  print(array);
}