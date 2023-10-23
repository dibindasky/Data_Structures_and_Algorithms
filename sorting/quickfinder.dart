void quick(List arr,int start,int end){
  if(start>=end)
    return;
  int pivot=start;
  int left=start+1;
  int right=end;
  while(left<=right){
    if(arr[left]>arr[pivot] && arr[right]<arr[pivot])swap(arr,left++,right--);
    if(arr[left]<=arr[pivot]) left++;
    if(arr[right]>=arr[pivot]) right--;
  }
  swap(arr,right,pivot);
  quick(arr,start,right-1);
  quick(arr,right+1,end);
}
void swap(List arr, int i, int j){
  int temp=arr[i];
  arr[i]=arr[j];
  arr[j]=temp;
}
void main(){
  List arr=[55,21,3,45,8,2,63,12];
  quick(arr,0,arr.length-1);
  print(arr);
}