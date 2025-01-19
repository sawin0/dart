// Given two integer arrays nums1 and nums2, return an array of their
// intersection
// . Each element in the result must be unique and you may return the result in any order.



// Example 1:

// Input: nums1 = [1,2,2,1], nums2 = [2,2]
// Output: [2]

// Example 2:

// Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
// Output: [9,4]
// Explanation: [4,9] is also accepted.

// source: https://leetcode.com/problems/intersection-of-two-arrays/



void main() {
  Solution solution = Solution();
  print(solution.intersection([1, 2, 2, 1], [2, 2]));
  print(solution.intersection([4, 9, 5], [9, 4, 9, 8, 4]));
}

class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    // Initialize a list to store the intersection of nums1 and nums2
    List<int> result = [];

    // Iterate through each number in nums1
    for (int num in nums1) {
      // Check if nums2 contains the current number
      // and if the number is not already in the result list
      if (nums2.contains(num) && !result.contains(num)) {
        // Add the current number to the result list
        result.add(num);
      }
    }

    // Return the list of intersecting numbers
    return result;
  }
}
