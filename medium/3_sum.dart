// Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

// Notice that the solution set must not contain duplicate triplets.



// Example 1:

// Input: nums = [-1,0,1,2,-1,-4]
// Output: [[-1,-1,2],[-1,0,1]]
// Explanation:
// nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
// nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
// nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
// The distinct triplets are [-1,0,1] and [-1,-1,2].
// Notice that the order of the output and the order of the triplets does not matter.

// Example 2:

// Input: nums = [0,1,1]
// Output: []
// Explanation: The only possible triplet does not sum up to 0.

// Example 3:

// Input: nums = [0,0,0]
// Output: [[0,0,0]]
// Explanation: The only possible triplet sums up to 0.

// source: https://leetcode.com/problems/3sum/

void main() {
  Solution solution = Solution();
  print(solution.threeSum([-1, 0, 1, 2, -1, -4])); // [[-1, -1, 2], [-1, 0, 1]]
  print(solution.threeSum([0, 1, 1])); // []
  print(solution.threeSum([0, 0, 0])); // [[0, 0, 0]]
}

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> result = [];
    nums.sort(); // Sort the array to simplify the two-pointer approach

    for (int i = 0; i < nums.length - 2; i++) {
      // Ensure at least 3 elements for a triplet
      // Skip duplicates for the first number
      if (i > 0 && nums[i] == nums[i - 1]) continue;

      int l = i + 1, r = nums.length - 1;

      while (l < r) {
        int sum = nums[i] + nums[l] + nums[r];

        if (sum < 0) {
          l++; // Increase the left pointer to increase the sum
        } else if (sum > 0) {
          r--; // Decrease the right pointer to decrease the sum
        } else {
          // Add the valid triplet
          result.add([nums[i], nums[l], nums[r]]);
          l++;
          r--;

          // Skip duplicates for the second number
          while (l < r && nums[l] == nums[l - 1]) l++;

          // Skip duplicates for the third number
          while (l < r && nums[r] == nums[r + 1]) r--;
        }
      }
    }

    return result; // Return the list of unique triplets
  }
}
