// Given an integer array nums of length n and an integer target, find three integers in nums such that the sum is closest to target.

// Return the sum of the three integers.

// You may assume that each input would have exactly one solution.

// Example 1:

// Input: nums = [-1,2,1,-4], target = 1
// Output: 2
// Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).

// Example 2:

// Input: nums = [0,0,0], target = 1
// Output: 0
// Explanation: The sum that is closest to the target is 0. (0 + 0 + 0 = 0).

// source: https://leetcode.com/problems/3sum-closest/

void main() {
  Solution solution = Solution();
  print(solution.threeSumClosest([-1, 2, 1, -4], 1)); // 2
  print(solution.threeSumClosest([0, 0, 0], 1)); // 0
}

class Solution {
  int threeSumClosest(List<int> nums, int target) {
    // Sort the array to enable the two-pointer approach
    nums.sort();
    int result = nums[0] + nums[1] + nums[2]; // Initialize with the first triplet sum

    for (int i = 0; i < nums.length - 2; i++) {
      if (i > 0 && nums[i] == nums[i - 1]) continue; // Skip duplicates for the first number

      int l = i + 1;
      int r = nums.length - 1;

      while (l < r) {
        int currentSum = nums[i] + nums[l] + nums[r];

        // If the current sum is closer to the target, update the result
        if ((currentSum - target).abs() < (result - target).abs()) {
          result = currentSum;
        }

        // Adjust pointers based on the comparison with the target
        if (currentSum < target) {
          l++;
        } else if (currentSum > target) {
          r--;
        } else {
          // If the sum equals the target, return it immediately
          return currentSum;
        }
      }
    }

    return result; // Return the closest sum
  }
}
