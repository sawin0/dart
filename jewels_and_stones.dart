// You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.

// Letters are case sensitive, so "a" is considered a different type of stone from "A".

// Example 1:

// Input: jewels = "aA", stones = "aAAbbbb"
// Output: 3

// Example 2:

// Input: jewels = "z", stones = "ZZ"
// Output: 0
//
//source: https://leetcode.com/problems/jewels-and-stones/description/

void main() {
  Solution solution = Solution();
  print('Using loop:');
  print(solution.numJewelsInStones('aA', 'aAAbbbb'));
  print(solution.numJewelsInStones('z', 'ZZ'));

  print('Using Regex:');

  print(solution.numJewelsInStonesRegex('aA', 'aAAbbbb'));
  print(solution.numJewelsInStonesRegex('z', 'ZZ'));

  print('Using fold:');
  print(solution.numJewelsInStonesFold('aA', 'aAAbbbb'));
  print(solution.numJewelsInStonesFold('z', 'ZZ'));
}

class Solution {
  ///
  ///Using loop and map
  ///
  int numJewelsInStones(String jewels, String stones) {
    final count = occurrence(stones);
    final jewelList = jewels.split('');
    var output = 0;
    for (var jewel in jewelList) {
      output += count[jewel] ?? 0;
    }
    return output;
  }

  Map<String, int> occurrence(String text) {
    final words = text.split('');
    final count = <String, int>{};
    for (var word in words) {
      count.update(word, (value) => value + 1, ifAbsent: () => 1);
    }
    return count;
  }

  ///
  ///Using Regex only
  ///
  int numJewelsInStonesRegex(String jewels, String stones) {
    return RegExp('[$jewels]').allMatches(stones).length;
  }

  ///
  ///Using fold and map
  ///
  int numJewelsInStonesFold(String jewels, String stones) {
    final count = occurrenceFold(stones);
    final output = jewels
        .split('')
        .fold<int>(0, (acc, jewel) => acc + (count[jewel] ?? 0));
    return output;
  }

  Map<String, int> occurrenceFold(String text) {
    return text.split('').fold<Map<String, int>>(
        {},
        (count, word) =>
            count..update(word, (value) => value + 1, ifAbsent: () => 1));
  }
}
