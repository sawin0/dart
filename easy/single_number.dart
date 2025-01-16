// Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

// You must implement a solution with a linear runtime complexity and use only constant extra space.



// Example 1:

// Input: nums = [2,2,1]

// Output: 1

// Example 2:

// Input: nums = [4,1,2,1,2]

// Output: 4

// Example 3:

// Input: nums = [1]

// Output: 1

// source: https://leetcode.com/problems/single-number/

void main(){
  Solution solution =  Solution();
  print(solution.singleNumber([2,2,1]));
  print(solution.singleNumber([4,1,2,1,2]));
  print(solution.singleNumber([1]));
}

class Solution {
  int singleNumber(List<int> nums) {
    // Initialize result to 0. This will hold the unique number after applying XOR operations.
    int result = 0;

    // Iterate through each number in the list
    for (int num in nums) {
      // Apply the XOR operation between the current result and the current number.
      // XOR has the property:
      // - x ^ x = 0 (a number XORed with itself is 0)
      // - x ^ 0 = x (a number XORed with 0 remains the same)
      // This effectively cancels out all duplicate numbers in the list, leaving only the single number.
      result ^= num;
    }

    // Return the unique number that appears only once in the list.
    return result;
  }
}
