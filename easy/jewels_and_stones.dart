// You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.

// Letters are case sensitive, so "a" is considered a different type of stone from "A".

// Example 1:

// Input: jewels = "aA", stones = "aAAbbbb"
// Output: 3

// Example 2:

// Input: jewels = "z", stones = "ZZ"
// Output: 0
//
//source: https://leetcode.com/problems/jewels-and-stones/

void main() {
  Solution solution = Solution();
  print(solution.numJewelsInStones('aA', 'aAAbbbb'));
  print(solution.numJewelsInStones('z', 'ZZ'));
}

class Solution {
  // This function calculates the number of stones that are jewels.
  // Parameters:
  // - `jewels`: A string where each character represents a type of jewel.
  // - `stones`: A string where each character represents a stone you have.
  // Returns:
  // - The count of stones that are also jewels.
  int numJewelsInStones(String jewels, String stones) {
    int count = 0; // Counter to track the number of stones that are jewels.

    // Iterate over each stone in the `stones` string.
    for (var stone in stones.split('')) {
      // Check if the current stone exists in the `jewels` string.
      if (jewels.contains(stone)) {
        count++; // Increment the count if the stone is a jewel.
      }
    }

    // Return the total count of stones that are jewels.
    return count;
  }
}
