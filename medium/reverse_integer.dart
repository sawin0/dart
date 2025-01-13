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
  print(solution.reverse(1534236469)); // 0
}

class Solution {
  int reverse(int x) {
    // Use a single integer for the result instead of a double
    int reverse = 0;

    while (x != 0) {
      // Extract the last digit
      int remainder = x % 10;

      // Check for overflow before updating reverse
      if (reverse > (2147483647 ~/ 10) ||
          (reverse == (2147483647 ~/ 10) && remainder > 7)) {
        return 0;
      }
      if (reverse < (-2147483648 ~/ 10) ||
          (reverse == (-2147483648 ~/ 10) && remainder < -8)) {
        return 0;
      }

      // Append the remainder to reverse
      reverse = reverse * 10 + remainder;

      // Remove the last digit from x
      x ~/= 10;
    }

    return reverse;
  }
}
