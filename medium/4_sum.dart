// Given an array nums of n integers, return an array of all the unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:

//     0 <= a, b, c, d < n
//     a, b, c, and d are distinct.
//     nums[a] + nums[b] + nums[c] + nums[d] == target

// You may return the answer in any order.

// Example 1:

// Input: nums = [1,0,-1,0,-2,2], target = 0
// Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

// Example 2:

// Input: nums = [2,2,2,2,2], target = 8
// Output: [[2,2,2,2]]

// source: https://leetcode.com/problems/4sum/

void main() {
  Solution solution = Solution();
  print(solution.fourSum([1, 0, -1, 0, -2, 2], 0));
  print(solution.fourSum([2, 2, 2, 2, 2], 8));
}

class Solution {
  List<List<int>> fourSum(List<int> nums, int target) {
    List<List<int>> result = [];

    // Sort the input array
    nums.sort();

    // Iterate over the array, fixing the first element of the quadruplet
    for (int i = 0; i < nums.length - 3; i++) {
      // Skip duplicate values for the first element
      if (i > 0 && nums[i] == nums[i - 1]) continue;

      // Iterate for the second element of the quadruplet
      for (int j = i + 1; j < nums.length - 2; j++) {
        // Skip duplicate values for the second element
        if (j > i + 1 && nums[j] == nums[j - 1]) continue;

        // Set up two pointers to find the third and fourth elements
        int left = j + 1;
        int right = nums.length - 1;

        while (left < right) {
          int sum = nums[i] + nums[j] + nums[left] + nums[right];

          if (sum == target) {
            // Found a valid quadruplet, add it to the result
            result.add([nums[i], nums[j], nums[left], nums[right]]);

            // Skip duplicates for the third and fourth elements
            while (left < right && nums[left] == nums[left + 1]) left++;
            while (left < right && nums[right] == nums[right - 1]) right--;

            // Move the pointers after finding a valid quadruplet
            left++;
            right--;
          } else if (sum < target) {
            // If the sum is less than target, move the left pointer to the right
            left++;
          } else {
            // If the sum is greater than target, move the right pointer to the left
            right--;
          }
        }
      }
    }

    return result;
  }

}
