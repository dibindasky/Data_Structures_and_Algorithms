
List<int>? merge(List<int> array){
  if(array.length<=1)
    return array;
  int mid=array.length~/2;
  List<int>? array1=array.sublist(0,mid);
  List<int>? array2=array.sublist(mid,array.length);
  array1=merge(array1);
  array2=merge(array2);
  return join(array1!,array2!);
}
List<int>? join(List<int> array1,List<int> array2){
  int i=0,j=0;
  List<int> array=[];
  while(i<array1.length && j<array2.length){
    if(array1[i]<array2[j])
      array.add(array1[i++]);
    else
      array.add(array2[j++]);
  }
  while(i<array1.length)
    array.add(array1[i++]);
  while(j<array2.length)
    array.add(array2[j++]);
  return array;
}

void main(){
List<int>? array=[98,5,2,45,25,1,55];
array=merge(array);  
print(array);
}