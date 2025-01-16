// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

// Example 1:

// Input: nums = [1,2,3,1]

// Output: true

// Explanation:

// The element 1 occurs at the indices 0 and 3.

// Example 2:

// Input: nums = [1,2,3,4]

// Output: false

// Explanation:

// All elements are distinct.

// Example 3:

// Input: nums = [1,1,1,3,3,4,3,2,4,2]

// Output: true

// source: https://leetcode.com/problems/contains-duplicate/

void main() {
  Solution solution = Solution();
  print(solution.containsDuplicate([1,2,3,1])); // true
  print(solution.containsDuplicate([1,2,3,4])); // false
}

class Solution {
  bool containsDuplicate(List<int> nums) {
    // Use a Set to keep track of unique numbers encountered so far
    final Set<int> seen = {};

    // Iterate through the list of numbers
    for (int num in nums) {
      // If the current number is already in the set, a duplicate is found
      if (!seen.add(num)) {
        return true;
      }
    }

    // If no duplicates are found, return false
    return false;
  }
}
