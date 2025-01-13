// The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

// P   A   H   N
// A P L S I I G
// Y   I   R

// And then read line by line: "PAHNAPLSIIGYIR"

// Write the code that will take a string and make this conversion given a number of rows:

// string convert(string s, int numRows);

// Example 1:

// Input: s = "PAYPALISHIRING", numRows = 3
// Output: "PAHNAPLSIIGYIR"

// Example 2:

// Input: s = "PAYPALISHIRING", numRows = 4
// Output: "PINALSIGYAHRPI"
// Explanation:
// P     I    N
// A   L S  I G
// Y A   H R
// P     I

// Example 3:

// Input: s = "A", numRows = 1
// Output: "A"

// source: https://leetcode.com/problems/zigzag-conversion/

void main() {
  Solution solution = Solution();
  print(solution.convert("PAYPALISHIRING", 3)); // PAHNAPLSIIGYIR
  print(solution.convert("PAYPALISHIRING", 4)); // PINALSIGYAHRPI
  print(solution.convert("PAYPALISHIRING", 5)); // PHASIYIRPLIGAN
}

class Solution {
  String convert(String s, int numRows) {
    // Edge case: If numRows is 1 or string length is less than numRows
    if (numRows == 1 || s.length <= numRows) {
      return s;
    }

    // Create a list to store rows
    List<StringBuffer> rows = List.generate(numRows, (_) => StringBuffer());

    int currentRow = 0;
    bool goingDown = false;

    // Traverse the string
    for (int i = 0; i < s.length; i++) {
      rows[currentRow].write(s[i]);

      // Change direction at the top or bottom row
      if (currentRow == 0 || currentRow == numRows - 1) {
        goingDown = !goingDown;
      }

      // Move up or down
      currentRow += goingDown ? 1 : -1;
      print(currentRow);
      print(goingDown);
      print(i);
    }

    // Combine all rows into one string
    return rows.map((row) => row.toString()).join();
  }
}
