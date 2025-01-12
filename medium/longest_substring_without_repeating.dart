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
    var input = s;
    Set<String> letters = {};
    int maxSubString = 0;
    for (var i = 0; i < input.length; i++) {

      while (letters.contains(input[i])) {
        letters.remove(letters.first);
      }
      letters.add(input[i]);
      if (letters.length > maxSubString) {
        maxSubString = letters.length;
      }
    }
    return maxSubString;
  
}}