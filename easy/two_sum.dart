// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

// Example 1:

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

// Example 2:

// Input: nums = [3,2,4], target = 6
// Output: [1,2]

// Example 3:

// Input: nums = [3,3], target = 6
// Output: [0,1]
//
// source: https://leetcode.com/problems/two-sum/

void main() {
  Solution solution = Solution();
  print(solution.twoSum([2, 7, 11, 15], 9));
  print(solution.twoSum([3, 2, 4], 6));
  print(solution.twoSum([3, 3], 6));
  print(solution.twoSum([3, 2, 3], 6));
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // Map to store array values as keys and their indices as values
    Map<int, int> sumHash = {};

    // Iterate over the array
    for (int i = 0; i < nums.length; i++) {
      // Calculate the complement needed to reach the target
      int diff = target - nums[i];

      // Check if the complement already exists in the map
      if (sumHash.containsKey(diff)) {
        // If found, return the indices of the complement and the current value
        return [sumHash[diff] ?? 0, i];
      }

      // Otherwise, add the current value and its index to the map
      sumHash[nums[i]] = i;
    }

    // If no solution is found, throw an exception (adjust as needed)
    throw Exception("No solution found");
  }
}
