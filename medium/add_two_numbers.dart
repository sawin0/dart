// You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

// You may assume the two numbers do not contain any leading zero, except the number 0 itself.

// Example 1:

// Input: l1 = [2,4,3], l2 = [5,6,4]
// Output: [7,0,8]
// Explanation: 342 + 465 = 807.

// Example 2:

// Input: l1 = [0], l2 = [0]
// Output: [0]

// Example 3:

// Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
// Output: [8,9,9,9,0,0,0,1]

// source: https://leetcode.com/problems/add-two-numbers

void main() {
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));
  ListNode l3 = ListNode(0);
  ListNode l4 = ListNode(0);
  ListNode l5 = ListNode(
      9,
      ListNode(
          9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9)))))));
  ListNode l6 = ListNode(9, ListNode(9, ListNode(9, ListNode(9))));
  Solution solution = Solution();
  print(solution.addTwoNumbers(l1, l2)); // [7, 0, 8]
  print(solution.addTwoNumbers(l3, l4)); // [0]
  print(solution.addTwoNumbers(l5, l6)); // [8, 9, 9, 9, 0, 0, 0, 1]
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    // Variable to store the carry from the previous addition
    int carry = 0;

    // Dummy node to simplify result list creation
    ListNode? result = ListNode(0);

    // Pointer to traverse and build the result linked list
    ListNode? current = result;

    // Loop until both lists are processed and no carry remains
    while (l1 != null || l2 != null || carry != 0) {
      // Calculate the sum of current digits and carry
      int sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry;

      // Update carry for the next iteration
      carry = sum ~/ 10;

      // Create a new node for the current digit
      current?.next = ListNode(sum % 10);

      // Move the pointer in the result list
      current = current?.next;

      // Move the pointers in the input lists
      l1 = l1?.next;
      l2 = l2?.next;
    }

    // Return the next node of the dummy (head of the result list)
    return result.next;
  }
}
