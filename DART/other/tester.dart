class HashTable<K,V>{

  late int size;
  late List<List<MapEntry<K,V>>> _table;

  HashTable(this.size){
    _table=List.filled(size, []);
  }

  int _hash(K key){
    return key.hashCode%size;
  }

  void add(K key, V value){
    int intex=_hash(key);
    int flag=0;
    for(var entry in _table[intex]){
      if(entry.key==key){
        _table[intex].removeAt(_table[intex].indexOf(entry));
        // _table[intex].insert(_table[intex].indexOf(entry), MapEntry(key, value));
        // flag=1;
      }
    }
    if(flag==0)
      _table[intex].add(MapEntry(key, value));
  }

  void get(K key){
    int intex=_hash(key);
    int flag=0;
    for(var entry in _table[intex]){
      if(entry.key==key){
        print('${entry.key}-> ${entry.value}');
        flag=1;
      }
    }
    if(flag==0)print('key not found');
  }

  void remove(K key){
    int intex=_hash(key);
    _table[intex].removeWhere((element) => element.key==key);
  }
}
void main(){
  HashTable h=HashTable(5);
  h.add(1, 'dibin');
  // h.add(2, 'hari');
  h.add(1, 'rini');
  h.get(1);
  // h.get(2);
  // h.remove(1);
  // h.get(1);
}