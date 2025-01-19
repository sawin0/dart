// Given an integer array nums, move all the even integers at the beginning of the array followed by all the odd integers.

// Return any array that satisfies this condition.

// Example 1:

// Input: nums = [3,1,2,4]
// Output: [2,4,3,1]
// Explanation: The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.

// Example 2:

// Input: nums = [0]
// Output: [0]

// source: https://leetcode.com/problems/sort-array-by-parity/

void main() {
  Solution solution = Solution();
  print(solution.sortArrayByParity([3, 1, 2, 4]));
  print(solution.sortArrayByParity([0]));
}

class Solution {
  // This function sorts the input list such that all even numbers appear before odd numbers.
  // Parameters:
  // - `nums`: A list of integers.
  // Returns:
  // - A list where all even integers come before all odd integers.
  List<int> sortArrayByParity(List<int> nums) {
    int i = 0; // Pointer to track the position for the next even number.

    // Iterate through the array using the `j` pointer.
    for (int j = 0; j < nums.length; j++) {
      // Check if the current number is even.
      if (nums[j] % 2 == 0) {
        // Swap the even number at index `j` with the number at index `i`.
        int temp = nums[i]; // Temporarily store the value at index `i`.
        nums[i] = nums[j]; // Move the even number to the front.
        nums[j] = temp; // Place the previously stored value at index `j`.

        i++; // Increment the `i` pointer to the next position for even numbers.
      }
    }

    // Return the modified list with even numbers first.
    return nums;
  }
}
