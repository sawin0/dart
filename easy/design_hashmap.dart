// Design a HashMap without using any built-in hash table libraries.

// Implement the MyHashMap class:

//     MyHashMap() initializes the object with an empty map.
//     void put(int key, int value) inserts a (key, value) pair into the HashMap. If the key already exists in the map, update the corresponding value.
//     int get(int key) returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key.
//     void remove(key) removes the key and its corresponding value if the map contains the mapping for the key.



// Example 1:

// Input
// ["MyHashMap", "put", "put", "get", "get", "put", "get", "remove", "get"]
// [[], [1, 1], [2, 2], [1], [3], [2, 1], [2], [2], [2]]
// Output
// [null, null, null, 1, -1, null, 1, null, -1]

// Explanation
// MyHashMap myHashMap = new MyHashMap();
// myHashMap.put(1, 1); // The map is now [[1,1]]
// myHashMap.put(2, 2); // The map is now [[1,1], [2,2]]
// myHashMap.get(1);    // return 1, The map is now [[1,1], [2,2]]
// myHashMap.get(3);    // return -1 (i.e., not found), The map is now [[1,1], [2,2]]
// myHashMap.put(2, 1); // The map is now [[1,1], [2,1]] (i.e., update the existing value)
// myHashMap.get(2);    // return 1, The map is now [[1,1], [2,1]]
// myHashMap.remove(2); // remove the mapping for 2, The map is now [[1,1]]
// myHashMap.get(2);    // return -1 (i.e., not found), The map is now [[1,1]]

// source: https://leetcode.com/problems/design-hashmap/

void main(){
  MyHashMap myHashMap = MyHashMap();
  myHashMap.put(1, 1); // The map is now [[1,1]]
  myHashMap.put(2, 2); // The map is now [[1,1], [2,2]]
  print(myHashMap.get(1));    // return 1, The map is now [[1,1], [2,2]]
  print(myHashMap.get(3));    // return -1 (i.e., not found), The map is now [[1,1], [2,2]]
  myHashMap.put(2, 1); // The map is now [[1,1], [2,1]] (i.e., update the existing value)
  print(myHashMap.get(2));    // return 1, The map is now [[1,1], [2,1]]
  myHashMap.remove(2); // remove the mapping for 2, The map is now [[1,1]]
  print(myHashMap.get(2));    // return -1 (i.e., not found), The map is now [[1,1]]
}


/**
 * Your MyHashMap object will be instantiated and called as such:
 * MyHashMap obj = MyHashMap();
 * obj.put(key,value);
 * int param2 = obj.get(key);
 * obj.remove(key);
 */

class MyHashMap {
  // A private map to store key-value pairs
  final Map<int, int> _map = {};

  // Default constructor for MyHashMap
  MyHashMap() {}

  // Inserts a key-value pair into the map.
  // If the key already exists, its value is updated to the new value.
  void put(int key, int value) {
    _map[key] = value;
  }

  // Retrieves the value associated with the given key.
  // If the key does not exist in the map, returns -1.
  int get(int key) {
    return _map[key] ?? -1;
  }

  // Removes the key-value pair associated with the given key.
  // If the key does not exist, this operation does nothing.
  void remove(int key) {
    _map.remove(key);
  }
}
