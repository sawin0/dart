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
// source: https://leetcode.com/problems/two-sum/description/



void main() {
  Solution solution = Solution();

  print('Using loop and if condition');
  print('');

  print(solution.twoSum([2, 7, 11, 15], 9));
  print(solution.twoSum([3, 2, 4], 6));
  print(solution.twoSum([3, 3], 6));
  print(solution.twoSum([3, 2, 3], 6));

  print('');
  print('Using HashMap here...');
  print('');

  print(solution.twoSumH([2, 7, 11, 15], 9));
  print(solution.twoSumH([3, 2, 4], 6));
  print(solution.twoSumH([3, 3], 6));
  print(solution.twoSumH([3, 2, 3], 6));
}

class Solution {
  ///
  /// using only loops and if conditions
  ///
  List<int> twoSum(List<int> nums, int target) {
    if (nums.length == 2) {
      return target == nums[0] + nums[1] ? [0, 1] : [0, 0];
    }
    List<int> copyNums = nums.toList();
    int i = 0;
    while (copyNums.isNotEmpty) {
      int diff = target - nums[i];
      copyNums.remove(nums[i]);
      if (copyNums.contains(diff)) {
        return [i, copyNums.indexOf(diff) + i + 1];
      }
      i++;
    }
    return [0, 0];
  }

  ///
  /// using hashmap - more efficinet way to solve this
  ///
  List<int> twoSumH(List<int> nums, int target) {
    Map<int, int> sumHash = {};

    for (int i = 0; i < nums.length; i++) {
      int diff = target - nums[i];
      if (sumHash.containsKey(diff)) {
        return [sumHash[diff] ?? 0, i];
      }
      sumHash[nums[i]] = i;
    }
    return [0, 0];
  }
}
