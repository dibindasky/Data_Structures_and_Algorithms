void quickSort(List arr){
  quickSortHelper(arr,0,arr.length-1);
  return;
}
void quickSortHelper(List arr,int start,int end){
  if (start>=end)
    return;
  int pivot=start;
  int left=start+1;
  int right=end;
  while(left<=right){
    if(arr[left]>arr[pivot] && arr[right]<arr[pivot])swap(arr, left++, right--);
    if(arr[left]<=arr[pivot])left++;
    if(arr[right]>=arr[pivot])right--;
  }
  swap(arr, right, pivot);
  quickSortHelper(arr, start, right-1);
  quickSortHelper(arr, right+1, end);
}
void swap(List arr,int i,int j){
  int temp = arr[i];
  arr[i]=arr[j];
  arr[j]=temp;
}
void main(){
  List arr=[98,5,2,45,25,1,55];
  quickSort(arr);
  print("-----------------------------");
  print(arr);
  print("-----------------------------");

}
