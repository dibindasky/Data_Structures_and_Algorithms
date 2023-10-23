import 'dart:io';
void heapify(List<int> heap, int start, int end){
  for(int i=end;i>=0;i--){
    _shiftUp(i, heap);
  }
}

_shiftUp(int idx, List<int> heap){
  int parentIdx=_parentIdx(idx);
  while(parentIdx >= 0 && heap[idx] > heap[parentIdx]){
    _swap(heap, parentIdx, idx);
    idx=parentIdx;
    parentIdx=_parentIdx(idx);
  }
}

int _parentIdx(int idx)=> (idx-1)~/2;

void _swap(List<int> heap, int i, int j){
  int temp = heap[i];
  heap[i] = heap[j];
  heap[j] = temp;
}

void heapSort(List<int> heap){
  for(int i=0;i<heap.length;i++){
    heapify(heap, 0, heap.length-1-i);
    _swap(heap, 0, heap.length-1-i);
  }
}

void main(){
  List<int> heap=[5,3,2,6,9,11,4,8,7];
  heapSort(heap);
  print('');
  heap.forEach((element)=> stdout.write('$element '));
}