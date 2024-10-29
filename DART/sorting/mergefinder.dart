
void main(){
  List<int> arr=[55,21,3,45,8,2,63,12];
  arr=merge(arr);
  print(arr);
}

List<int> merge(List<int> arr){
  if(arr.length<=1)return arr;
  int start=0;
  int end=arr.length;
  int mid=start+(end-start)~/2;
  List<int> larr=arr.sublist(start,mid);
  List<int> rarr=arr.sublist(mid,end);
  larr=merge(larr);
  rarr=merge(rarr);
  return join(larr,rarr);
}
List<int> join(List<int> larr, List<int> rarr){
  int i=0,j=0;
  List<int> narr=[];
  while(i<larr.length && j<rarr.length){
    if(larr[i]<rarr[j]){
      narr.add(larr[i++]);}
    else {
      narr.add(rarr[j++]);}
  }
  while(i<larr.length){
    narr.add(larr[i++]);}
  while(j<larr.length){
    narr.add(rarr[j++]);}
  return narr;
}