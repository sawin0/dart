// Given the head of a linked list, remove the nth node from the end of the list and return its head.

// Example 1:

// Input: head = [1,2,3,4,5], n = 2
// Output: [1,2,3,5]

// Example 2:

// Input: head = [1], n = 1
// Output: []

// Example 3:

// Input: head = [1,2], n = 1
// Output: [1]

// source: https://leetcode.com/problems/remove-nth-node-from-end-of-list/

void main() {
  Solution solution = Solution();
  ListNode head =
      ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))));
  print(solution.removeNthFromEnd(head, 2));
}

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    ListNode? dummyNode = ListNode(0, head);
    ListNode? left = dummyNode;
    ListNode? right = head;

    while(n > 0 && right != null) {
      right = right.next;
      n--;
    }

    while(right != null) {
      left = left?.next;
      right = right.next;
    }

    left?.next = left.next?.next;
    return dummyNode.next;
  }
}
