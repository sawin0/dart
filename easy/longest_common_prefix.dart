// Write a function to find the longest common prefix string amongst an array of strings.

// If there is no common prefix, return an empty string "".



// Example 1:

// Input: strs = ["flower","flow","flight"]
// Output: "fl"

// Example 2:

// Input: strs = ["dog","racecar","car"]
// Output: ""
// Explanation: There is no common prefix among the input strings.



// Constraints:

//     1 <= strs.length <= 200
//     0 <= strs[i].length <= 200
//     strs[i] consists of only lowercase English letters if it is non-empty.

// source: https://leetcode.com/problems/longest-common-prefix/


void main() {
  Solution solution = Solution();
  print(solution.longestCommonPrefix(['flower', 'flow', 'flight'])); // 'fl'
  print(solution.longestCommonPrefix(['dog', 'racecar', 'car'])); // ''
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
    // Check if the input list is empty. If it is, return an empty string as there's no prefix.
    if (strs.isEmpty) return '';

    // Initialize the prefix with the first string in the list.
    // This assumes the first string is the longest possible prefix initially.
    String prefix = strs.first;

    // Iterate over the rest of the strings in the list.
    for (int i = 1; i < strs.length; i++) {
      // While the current string doesn't start with the prefix,
      // progressively shorten the prefix by removing the last character.
      while (!strs[i].startsWith(prefix)) {
        prefix = prefix.substring(0, prefix.length - 1);

        // If the prefix becomes empty, return an empty string as there's no common prefix.
        if (prefix.isEmpty) return '';
      }
    }

    // Return the longest common prefix found.
    return prefix;
  }
}
