class HashTable<K, V> {
  final int size;
  List<List<MapEntry<K, V>>> _buckets;
 
  HashTable({required this.size}) :  _buckets = List.generate(size, (_) => []);

  // Hash function
  int _hash(K key) {
    return key.hashCode % size;
  }
 
  // Insert a key-value pair
  void insert(K key, V value) {
    int bucketIndex = _hash(key);
    for (var entry in _buckets[bucketIndex]) {
      if (entry.key == key) {
        // Key already exists, update value

        // entry.value = value;
        return;
      }
    }
    _buckets[bucketIndex].add(MapEntry(key, value));
  }
 
  // Get the value associated with a given key
  V? get(K key) {
    int bucketIndex = _hash(key);
    for (var entry in _buckets[bucketIndex]) {
      if (entry.key == key) {
        // Key found, return value
        return entry.value;
      }
    }
    // Key not found
    return null;
  }
 
  // Remove a key-value pair
  void remove(K key) {
    int bucketIndex = _hash(key);
    _buckets[bucketIndex].removeWhere((entry) => entry.key == key);
  }
 
  // Check if a key exists in the hash table
  bool containsKey(K key) {
    int bucketIndex = _hash(key);
    return _buckets[bucketIndex].any((entry) => entry.key == key);
  }
 
  // Clear all entries in the hash table
  void clear() {
    for (var bucket in _buckets) {
      bucket.clear();
    }
  }
 
  // Get the number of entries in the hash table
  int get length {
    int count = 0;
    for (var bucket in _buckets) {
      count += bucket.length;
    }
    return count;
  }
}