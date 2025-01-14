// Given an input string s and a pattern p, implement regular expression matching with support for '.' and '*' where:

//     '.' Matches any single character.​​​​
//     '*' Matches zero or more of the preceding element.

// The matching should cover the entire input string (not partial).



// Example 1:

// Input: s = "aa", p = "a"
// Output: false
// Explanation: "a" does not match the entire string "aa".

// Example 2:

// Input: s = "aa", p = "a*"
// Output: true
// Explanation: '*' means zero or more of the preceding element, 'a'. Therefore, by repeating 'a' once, it becomes "aa".

// Example 3:

// Input: s = "ab", p = ".*"
// Output: true
// Explanation: ".*" means "zero or more (*) of any character (.)".

// source: https://leetcode.com/problems/regular-expression-matching/


void main(){
  Solution solution = Solution();
  print(solution.isMatch("aa", "a")); // false
  print(solution.isMatch("aa", "a*")); // true
  print(solution.isMatch("ab", ".*")); // true
  print(solution.isMatch("aab", "c*a*b")); // true
  print(solution.isMatch("mississippi", "mis*is*p*.")); // false
}

class Solution {
  bool isMatch(String s, String p) {
    int m = s.length;
    int n = p.length;

    // Create a DP table with (m+1) x (n+1) dimensions
    List<List<bool>> dp =
        List.generate(m + 1, (_) => List.filled(n + 1, false));

    // Base case: Empty string matches an empty pattern
    dp[0][0] = true;

    // Fill the DP table for patterns with '*'
    for (int j = 1; j <= n; j++) {
      if (p[j - 1] == '*') {
        dp[0][j] = dp[0]
            [j - 2]; // '*' acts as zero occurrences of the preceding character
      }
    }

    // Fill the DP table for the rest of the cases
    for (int i = 1; i <= m; i++) {
      for (int j = 1; j <= n; j++) {
        if (p[j - 1] == s[i - 1] || p[j - 1] == '.') {
          // Case 1: Characters match, or '.' matches any character
          dp[i][j] = dp[i - 1][j - 1];
        } else if (p[j - 1] == '*') {
          // Case 2: '*' matches zero or more of the preceding character
          dp[i][j] = dp[i][j - 2] || // '*' acts as zero occurrences
              (dp[i - 1][j] &&
                  (s[i - 1] == p[j - 2] ||
                      p[j - 2] == '.')); // One or more occurrences
        }
      }
    }

    // The result is stored in dp[m][n]
    return dp[m][n];
  }
}
