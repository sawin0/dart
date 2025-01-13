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
    if (-2147483648 >= x || x >= 2147483647) {
      return 0;
    }
    bool isNegative = false;
    int nums = x;
    double remainder = 0;
    double reverse = 0;

    if (x < 0) {
      isNegative = true;
      nums *= -1;
    }

    while (nums != 0) {
      remainder = nums % 10;
      reverse = reverse * 10 + remainder;
      nums = (nums / 10).toInt();
    }
    if (-2147483648 >= reverse || reverse >= 2147483647) {
      return 0;
    }
    return isNegative ? (reverse *= -1).toInt() : reverse.toInt();
  }
}
