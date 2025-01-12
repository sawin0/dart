// Given a string s, return the longest
// palindromic
// substring
// in s.

// Example 1:

// Input: s = "babad"
// Output: "bab"
// Explanation: "aba" is also a valid answer.

// Example 2:

// Input: s = "cbbd"
// Output: "bb"

// Constraints:

//     1 <= s.length <= 1000
//     s consist of only digits and English letters.

// source: https://leetcode.com/problems/longest-palindromic-substring/

void main() {
  Solution solution = Solution();
  print(solution.longestPalindrome('babad')); // Output: "bab" or "aba"
  print(solution.longestPalindrome('cbbd')); // Output: "bb"
}

class Solution {
  String longestPalindrome(String s) {
    String longest = '';
    for (int i = 0; i < s.length; i++) {
      // Expand around the center for odd-length and even-length palindromes
      final String longest1 =
          _expandFromCenter(s, i, i); // Odd-length palindrome
      final String longest2 =
          _expandFromCenter(s, i, i + 1); // Even-length palindrome

      // Update the longest palindrome found so far
      if (longest1.length > longest.length) {
        longest = longest1;
      }
      if (longest2.length > longest.length) {
        longest = longest2;
      }
    }
    return longest;
  }

  String _expandFromCenter(String s, int left, int right) {
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      left--;
      right++;
    }
    return s.substring(left + 1, right); // Return the palindrome substring
  }

}
