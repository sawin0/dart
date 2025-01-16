// Write an algorithm to determine if a number n is happy.

// A happy number is a number defined by the following process:

//     Starting with any positive integer, replace the number by the sum of the squares of its digits.
//     Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
//     Those numbers for which this process ends in 1 are happy.

// Return true if n is a happy number, and false if not.

// Example 1:

// Input: n = 19
// Output: true
// Explanation:
// 12 + 92 = 82
// 82 + 22 = 68
// 62 + 82 = 100
// 12 + 02 + 02 = 1

// Example 2:

// Input: n = 2
// Output: false

// source: https://leetcode.com/problems/happy-number/

void main() {
  Solution solution = Solution();
  print(solution.isHappy(19)); // true
  print(solution.isHappy(2)); // false
}

class Solution {
  // Function to determine whether a given number 'n' is a happy number
  bool isHappy(int n) {
    // Base case 1: If the number is 1, it is a happy number
    if (n == 1) {
      return true;
    }
    // Base case 2: If the number is 4, it is part of an unhappy cycle
    // The cycle starting with 4 eventually loops endlessly and never reaches 1
    else if (n == 4) {
      return false;
    }

    // Initialize a variable to hold the sum of squares of digits
    int sum = 0;

    // Loop to calculate the sum of the squares of the digits of 'n'
    while (n > 0) {
      // Extract the last digit of 'n'
      int digit = n % 10;
      // Add the square of the digit to 'sum'
      sum += digit * digit;
      // Remove the last digit from 'n'
      n ~/= 10;
    }

    // Recursively call the function with the new sum to check if it's a happy number
    return isHappy(sum);
  }
}
