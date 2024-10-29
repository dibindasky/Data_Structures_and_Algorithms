

class HashTable<K,V>{
  late int size;
  late List<List<MapEntry<K,V>>> _table;

  HashTable(this.size){
    _table=List.filled(size, []);
  }

  int _hash(K key) => key.hashCode%size;

  void set(K key, V value){
    int intex=_hash(key);
    for(var entry in _table[intex])if(entry.key==key)_table[intex].remove(entry.key);
    _table[intex].add(MapEntry(key, value));

  }

  void get(K key){
    int intex=_hash(key);
    for(var entry in _table[intex])entry.key==key ? print('${entry.key} -> ${entry.value}'): print('key not found');
  }

  void clear(){
    for(var i in _table)i.clear();
  }
  void remove(K key){
    int intex=_hash(key);
    _table[intex].removeWhere((element) => element.key==key);
  }
}
void main(){
  HashTable h=HashTable(5);
  h.set(1, 'dibin');
  h.set(2, 'hari');
  h.get(1);
  h.set(2, 'rini');
  // h.remove(2);
  h.get(2);
}