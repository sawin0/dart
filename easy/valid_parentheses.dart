// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// An input string is valid if:

//     Open brackets must be closed by the same type of brackets.
//     Open brackets must be closed in the correct order.
//     Every close bracket has a corresponding open bracket of the same type.

// Example 1:

// Input: s = "()"

// Output: true

// Example 2:

// Input: s = "()[]{}"

// Output: true

// Example 3:

// Input: s = "(]"

// Output: false

// Example 4:

// Input: s = "([])"

// Output: true

// source: https://leetcode.com/problems/valid-parentheses/

void main() {
  Solution solution = Solution();
  print(solution.isValid("()"));
  print(solution.isValid("()[]{}"));
  print(solution.isValid("(]"));
  print(solution.isValid("([])"));
}

class Solution {
  bool isValid(String s) {
    const Map<String, String> brackets = {')': '(', '}': '{', ']': '['};

    List<String> stack = [];

    for (String ch in s.split('')) {
      if (brackets.containsKey(ch)) {
        if (stack.isNotEmpty && stack.last == brackets[ch]) {
          stack.removeLast();
        } else {
          return false;
        }
      } else {
        stack.add(ch);
      }
    }

    return stack.isEmpty;
  }
}
