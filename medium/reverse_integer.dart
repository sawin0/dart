// Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

// Assume the environment does not allow you to store 64-bit integers (signed or unsigned).



// Example 1:

// Input: x = 123
// Output: 321

// Example 2:

// Input: x = -123
// Output: -321

// Example 3:

// Input: x = 120
// Output: 21

// source: https://leetcode.com/problems/reverse-integer/


void main() {
  Solution solution = Solution();
  print(solution.reverse(123)); // 321
  print(solution.reverse(-123)); // -321
  print(solution.reverse(120)); // 21
}

class Solution {
  int reverse(int x) {
    // Variable to track if the number is negative
    bool isNegative = false;

    // Copy the input number to a new variable
    int nums = x;

    // Variables to store the remainder of each division and the reversed number
    double remainder = 0;
    double reverse = 0;

    // If the number is negative, set the flag and work with its absolute value
    if (x < 0) {
      isNegative = true; // Mark that the number is negative
      nums *= -1; // Convert the number to positive for reversal
    }

    // Loop until all digits are processed
    while (nums != 0) {
      // Get the last digit of the number
      remainder = nums % 10;

      // Build the reversed number by shifting the current digits left
      reverse = reverse * 10 + remainder;

      // Remove the last digit from the number
      nums = (nums / 10).toInt(); // Use integer division to truncate the number
    }

    // If the original number was negative, make the reversed number negative
    // Otherwise, return the reversed number as it is
    return isNegative ? (reverse *= -1).toInt() : reverse.toInt();
  }
}
