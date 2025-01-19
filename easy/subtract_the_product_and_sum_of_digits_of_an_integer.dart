// Given an integer number n, return the difference between the product of its digits and the sum of its digits.

// Example 1:

// Input: n = 234
// Output: 15
// Explanation:
// Product of digits = 2 * 3 * 4 = 24
// Sum of digits = 2 + 3 + 4 = 9
// Result = 24 - 9 = 15

// Example 2:

// Input: n = 4421
// Output: 21
// Explanation:
// Product of digits = 4 * 4 * 2 * 1 = 32
// Sum of digits = 4 + 4 + 2 + 1 = 11
// Result = 32 - 11 = 21

// source: https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/

void main() {
  Solution solution = Solution();
  print(solution.subtractProductAndSum(234));
  print(solution.subtractProductAndSum(4421));
}

class Solution {
  // This method calculates the difference between the product of the digits
  // and the sum of the digits of a given integer `n`.
  // Parameters:
  // - `n`: A positive integer.
  // Returns:
  // - An integer representing the result of (product of digits - sum of digits).
  int subtractProductAndSum(int n) {
    int product = 1; // Initialize the product of digits to 1.
    int sum = 0; // Initialize the sum of digits to 0.

    // Loop through each digit of the number `n`.
    while (n > 0) {
      int digit = n % 10; // Extract the last digit of `n`.
      product *= digit; // Multiply the digit to the product.
      sum += digit; // Add the digit to the sum.
      n ~/= 10; // Remove the last digit by integer division.
    }

    // Return the difference between the product and the sum of the digits.
    return product - sum;
  }
}
