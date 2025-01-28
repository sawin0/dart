// You are given the heads of two sorted linked lists list1 and list2.

// Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

// Return the head of the merged linked list.

// Example 1:

// Input: list1 = [1,2,4], list2 = [1,3,4]
// Output: [1,1,2,3,4,4]

// Example 2:

// Input: list1 = [], list2 = []
// Output: []

// Example 3:

// Input: list1 = [], list2 = [0]
// Output: [0]

// source: https://leetcode.com/problems/merge-two-sorted-lists/

class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

class Solution {

  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    // Dummy node to simplify the merge process
    ListNode dummy = ListNode(-1);
    ListNode current = dummy;

    // Traverse both lists and merge them
    while (list1 != null && list2 != null) {
      if (list1.val < list2.val) {
        current.next = list1;
        list1 = list1.next;
      } else {
        current.next = list2;
        list2 = list2.next;
      }
      current = current.next!;
    }

    // Attach the remaining nodes from either list1 or list2
    current.next = list1 ?? list2;

    return dummy.next;
  }

// Helper function to create a linked list from a Dart list
  ListNode? createLinkedList(List<int> values) {
    if (values.isEmpty) return null;

    ListNode head = ListNode(values[0]);
    ListNode current = head;

    for (int i = 1; i < values.length; i++) {
      current.next = ListNode(values[i]);
      current = current.next!;
    }

    return head;
  }

// Helper function to convert a linked list back to a Dart list
  List<int> linkedListToList(ListNode? head) {
    List<int> result = [];
    while (head != null) {
      result.add(head.val);
      head = head.next;
    }
    return result;
  }

}



// Example Usage
void main() {
  Solution solution = Solution();

  ListNode? list1 = solution.createLinkedList([1, 2, 4]);
  ListNode? list2 = solution.createLinkedList([1, 3, 4]);

  ListNode? mergedList = solution.mergeTwoLists(list1, list2);

  print(solution.linkedListToList(mergedList)); // Output: [1, 1, 2, 3, 4, 4]
}
