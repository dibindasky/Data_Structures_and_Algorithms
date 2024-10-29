// class HashMap<K, V> {
//   List<List<MapEntry<K, V>>> _buckets;
//   int _size;

//   HashMap({int capacity = 16}) {
//     _buckets = List<List<MapEntry<K, V>>>.filled(capacity, null, growable: true);
//     _size = 0;
//   }

//   int _hash(K key) {
//     return key.hashCode % _buckets.length;
//   }

//   void put(K key, V value) {
//     final hash = _hash(key);
//     if (_buckets[hash] == null) {
//       _buckets[hash] = [];
//     }

//     final bucket = _buckets[hash];
//     for (var entry in bucket) {
//       if (entry.key == key) {
//         entry.value = value;
//         return;
//       }
//     }

//     bucket.add(MapEntry(key, value));
//     _size++;

//     // Resize the HashMap if the load factor exceeds 0.75
//     if (_size / _buckets.length > 0.75) {
//       _resize(_buckets.length * 2);
//     }
//   }

//   V get(K key) {
//     final hash = _hash(key);
//     final bucket = _buckets[hash];
//     if (bucket == null) {
//       return null;
//     }

//     for (var entry in bucket) {
//       if (entry.key == key) {
//         return entry.value;
//       }
//     }

//     return null;
//   }

//   void remove(K key) {
//     final hash = _hash(key);
//     final bucket = _buckets[hash];
//     if (bucket == null) {
//       return;
//     }

//     for (var entry in bucket) {
//       if (entry.key == key) {
//         bucket.remove(entry);
//         _size--;

//         // Resize the HashMap if the load factor is less than 0.25
//         if (_size > 0 && _size / _buckets.length < 0.25) {
//           _resize(_buckets.length ~/ 2);
//         }

//         return;
//       }
//     }
//   }

//   void _resize(int newCapacity) {
//     final oldBuckets = _buckets;
//     _buckets = List<List<MapEntry<K, V>>>.filled(newCapacity, null, growable: true);
//     _size = 0;

//     for (var bucket in oldBuckets) {
//       if (bucket != null) {
//         for (var entry in bucket) {
//           put(entry.key, entry.value);
//         }
//       }
//     }
//   }

//   bool containsKey(K key) {
//     return get(key) != null;
//   }

//   int get size => _size;

//   bool get isEmpty => _size == 0;
// }
