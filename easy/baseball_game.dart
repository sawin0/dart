// You are keeping the scores for a baseball game with strange rules. At the beginning of the game, you start with an empty record.

// You are given a list of strings operations, where operations[i] is the ith operation you must apply to the record and is one of the following:

//     An integer x.
//         Record a new score of x.
//     '+'.
//         Record a new score that is the sum of the previous two scores.
//     'D'.
//         Record a new score that is the double of the previous score.
//     'C'.
//         Invalidate the previous score, removing it from the record.

// Return the sum of all the scores on the record after applying all the operations.

// The test cases are generated such that the answer and all intermediate calculations fit in a 32-bit integer and that all operations are valid.



// Example 1:

// Input: ops = ["5","2","C","D","+"]
// Output: 30
// Explanation:
// "5" - Add 5 to the record, record is now [5].
// "2" - Add 2 to the record, record is now [5, 2].
// "C" - Invalidate and remove the previous score, record is now [5].
// "D" - Add 2 * 5 = 10 to the record, record is now [5, 10].
// "+" - Add 5 + 10 = 15 to the record, record is now [5, 10, 15].
// The total sum is 5 + 10 + 15 = 30.

// Example 2:

// Input: ops = ["5","-2","4","C","D","9","+","+"]
// Output: 27
// Explanation:
// "5" - Add 5 to the record, record is now [5].
// "-2" - Add -2 to the record, record is now [5, -2].
// "4" - Add 4 to the record, record is now [5, -2, 4].
// "C" - Invalidate and remove the previous score, record is now [5, -2].
// "D" - Add 2 * -2 = -4 to the record, record is now [5, -2, -4].
// "9" - Add 9 to the record, record is now [5, -2, -4, 9].
// "+" - Add -4 + 9 = 5 to the record, record is now [5, -2, -4, 9, 5].
// "+" - Add 9 + 5 = 14 to the record, record is now [5, -2, -4, 9, 5, 14].
// The total sum is 5 + -2 + -4 + 9 + 5 + 14 = 27.

// Example 3:

// Input: ops = ["1","C"]
// Output: 0
// Explanation:
// "1" - Add 1 to the record, record is now [1].
// "C" - Invalidate and remove the previous score, record is now [].
// Since the record is empty, the total sum is 0.

// source: https://leetcode.com/problems/baseball-game/



void main() {
  Solution solution = Solution();
  print(solution.calPoints(["5", "2", "C", "D", "+"]));
  print(solution.calPoints(["5", "-2", "4", "C", "D", "9", "+", "+"]));
  print(solution.calPoints(["1", "C"]));
}

class Solution {
  int calPoints(List<String> operations) {
    // A list to keep track of valid scores.
    List<int> record = [];

    // Variable to store the running total of scores.
    int sum = 0;

    // Iterate over each operation in the input list.
    for (int i = 0; i < operations.length; i++) {
      // Handle the "C" operation (cancel the last score).
      if (operations[i] == 'C') {
        // Subtract the last score from the total sum.
        sum -= record.last;
        // Remove the last score from the record.
        record.remove(record.last);
      }
      // Handle the "D" operation (double the last score).
      else if (operations[i] == 'D') {
        // Double the last score in the record.
        int res = record.last * 2;
        // Add the doubled score to the record.
        record.add(res);
        // Add the doubled score to the total sum.
        sum += res;
      }
      // Handle the "+" operation (sum of the last two scores).
      else if (operations[i] == '+') {
        // Calculate the sum of the last two scores in the record.
        int res = record.last + record[record.length - 2];
        // Add the result to the record.
        record.add(res);
        // Add the result to the total sum.
        sum += res;
      }
      // Handle numeric operations (add a new score).
      else {
        // Parse the string as an integer; default to 0 if parsing fails.
        int num = int.tryParse(operations[i]) ?? 0;
        // Add the score to the record.
        record.add(num);
        // Add the score to the total sum.
        sum += num;
      }
    }
    // Return the final total score.
    return sum;
  }
}
