// There is a programming language with only four operations and one variable X:

//     ++X and X++ increments the value of the variable X by 1.
//     --X and X-- decrements the value of the variable X by 1.

// Initially, the value of X is 0.

// Given an array of strings operations containing a list of operations, return the final value of X after performing all the operations.



// Example 1:

// Input: operations = ["--X","X++","X++"]
// Output: 1
// Explanation: The operations are performed as follows:
// Initially, X = 0.
// --X: X is decremented by 1, X =  0 - 1 = -1.
// X++: X is incremented by 1, X = -1 + 1 =  0.
// X++: X is incremented by 1, X =  0 + 1 =  1.

// Example 2:

// Input: operations = ["++X","++X","X++"]
// Output: 3
// Explanation: The operations are performed as follows:
// Initially, X = 0.
// ++X: X is incremented by 1, X = 0 + 1 = 1.
// ++X: X is incremented by 1, X = 1 + 1 = 2.
// X++: X is incremented by 1, X = 2 + 1 = 3.

// Example 3:

// Input: operations = ["X++","++X","--X","X--"]
// Output: 0
// Explanation: The operations are performed as follows:
// Initially, X = 0.
// X++: X is incremented by 1, X = 0 + 1 = 1.
// ++X: X is incremented by 1, X = 1 + 1 = 2.
// --X: X is decremented by 1, X = 2 - 1 = 1.
// X--: X is decremented by 1, X = 1 - 1 = 0.

// source: https://leetcode.com/problems/final-value-of-variable-after-performing-operations/

void main(){
  Solution solution = Solution();
  print(solution.finalValueAfterOperations(["--X","X++","X++"]));
  print(solution.finalValueAfterOperations(["++X","++X","X++"]));
  print(solution.finalValueAfterOperations(["X++","++X","--X","X--"]));
}


class Solution {
  // This method calculates the final value of a variable after performing a series of operations.
  // Parameters:
  // - `operations`: A list of strings representing the operations ("++X", "X++", "--X", "X--").
  // Returns:
  // - An integer representing the final value after applying all operations.
  int finalValueAfterOperations(List<String> operations) {
    // Use the `fold` method to iterate through the operations and calculate the final value.
    // - `fold` starts with an initial value of 0 (accumulator).
    // - For each operation, check if it contains '++'.
    //   - If true, increment the accumulator by 1.
    //   - Otherwise, decrement the accumulator by 1.
    return operations.fold(
        0, (acc, exp) => exp.contains('++') ? acc + 1 : acc - 1);
  }
}
