import 'dart:io';
class MaxHeap{
  List<int> _heap=[];

  MaxHeap.withArray(List<int> array){
    for(int i=0;i<array.length;i++){
      insert(array[i]);
    }
  }

  MaxHeap(){}

  void insert(int value){
    _heap.add(value);
    _shiftUp(_heap.length-1);
  }

  int remove(){
    _swap(_heap, 0, _heap.length-1);
    print('');
    int a=_heap.removeLast();
    _shiftDown(0);
    return a;
  }

  void _shiftUp(int idx){
    int parentIdx = _parentIdx(idx);
    while(parentIdx >= 0 && _heap[idx] > _heap[parentIdx]){
      _swap(_heap, idx, parentIdx);
      idx = parentIdx;
      parentIdx = _parentIdx(idx);
    }
  }
  void _shiftDown(int currenIidx){
    int endIdx=_heap.length-1;
    int leftIdx=_leftChildIdx(currenIidx);
    while(leftIdx <= endIdx){
      int rightIdx=_rightChildIdx(currenIidx);
      int toShift;
      if(rightIdx < endIdx && _heap[rightIdx] > _heap[currenIidx] && _heap[rightIdx] > _heap[leftIdx])
        toShift=rightIdx;
      else
        toShift=leftIdx;
      if(_heap[toShift]>_heap[currenIidx]){
        _swap(_heap, toShift, currenIidx);
        currenIidx=toShift;
        leftIdx=_leftChildIdx(toShift);
      }else
        return;
    }
  }

  int _parentIdx(int childIdx) => ((childIdx-1)~/2);

  int _leftChildIdx(int parentIdx) => ((2*parentIdx)+1);

  int _rightChildIdx(int parentIdx) => ((2*parentIdx)+2);

  void peek(){
    if(_heap.length==0){
      print('heap is empty');
    }else{
      print(_heap.last);
    }
  }
  void sort(List<int> heap){
    int l=heap.length;
    List<int> arr=[];
    for(int i=0;i<l;i++){
      arr.add(remove());
    }
    print(arr);
  }

  void display(){
    if(_heap.length==0)
      print('heap is empty');
    else{
      print('');
      _heap.forEach((element)=> stdout.write('$element -> '));
    }
  }

  void _swap(List<int> _heap, int i, int j){
    int temp = _heap[i];
    _heap[i] = _heap[j];
    _heap[j] = temp;
  }
}
void main(){
  List<int> a=[1,2,3,4,5,6,7];
  MaxHeap heap=MaxHeap.withArray(a);
  // heap.display();
  // heap.remove();
  // heap.display();
  // heap.insert(9);
  // heap.remove();
  // heap.remove();
  // heap.remove();
  // heap.display();
  heap.sort(heap._heap);

}