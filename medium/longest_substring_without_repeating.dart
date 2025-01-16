// Given a string s, find the length of the longest
// substring
// without repeating characters.

// Example 1:

// Input: s = "abcabcbb"
// Output: 3
// Explanation: The answer is "abc", with the length of 3.

// Example 2:

// Input: s = "bbbbb"
// Output: 1
// Explanation: The answer is "b", with the length of 1.

// Example 3:

// Input: s = "pwwkew"
// Output: 3
// Explanation: The answer is "wke", with the length of 3.
// Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
//
// source: https://leetcode.com/problems/longest-substring-without-repeating-characters/


void main() {
  Solution solution = Solution();
  print(solution.lengthOfLongestSubstring('abcabcbb'));
  print(solution.lengthOfLongestSubstring('pwwkew'));
}

class Solution {
  int lengthOfLongestSubstring(String s) {
    // Variable to store the length of the longest substring without duplicates
    int ans = 0;

    // List of size 128 to represent ASCII characters, initialized to 0.
    // Each index corresponds to a character, and the value represents the count of that character in the current window.
    List<int> count = List.filled(128, 0);

    // Two pointers (l for the left boundary, r for the right boundary) of the sliding window
    for (int l = 0, r = 0; r < s.length; r++) {
      // Increment the count for the character at index r
      count[s.codeUnitAt(r)]++;

      // If the count of the current character is greater than 1, it means there's a duplicate.
      // Adjust the window by moving the left pointer (l) to the right until the duplicate is removed.
      while (count[s.codeUnitAt(r)] > 1) {
        // Decrement the count of the character at index l
        count[s.codeUnitAt(l)]--;
        // Move the left pointer to the right
        l++;
      }

      // Update the maximum length of the substring without duplicates
      // Current substring length is (r - l + 1)
      ans = ans > (r - l + 1) ? ans : (r - l + 1);
    }

    // Return the maximum length found
    return ans;
  }
}

