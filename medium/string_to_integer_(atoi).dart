// Implement the myAtoi(string s) function, which converts a string to a 32-bit signed integer.

// The algorithm for myAtoi(string s) is as follows:

//     Whitespace: Ignore any leading whitespace (" ").
//     Signedness: Determine the sign by checking if the next character is '-' or '+', assuming positivity if neither present.
//     Conversion: Read the integer by skipping leading zeros until a non-digit character is encountered or the end of the string is reached. If no digits were read, then the result is 0.
//     Rounding: If the integer is out of the 32-bit signed integer range [-231, 231 - 1], then round the integer to remain in the range. Specifically, integers less than -231 should be rounded to -231, and integers greater than 231 - 1 should be rounded to 231 - 1.

// Return the integer as the final result.

// Example 1:

// Input: s = "42"

// Output: 42

// Explanation:

// The underlined characters are what is read in and the caret is the current reader position.
// Step 1: "42" (no characters read because there is no leading whitespace)
//          ^
// Step 2: "42" (no characters read because there is neither a '-' nor '+')
//          ^
// Step 3: "42" ("42" is read in)
//            ^

// Example 2:

// Input: s = " -042"

// Output: -42

// Explanation:

// Step 1: "   -042" (leading whitespace is read and ignored)
//             ^
// Step 2: "   -042" ('-' is read, so the result should be negative)
//              ^
// Step 3: "   -042" ("042" is read in, leading zeros ignored in the result)
//                ^

// Example 3:

// Input: s = "1337c0d3"

// Output: 1337

// Explanation:

// Step 1: "1337c0d3" (no characters read because there is no leading whitespace)
//          ^
// Step 2: "1337c0d3" (no characters read because there is neither a '-' nor '+')
//          ^
// Step 3: "1337c0d3" ("1337" is read in; reading stops because the next character is a non-digit)
//              ^

// Example 4:

// Input: s = "0-1"

// Output: 0

// Explanation:

// Step 1: "0-1" (no characters read because there is no leading whitespace)
//          ^
// Step 2: "0-1" (no characters read because there is neither a '-' nor '+')
//          ^
// Step 3: "0-1" ("0" is read in; reading stops because the next character is a non-digit)
//           ^

// Example 5:

// Input: s = "words and 987"

// Output: 0

// Explanation:

// Reading stops at the first non-digit character 'w'.

// source: https://leetcode.com/problems/string-to-integer-atoi/

void main() {
  Solution solution = Solution();
  // print(solution.myAtoi('42')); // 42
  // print(solution.myAtoi(' -042')); // -42
  // print(solution.myAtoi('1337c0d3')); // 1337
  // print(solution.myAtoi('0-1')); // 0
  // print(solution.myAtoi('words and 987')); // 0
  print(solution.myAtoi('-91283472332'));
  print(solution.myAtoi('-'));
}

class Solution {
  int myAtoi(String s) {
    // Step 1: Remove leading and trailing whitespaces from the input string
    s = s.trim();
    if (s.isEmpty) return 0; // If the string is empty after trimming, return 0

    int sign =
        1; // Variable to store the sign of the number (1 for positive, -1 for negative)
    int index = 0; // Pointer to track the current character in the string

    // Step 2: Check if the first character indicates a sign ('+' or '-')
    if (s[index] == '+' || s[index] == '-') {
      sign = s[index] == '-' ? -1 : 1; // Set the sign based on the character
      index++; // Move to the next character after the sign
    }

    int result = 0; // Variable to store the converted integer value

    // Step 3: Loop through the string and process numeric characters
    while (index < s.length &&
        s[index].codeUnitAt(0) >= '0'.codeUnitAt(0) &&
        s[index].codeUnitAt(0) <= '9'.codeUnitAt(0)) {
      // Convert the current character to its numeric value
      int digit = s[index].codeUnitAt(0) - '0'.codeUnitAt(0);

      // Step 4: Check for overflow or underflow before adding the digit to the result
      if (result > (2147483647 - digit) ~/ 10) {
        // If the result will exceed the 32-bit signed integer range:
        // Return the maximum or minimum value based on the sign
        return sign == 1 ? 2147483647 : -2147483648;
      }

      // Step 5: Update the result by appending the current digit
      result = result * 10 + digit;

      // Move to the next character in the string
      index++;
    }

    // Step 6: Return the final result with the correct sign
    return result * sign;
  }
}
