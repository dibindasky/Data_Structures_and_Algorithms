import 'dart:collection';

class Graph<K>{
  Map<K,List<K>> map=HashMap<K,List<K>>();

  void insert(K key,K value,bool direction){
    map.putIfAbsent(key, () => []);
    map.putIfAbsent(value, () => []);
    connect(key, value);
    if(direction)connect(value, key);
  }
  void connect(K vertex,K edge){
    List<K>? edges=map[vertex];
    edges!.add(edge);
    map[vertex]=edges;
  }

  void display(){
    for(var vertex in map.keys){
      print('$vertex  ${map[vertex]}');
    }
  }

  void remove(K target){
    map.remove(target);
    for(var edges in map.values){
      edges.remove(target);
    }
  }

  void bfs(K start){
    Queue<K> que=Queue();
    Set<K> set={};
    bfsHelper(start,que,set);
  }
  void bfsHelper(K start, Queue<K> que,Set<K> set){
    que.add(start);
    set.add(start);
    while(que.isNotEmpty){
      K edge=que.removeFirst();
      print(edge);
      List<K>? temp=map[edge];
      temp!.forEach((element) {
        if(!set.contains(element)){
          que.add(element);
          set.add(element);
        }
      });
      
    }
    if(set.length < map.length){
      map.forEach((key, value) {
        if(!set.contains(key)){
          start=key;
        }
       });
      bfsHelper(start, que, set);
    }else{
      return;
    }
  }

  void dfs(K start){
    List<K> stack=[];
    Set<K> set={};
    dfsHelper(start,stack,set);
  }
  void dfsHelper(K start, List<K> stack,Set<K> set){
    stack.add(start);
    set.add(start);
    while(stack.isNotEmpty){
      K edge=stack.removeLast();
      print(edge);
      List<K>? temp=map[edge];
      temp!.forEach((element) {
        if(!set.contains(element)){
          stack.add(element);
          set.add(element);
        }
      });
      
    }
    if(set.length < map.length){
      map.forEach((key, value) {
        if(!set.contains(key)){
          start=key;
        }
       });
      dfsHelper(start, stack, set);
    }else{
      return;
    }
  }

}

void main(){
  Graph g=Graph();
  g.insert(5, 6, true);
  g.insert(8, 6, true);
  g.insert(5, 7, false);
  g.insert(6, 7, true);
  // g.remove(7);
  g.insert(10, 1, true);
  g.display();
  g.bfs(5);
  g.dfs(5);
}