// Design a HashSet without using any built-in hash table libraries.

// Implement MyHashSet class:

//     void add(key) Inserts the value key into the HashSet.
//     bool contains(key) Returns whether the value key exists in the HashSet or not.
//     void remove(key) Removes the value key in the HashSet. If key does not exist in the HashSet, do nothing.

// Example 1:

// Input
// ["MyHashSet", "add", "add", "contains", "contains", "add", "contains", "remove", "contains"]
// [[], [1], [2], [1], [3], [2], [2], [2], [2]]
// Output
// [null, null, null, true, false, null, true, null, false]

// Explanation
// MyHashSet myHashSet = new MyHashSet();
// myHashSet.add(1);      // set = [1]
// myHashSet.add(2);      // set = [1, 2]
// myHashSet.contains(1); // return True
// myHashSet.contains(3); // return False, (not found)
// myHashSet.add(2);      // set = [1, 2]
// myHashSet.contains(2); // return True
// myHashSet.remove(2);   // set = [1]
// myHashSet.contains(2); // return False, (already removed)

// source: https://leetcode.com/problems/design-hashset/

void main() {
  MyHashSet myHashSet = MyHashSet();
  myHashSet.add(1); // set = [1]
  myHashSet.add(2); // set = [1, 2]
  myHashSet.contains(1); // return True
  myHashSet.contains(3); // return False, (not found)
  myHashSet.add(2); // set = [1, 2]
  myHashSet.contains(2); // return True
  myHashSet.remove(2); // set = [1]
  myHashSet.contains(2); // return False, (already removed)
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * MyHashSet obj = MyHashSet();
 * obj.add(key);
 * obj.remove(key);
 * bool param3 = obj.contains(key);
 */

class MyHashSet {
  // Private Set to store unique integers
  final Set<int> _set = {};

  // Default constructor for MyHashSet
  MyHashSet() {}

  // Adds the specified key to the hash set
  // If the key is already present, it will not be added again
  void add(int key) {
    _set.add(key);
  }

  // Removes the specified key from the hash set
  // If the key is not present, this operation does nothing
  void remove(int key) {
    _set.remove(key);
  }

  // Checks if the specified key exists in the hash set
  // Returns true if the key is found, otherwise returns false
  bool contains(int key) {
    return _set.contains(key);
  }
}
